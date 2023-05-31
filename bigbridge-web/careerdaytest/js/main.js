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

	$("#settingstringpresetval1").val("SPOff W2 T15|3 A TBLT1 RGB0|0|0 NOFLASH X4 BS3 AR HINT Lnone LNLenna GNGaluf CNCara FNFaris STP AB pbRandom"); // locked
	$("#settingstringpresetval2").val("SPOn W0 T5|1 TBLT0 RGB0|0|0 NOFLASH X4 BS3 AR HINT Lnone LNLenna GNGaluf CNCara FNFaris pbRandom"); // open
	$("#settingstringpresetval3").val("SPOn W1 T5|1 PB I100 TBLT0 RGB0|0|0 NOFLASH X4 BS3 AR HINT Lnone LNLenna GNGaluf CNCara FNFaris pbRandom"); // locked weapon rando
	$("#settingstringpresetval4").val("SPOn W0 T5|1 I100 TBLT0 RGB0|0|0 NOFLASH X4 BS3 AR HINT Lnone LNLenna GNGaluf CNCara FNFaris pbRandom"); // open weapon rando 
	$("#settingstringpresetval5").val("SPOn 4 J1Random J2Random J3Random J4Random FJNUM4 a W1 T5|1 PB TBLT0 RGB0|0|0 NOFLASH X4 BS3 AR HINT Lnone LNLenna GNGaluf CNCara FNFaris pbRandom"); // locked worlds fjf
	$("#settingstringpresetval6").val("SPOn 4 J1Random J2Random J3Random J4Random FJNUM4 a W0 T5|1 PB TBLT0 RGB0|0|0 NOFLASH X4 BS3 AR HINT Lnone LNLenna GNGaluf CNCara FNFaris pbRandom"); // open fjf
	$("#settingstringpresetval7").val("SPOn P W0 T5|1 A I100 TBLT0 RGB0|0|0 NOFLASH X4 BS3 AR HINT Lfull LNLenna GNGaluf CNCara FNFaris CDA CLA pbRandom"); // pure chaos

	$("#settingstringpresetval1").click(function(){
		$("#settingstringpresetval1").notify(
		  "Copied!", 
		  { position:"top center",
		    className: "success",
		    autoHideDelay: 1500,
		    showDuration: 150,
		    hideDuration: 50 }
		);
	});
	$("#settingstringpresetval2").click(function(){
		$("#settingstringpresetval2").notify(
		  "Copied!", 
		  { position:"top center",
		    className: "success",
		    autoHideDelay: 1500,
		    showDuration: 150,
		    hideDuration: 50 }
		);
	});
	$("#settingstringpresetval3").click(function(){
		$("#settingstringpresetval3").notify(
		  "Copied!", 
		  { position:"top center",
		    className: "success",
		    autoHideDelay: 1500,
		    showDuration: 150,
		    hideDuration: 50 }
		);
	});
	$("#settingstringpresetval4").click(function(){
		$("#settingstringpresetval4").notify(
		  "Copied!", 
		  { position:"top center",
		    className: "success",
		    autoHideDelay: 1500,
		    showDuration: 150,
		    hideDuration: 50 }
		);
	});
	$("#settingstringpresetval5").click(function(){
		$("#settingstringpresetval5").notify(
		  "Copied!", 
		  { position:"top center",
		    className: "success",
		    autoHideDelay: 1500,
		    showDuration: 150,
		    hideDuration: 50 }
		);
	});
	$("#settingstringpresetval6").click(function(){
		$("#settingstringpresetval6").notify(
		  "Copied!", 
		  { position:"top center",
		    className: "success",
		    autoHideDelay: 1500,
		    showDuration: 150,
		    hideDuration: 50 }
		);
	});
	$("#settingstringpresetval7").click(function(){
		$("#settingstringpresetval7").notify(
		  "Copied!", 
		  { position:"top center",
		    className: "success",
		    autoHideDelay: 1500,
		    showDuration: 150,
		    hideDuration: 50 }
		);
	});




});

var url = "/careerdayapitest/";
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
		"fjf_num_jobs": $('#fjf_num_jobs').val(),
		"job_1": $('#job_1').val(),
		"job_2": $('#job_2').val(),
		"job_3": $('#job_3').val(),
		"job_4": $('#job_4').val(),
		"lenna_name": $('#lenna_name').val(),
		"galuf_name": $('#galuf_name').val(),
		"cara_name": $('#cara_name').val(),
		"faris_name": $('#faris_name').val(),
		"starting_cara": $('#starting_cara').is(':checked'),
		"remove_ned": $('#remove_ned').is(':checked'),
        "key_items_in_mib": $('#key_items_in_mib').is(':checked'),
		"everysteprandomencounter": $('#everysteprandomencounter').is(':checked'),
		"free_shops": $('#free_shops').is(':checked'),
		"music_randomization": $('#music_randomization').is(':checked'),
		"jobpalette": $('#jobpalette').is(':checked'),
		"world_lock": $("input:radio[name=world_lock]:checked").val(),
		"tiering_config": $("#tiering_config").is(':checked'),
		"tiering_percentage": $("#tiering_percentage").val(),
		"tiering_threshold": $("#tiering_threshold").val(),
		"enforce_all_jobs": $('#enforce_all_jobs').is(':checked'),
		"progressive_bosses": $('#progressive_bosses').is(':checked'),
        "progressive_rewards": $('#progressive_rewards').is(':checked'),
        "item_randomization": $('#item_randomization').is(':checked'),
        "abbreviated": $('#abbreviated').is(':checked'),
        "grantkeyitems": $('#grantkeyitems').is(':checked'),
        "default_abilities": $('#default_abilities').is(':checked'),
        "learning_abilities": $('#learning_abilities').is(':checked'),
        "item_randomization_percent": $("#item_randomization_percent").val(), 
        "boss_exp_percent": $("#boss_exp_percent").val(), 
		"battle_speed": $("#battle_speed").val(),
		"red_color": $("#red_color").val(),
		"blue_color": $("#blue_color").val(),
		"green_color": $("#green_color").val(),
		"exp_mult": $("#exp_mult").val(),
        "free_tablets": $("#free_tablets").val(),
		"place_all_rewards": $('#place_all_rewards').is(':checked'),
		"hints_flag": $('#hints_flag').is(':checked'),
		"remove_flashes": $('#remove_flashes').is(':checked'),

		"extra_patches": $('#extra_patches').is(':checked'),
		"kuzar_credits_warp" : $("#kuzar_credits_warp").is(':checked'),

		"end_on_exdeath1": $('#end_on_exdeath1').is(':checked'),
		"randomize_loot": $("input:radio[name=randomize_loot]:checked").val(),
		"loot_percent": $("#loot_percent").val(), 
		"portal_boss": $("#portal_boss").val(),
        "spoiler_log": $('#spoiler_log').is(':checked'),
        "explv50": $('#explv50').is(':checked'),
		"setting_string": getSettingString(),
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
		seedString = seedString + " J1" + $("#job_1").val();
		seedString = seedString + " J2" + $("#job_2").val();
		seedString = seedString + " J3" + $("#job_3").val();
		seedString = seedString + " J4" + $("#job_4").val();
		seedString = seedString + " FJNUM" + $("#fjf_num_jobs").val();
	}


	if($('#spoiler_log').is(':checked')){
		seedString = seedString + " SPOff";
	}
	else {
		seedString = seedString + " SPOn";
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
	seedString = seedString + " BXP" + $("#boss_exp_percent").val();
	seedString = seedString + " TBLT" + $("#free_tablets").val();
	seedString = seedString + " RGB" + $("#red_color").val() + "|" + $("#green_color").val() + "|" + $("#blue_color").val();
	if($('#remove_flashes').is(':checked')){
		seedString = seedString + " NOFLASH";
	}	
	seedString = seedString + " X" + $("#exp_mult").val();
	seedString = seedString + " BS" + $("#battle_speed").val();
	if($('#place_all_rewards').is(':checked')){
		seedString = seedString + " AR";
	}
	seedString = seedString + " L" + $("input:radio[name=randomize_loot]:checked").val();
	if($("input:radio[name=randomize_loot]:checked").val() == "variable"){
		seedString = seedString + "|" + $("#loot_percent").val();
	}

	seedString = seedString + " LN" + $('#lenna_name').val();
	seedString = seedString + " GN" + $('#galuf_name').val();
	seedString = seedString + " CN" + $('#cara_name').val();
	seedString = seedString + " FN" + $('#faris_name').val();

	if($('#starting_cara').is(':checked')){
		seedString = seedString + " CA";
	}
	if($('#remove_ned').is(':checked')){
		seedString = seedString + " RND";
	}
	if($('#key_items_in_mib').is(':checked')){
		seedString = seedString + " KIMIB";
	}
	if($('#everysteprandomencounter').is(':checked')){
		seedString = seedString + " STP";
	}
	if($('#free_shops').is(':checked')){
		seedString = seedString + " SHO";
	}

	if($('#hints_flag').is(':checked')){
		seedString = seedString + " HINT";
	} 
	else {
		seedString = seedString + " NOHINT";
	}

	if($('#extra_patches').is(':checked')){
		seedString = seedString + " EXTRAP";
	} 
	if($('#kuzar_credits_warp').is(':checked')){
		seedString = seedString + " CRED";
	} 



	if($('#end_on_exdeath1').is(':checked')){
		seedString = seedString + " EOX";
	}

	if($('#music_randomization').is(':checked')){
		seedString = seedString + " MUS";
	}
	if($('#abbreviated').is(':checked')){
		seedString = seedString + " AB";
	}
	if($('#grantkeyitems').is(':checked')){
		seedString = seedString + " GKI";
	}
	if($('#default_abilities').is(':checked')){
		seedString = seedString + " CDA";
	}
	if($('#learning_abilities').is(':checked')){
		seedString = seedString + " CLA";
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
		else if(val.startsWith("J1")){
			$("#job_1").val(val.slice(2));
		}
		else if(val.startsWith("J2")){
			$("#job_2").val(val.slice(2));
		}
		else if(val.startsWith("J3")){
			$("#job_3").val(val.slice(2));
		}
		else if(val.startsWith("J4")){
			$("#job_4").val(val.slice(2));
		}
		else if(val.startsWith("FJNUM")){
			xp = parseInt(val.slice(5));
			if(!isNaN(xp) && (xp == 1 || xp == 2 || xp == 3 || xp == 4)){
				$("#fjf_num_jobs").val(xp);
			}
		}

		else if(val == "SPOn"){
			$( "#spoiler_log" ).prop( "checked", false );
		}
		else if(val == "SPOff"){
			$( "#spoiler_log" ).prop( "checked", true );
		}
		else if(val == "a"){
			$( "#fjf_strict" ).prop( "checked", true );
		}
		else if(val == "P"){
			$( "#jobpalette" ).prop( "checked", true );
		}
		else if(val == "A"){
			$( "#enforce_all_jobs" ).prop( "checked", true );
		}
		else if(val == "PB"){
			$( "#progressive_bosses" ).prop( "checked", true );
		}
		else if(val == "PR"){
			$( "#progressive_rewards" ).prop( "checked", true );
		}
		else if(val == "CA"){
			$( "#starting_cara" ).prop( "checked", true );
		}
		else if(val == "RND"){
			$( "#remove_ned" ).prop( "checked", true );
		}
		else if(val == "KIMIB"){
			$( "#key_items_in_mib" ).prop( "checked", true );
		}
		else if(val == "STP"){
			$( "#everysteprandomencounter" ).prop( "checked", true );
		}
		else if(val == "SHO"){
			$( "#free_shops" ).prop( "checked", true );
		}
		else if(val == "HINT"){
			$( "#hints_flag" ).prop( "checked", true );
		}
		else if(val == "NOHINT"){
			$( "#hints_flag" ).prop( "checked", false );
		}

		else if(val == "EXTRAP"){
			$( "#extra_patches" ).prop( "checked", true );
		}
		else if(val == "CRED"){
			$( "#kuzar_credits_warp" ).prop( "checked", true );
		}
		else if(val == "EOX"){
			$( "#end_on_exdeath1" ).prop( "checked", true );
		}
		else if(val == "MUS"){
			$( "#music_randomization").prop( "checked", true );
		}
		else if(val == "AB"){
			$( "#abbreviated" ).prop( "checked", true );
		}
		else if(val == "GKI"){
			$( "#grantkeyitems" ).prop( "checked", true );
		}
		else if(val == "NOFLASH"){
			$( "#remove_flashes" ).prop( "checked", true );
		}
		else if(val == "CDA"){
			$( "#default_abilities" ).prop( "checked", true );
		}
		else if(val == "CLA"){
			$( "#learning_abilities" ).prop( "checked", true );
		}

		else if(val.length == 2 && val.charAt(0) == "W"){
			if(val.charAt(1) == "0" || val.charAt(1) == "1" || val.charAt(1) == "2"){
				$('input:radio[name=world_lock]').val([val.charAt(1)]);
			}
		}
		else if(val.startsWith("TBLT")){
			xp = parseInt(val.slice(4));
			if(!isNaN(xp) && (xp == 0 || xp == 1 || xp == 2 || xp == 3 || xp == 4)){
				$("#free_tablets").val(xp);
			}
		}
		else if(val.charAt(0) == "T"){
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
		else if(val.charAt(0) == "I"){
			$( "#item_randomization" ).prop( "checked", true );
			percent = parseInt(val.slice(1));
			if(!isNaN(percent) && percent >= 0 && percent <= 100){
				$("#item_randomization_percent").val(percent);	
			}
		}
		else if(val.charAt(0) == "BXP"){
			percent = parseInt(val.slice(3));
			if(!isNaN(percent) && percent >= 0 && percent <= 999){
				$("#boss_exp_percent").val(percent);
			}
		}
		else if(val.startsWith("RGB")){
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
		else if(val.charAt(0) == "X"){
			xp = parseInt(val.slice(1));
			if(!isNaN(xp) && (xp == 1 || xp == 2 || xp == 4)){
				$("#exp_mult").val(xp);
			}
		}
		else if(val.startsWith("BS")){
			bs = parseInt(val.slice(2));
			if(!isNaN(bs)  && bs >= 1 && bs <= 6){
				$("#battle_speed").val(bs);
			}
		}
		else if(val.startsWith("LN")){
			name = val.slice(2);
			if(name.length >= 0 && name.length <= 6){
				$("#lenna_name").val(name);
			}
		}
		else if(val.startsWith("G")){
			name = val.slice(2);
			if(name.length >= 0 && name.length <= 6){
				$("#galuf_name").val(name);
			}
		}
		else if(val.startsWith("CN")){
			name = val.slice(2);
			if(name.length >= 0 && name.length <= 6){
				$("#cara_name").val(name);
			}
		}
		else if(val.startsWith("FN")){
			name = val.slice(2);
			if(name.length >= 0 && name.length <= 6){
				$("#faris_name").val(name);
			}
		}
		else if(val == "AR"){
			$( "#place_all_rewards" ).prop( "checked", true );
		}
		else if(val.charAt(0) == "L" && val.charAt(0) != "N"){
			vals = val.slice(1).split("|");
			$('input:radio[name=randomize_loot]').val([vals[0]]);
			percent = parseInt(vals[1]);
			if(!isNaN(percent) && percent >= 0 && percent <= 100){
				$("#loot_percent").val(vals[1]);
			}
		}
		else if(val == "pb"){
			$("#portal_boss").val(val.slice(2));
		}
	});
}

function clearSettings(){
	$( "#spoiler_log" ).prop( "checked", false );	
	$( "#fjf" ).prop( "checked", false );	
	$( "#fjf_strict" ).prop( "checked", false );
	$( "#jobpalette" ).prop( "checked", false );
	$( "#enforce_all_jobs" ).prop( "checked", false );
	$( "#progressive_bosses" ).prop( "checked", false );
	$( "#progressive_rewards" ).prop( "checked", false );
	$( "#place_all_rewards" ).prop( "checked", false );
	$( "#item_randomization" ).prop( "checked", false );
	$( "#tiering_config" ).prop( "checked", false );
	$('#starting_cara').prop( "checked", false );
	$('#remove_ned').prop( "checked", false );
    $('#key_items_in_mib').prop( "checked", false );
	$('#everysteprandomencounter').prop( "checked", false );
	$('#free_shops').prop( "checked", false );
	$('#music_randomization').prop( "checked", false );
	$('#jobpalette').prop( "checked", false );
	$('#abbreviated').prop( "checked", false );
    $('#grantkeyitems').prop( "checked", false );
	$('#hints_flag').prop( "checked", true );

	$('#extra_patches').prop( "checked", false);
	$('#kuzar_credits_warp').prop("unchecked", false)

    $('#end_on_exdeath1').prop( "checked", false );
    $('#remove_flashes').prop( "checked", false );
    $('#default_abilities').prop( "checked", false );
    $('#learning_abilities').prop( "checked", false );

	$('input:radio[name=world_lock]').val([1]);
	$("#tiering_percentage").val(5);
	$("#tiering_threshold").val(1);
	$("#item_randomization_percent").val(100);
	$("#boss_exp_percent").val(100);
	$("#loot_percent").val("");
	$("#fjf_num_jobs").val(4);
	$("#exp_mult").val(4);
	$("#red_color").val(0);
	$("#green_color").val(0);
	$("#blue_color").val(0);
    $("#free_tablets").val(0);
	$("#portal_boss").val("Random");
	$('#job_1').val("Random");
	$('#job_2').val("Random");
	$('#job_3').val("Random");
	$('#job_4').val("Random");
	$('#lenna_name').val("Lenna");
	$('#galuf_name').val("Galuf");
	$('#cara_name').val("Cara");
	$('#faris_name').val("Faris");
	$("#battle_speed").val(3);
}