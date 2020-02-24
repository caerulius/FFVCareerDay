$('.enhanced').hover(function(e){
	$('.enhanced_source').show();
	$('.default_source').hide();
}, function(e){
	$('.enhanced_source').hide();
	$('.default_source').show();
});

$('.streamlined').hover(function(e){
	$('.streamlined_source').show();
	$('.default_source').hide();
}, function(e){
	$('.streamlined_source').hide();
	$('.default_source').show();
});

$('.welcoming').hover(function(e){
	$('.welcoming_source').show();
	$('.default_source').hide();
}, function(e){
	$('.welcoming_source').hide();
	$('.default_source').show();
});

$(document).ready( function() {
	$(document).on('change', ':file', function() {
	    var input = $(this),
	        numFiles = input.get(0).files ? input.get(0).files.length : 1,
	        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
	    input.trigger('fileselect', [numFiles, label]);
	});

    $(':file').on('fileselect', function(event, numFiles, label) {
    	var acceptableSizes = [2097664, 2097152, 2621440, 2621952]
    	if(numFiles > 0){
    		var file = event.target.files[0];
    		if(!acceptableSizes.includes(file.size)){
    			$("#file-info").html("Invalid ROM");
    			$("#generate").attr('disabled', 'disabled');
    		}
    		else{
    			$("#file-info").html(label);
    			$("#generate").removeAttr('disabled');
    		}
    	}
    	else{
    		$("#file-info").html("Upload a Final Fantasy 5 ROM, Japanese or patched with the RPGe Translation");
    		$("#generate").attr('disabled', 'disabled');
    	}
    });

    $(".option").change(function(){
    	$("#settingstring").val(getSettingString());
    })

	$("#settingstring").val(getSettingString());

	$("#settingstring").click(function(){
		$("#settingstring").notify(
		  "Copied!", 
		  { position:"top center",
		    className: "success",
		    autoHideDelay: 1500,
		    showDuration: 150,
		    hideDuration: 50 }
		);
	});
});

var url = "/careerdayapi/";
var baseBucketUrl = 'https://s3-us-west-1.amazonaws.com/bigbridgecareerday/';
var spinnerHtml = "<img src='img/spinner.gif'></img>";

function generate(myFormData){
	$('#generate').hide();
	$('#spinner').show();
	uploadToS3($('#fileupload')[0].files[0]);
}

function uploadToS3(file){
	var bucketname = "bigbridgecareerday";
	var region = "us-east-1";
	var identityPoolId = "us-east-1:0cc71965-b227-4aaf-a63f-b1429258c26e";
	// Initialize the Amazon Cognito credentials provider
	AWS.config.region = region; // Region
	AWS.config.credentials = new AWS.CognitoIdentityCredentials({
	    IdentityPoolId: identityPoolId,
	});

	var s3 = new AWS.S3({
      apiVersion: '2006-03-01',
      params: {Bucket: bucketname}
    });

	var d = new Date();
	var t = d.getTime();
	var key = 'careerdayuploads/' + t + '-' + file.name; 
	s3.upload({
	    Key: key,
	    Body: file,
	    ContentType: 'application/vnd.nintendo.snes.rom',
	    ACL: 'public-read'
	  }, function(err, data){
	    if(err){
	        console.log(err);
	    } else {
	    	apiCall(data);
        }
	  });
}


function apiCall(data){
	var myFormData = new FormData();

	var postData = {
		"seed": $('#seed').val(),
		"fjf": $('#fjf').is(':checked'),
		"fjf_strict": $('#fjf_strict').is(':checked'),
		"jobpalette": $('#jobpalette').is(':checked'),
		"world_lock": $("input:radio[name=world_lock]:checked").val(),
		"tiering_config": $("#tiering_config").is(':checked'),
		"tiering_percentage": $("#tiering_percentage").val(),
		"tiering_threshold": $("#tiering_threshold").val(),
		"enforce_all_jobs": $('#enforce_all_jobs').is(':checked'),
		"progressive_bosses": $('#progressive_bosses').is(':checked'),
        "progressive_rewards": $('#progressive_rewards').is(':checked'),
        "item_randomization": $('#item_randomization').is(':checked'),
        "item_randomization_percent": $("#item_randomization_percent").val(), 
		"red_color": $("#red_color").val(),
		"blue_color": $("#blue_color").val(),
		"green_color": $("#green_color").val(),
		"exp_mult": $("#exp_mult").val(),
		"place_all_rewards": $('#place_all_rewards').is(':checked'),
		"randomize_loot": $("input:radio[name=randomize_loot]:checked").val(),
		"loot_percent": $("#loot_percent").val(), 
		"portal_boss": $("#portal_boss").val(), 
		"fileLocation": data.Location
	}
	$.post(url, postData, function(data){
		var file_url = baseBucketUrl + data;
		$("#spinner").hide();
		$("#download").show();
		$("#download").click(function() {
			downloadFile(file_url);
		});
	});
}

function downloadFile(filePath){
	console.log("filepath: " + filePath);
    var link=document.createElement('a');
    document.body.appendChild(link);
    link.href = filePath
    link.download = "ProjectDemi.smc";
    link.click();

	$("#download").hide();
	$("#generate").show();
}

function getSettingString(){
	var seedString = "";
	if($('#fjf').is(':checked')){
		seedString = seedString + " 4";
	}
	if($('#fjf_strict').is(':checked')){
		seedString = seedString + " a";
	}
	if($('#jobpalette').is(':checked')){
		seedString = seedString + " P";
	}
	if($("input:radio[name=world_lock]:checked").val() == 1){
		seedString = seedString + " W1";
	}
	if($("input:radio[name=world_lock]:checked").val() == 2){
		seedString = seedString + " W2";
	}
	if($("input:radio[name=world_lock]:checked").val() == 0){
		seedString = seedString + " W0";
	}
	if($("#tiering_config").is(':checked')){
		seedString = seedString + " T" + $("#tiering_percentage").val() + "|" + $("#tiering_threshold").val();
	}
	if($('#enforce_all_jobs').is(':checked')){
		seedString = seedString + " A";
	}
	if($('#progressive_bosses').is(':checked')){
		seedString = seedString + " PB";
	}
	if($('#progressive_rewards').is(':checked')){
		seedString = seedString + " PR";
	}
	if($('#item_randomization').is(':checked')){
		seedString = seedString + " I" + $("#item_randomization_percent").val();
	}
	seedString = seedString + " RGB" + $("#red_color").val() + "|" + $("#blue_color").val() + "|" + $("#green_color").val();
	seedString = seedString + " X" + $("#exp_mult").val();
	if($('#place_all_rewards').is(':checked')){
		seedString = seedString + " AR";
	}
	seedString = seedString + " L" + $("input:radio[name=randomize_loot]:checked").val();
	if($("input:radio[name=randomize_loot]:checked").val() == "variable"){
		seedString = seedString + "|" + $("#loot_percent").val();
	}
	seedString = seedString + " pb" + $("#portal_boss").val()

	return seedString.slice(1);
}

function showCustomSettingString(){
	$("#settingstringdefault").hide();
	$("#settingstringcustom").show();
}

function showDefaultSettingString(){
	$("#settingstringdefault").show();
	$("#settingstringcustom").hide();
}

function applyCustomSettingString(){
	clearSettings();
	settingString = $("#settingstringcustom_input").val();
	settingString.split(" ").forEach(function(val){
		if(val == "4"){
			$( "#fjf" ).prop( "checked", true );
		}
		if(val == "a"){
			$( "#fjf_strict" ).prop( "checked", true );
		}
		if(val == "P"){
			$( "#jobpalette" ).prop( "checked", true );
		}
		if(val == "A"){
			$( "#enforce_all_jobs" ).prop( "checked", true );
		}
		if(val == "PB"){
			$( "#progressive_bosses" ).prop( "checked", true );
		}
		if(val == "PR"){
			$( "#progressive_rewards" ).prop( "checked", true );
		}
		if(val.length == 2 && val.charAt(0) == "W"){
			if(val.charAt(1) == "0" || val.charAt(1) == "1" || val.charAt(1) == "2"){
				$('input:radio[name=world_lock]').val([val.charAt(1)]);
			}
		}
		if(val.charAt(0) == "T"){
			$( "#tiering_config" ).prop( "checked", true );
			vals = val.slice(1).split("|");
			percent = parseInt(vals[0]);
			threshold = parseInt(vals[1]);

			if(!isNaN(percent) && percent >= 0 && percent <= 100){
				$("#tiering_percentage").val(percent);
			}
			if(!isNaN(threshold) && threshold >= 1 && threshold <= 10){
				$("#tiering_threshold").val(threshold);
			}
		}
		if(val.charAt(0) == "I"){
			$( "#item_randomization" ).prop( "checked", true );
			percent = parseInt(val.slice(1));
			if(!isNaN(percent) && percent >= 0 && percent <= 100){
				$("#item_randomization_percent").val(percent);	
			}
		}
		if(val.startsWith("RGB")){
			vals = val.slice(3).split("|")
			red = parseInt(vals[0]);
			green = parseInt(vals[1]);
			blue = parseInt(vals[2]);
			if(!isNaN(red) && red >= 0 && red <= 31){
				$("#red_color").val(red);
			}
			if(!isNaN(green) && green >= 0 && green <= 31){
				$("#green_color").val(green);	
			}
			if(!isNaN(blue) && blue >= 0 && blue <= 31){
				$("#blue_color").val(blue);
			}
		}
		if(val.charAt(0) == "X"){
			xp = parseInt(val.slice(1));
			if(!isNaN(xp) && (xp == 1 || xp == 2 || xp == 4)){
				$("#exp_mult").val(xp);
			}
		}
		if(val == "AR"){
			$( "#place_all_rewards" ).prop( "checked", true );
		}
		if(val.charAt(0) == "L"){
			vals = val.slice(1).split("|");
			$('input:radio[name=randomize_loot]').val([vals[0]]);
			percent = parseInt(vals[1]);
			if(!isNaN(percent) && percent >= 0 && percent <= 100){
				$("#loot_percent").val(vals[1]);
			}
		}
		if(val == "pb"){
			$("#portal_boss").val(val.slice(2));
		}
	});
}

function clearSettings(){
	$( "#fjf" ).prop( "checked", false );	
	$( "#fjf_strict" ).prop( "checked", false );
	$( "#jobpalette" ).prop( "checked", false );
	$( "#enforce_all_jobs" ).prop( "checked", false );
	$( "#progressive_bosses" ).prop( "checked", false );
	$( "#progressive_rewards" ).prop( "checked", false );
	$( "#place_all_rewards" ).prop( "checked", false );
	$( "#item_randomization" ).prop( "checked", false );
	$( "#tiering_config" ).prop( "checked", false );

	$('input:radio[name=world_lock]').val([1]);
	$("#tiering_percentage").val(5);
	$("#tiering_threshold").val(1);
	$("#item_randomization_percent").val(100);
	$("#loot_percent").val("");
	$("#exp_mult").val(4);
	$("#red_color").val(0);
	$("#green_color").val(0);
	$("#blue_color").val(0);
	$("#portal_boss").val("SomberMage");
}