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
		"jobpalette": $('#jobpalette').is(':checked'),
		"world_lock": $("input:radio[name=world_lock]:checked").val(),
		"tiering_config": $("#tiering_config").val(),
		"tiering_percentage": $("#tiering_percentage").val(),
		"tiering_threshold": $("#tiering_threshold").val(),
		"enforce_all_jobs": $('#enforce_all_jobs').is(':checked'),
		"progressive_bosses": $('#progressive_bosses').is(':checked'),
        "progressive_rewards": $('#progressive_rewards').is(':checked'),
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
