<?php

	session_start();
	include 'includes/secure.php';
	include 'includes/functions.php';
	include 'includes/connect.php';

?>

<script type="text/javascript">

// image upload js

var swfu;

$("#catid").change(function() {
	var catID = $("#catid option:selected").val();
	imageLoad(catID);
});

function imageLoad(catID) {
	var settings = {
		flash_url : "swfupload/swfupload.swf",
		upload_url: "upload_products.php",
		post_params: {"PHPSESSID" : "<?php echo session_id(); ?>", "catid" : catID},
		file_size_limit : "100 MB",
		file_types : "*.jpg;*.gif;*.png;*.pdf",
		file_types_description : "JPEG, GIF or PNG Files",
		file_upload_limit : 100,
		file_queue_limit : 0,
		custom_settings : {
			progressTarget : "fsUploadProgress",
			cancelButtonId : "btnCancel"
		},
		debug: false,

		// Button settings
		button_image_url: "images/browse.png",
		button_width: "80",
		button_height: "20",
		button_placeholder_id: "spanButtonPlaceHolder",
		button_text: '<span class="theFont">Browse...</span>',
		button_text_style: ".theFont { font-size: 11; font-family: Arial; color: fff; background: #50b6b8;}",
		button_text_left_padding: 15,
		button_text_top_padding: 2,

		// The event handler functions are defined in handlers.js
		file_queued_handler : fileQueued,
		file_queue_error_handler : fileQueueError,
		file_dialog_complete_handler : fileDialogComplete,
		upload_start_handler : uploadStart,
		upload_progress_handler : uploadProgress,
		upload_error_handler : uploadError,
		upload_success_handler : uploadSuccess,
		upload_complete_handler : MyUploadCompleteHandler,
		queue_complete_handler : queueComplete	// Queue plugin event
	};

	swfu = new SWFUpload(settings);

	function MyUploadCompleteHandler(file) {
		if (this.getStats().files_queued == 0) {

			$.ajax({
			  url: 'manage_products.php?catID='+catID,
			  success: function(data) {
				$('#pageContent').html(data);
				Cufon.refresh();
			  }
			});

			//window.location = 'manage_images.php?category=<?=$catID?>';
		}
	}
 };

$(document).ready(function() {

	//Examples of how to assign the ColorBox event to elements
	$(".delete").colorbox({
		width:"60%",
		height:"60%",
		iframe:true});

	// in page ajax links

	$("A.ajax").click(function() {

		var thePage = $(this).attr("id");

		loadPage(thePage);

	});

});
</script>

<p><span class="head uploaderLink">Upload Product(s)</span></p>

<div id="line" style="width: width: 100%; margin-bottom: 2px;"></div>
<div id="line" style="width: width: 100%;"></div><br />

<div class="uploader">
	<form id="form1" action="index.php" method="post" enctype="multipart/form-data">
	<p>You can upload .jpg, .gif, or .png files.  Images should be compressed for Web Resolution (72 DPI)<br />
	<span id="blue"><?php echo imageSpecs(); ?></span></p><br />

	<b>Choose a Category for Product(s)</b><br />
	<select name="catid" id="catid" class="catFilter" style="margin-top: 5px;">
		<option value="">CATEGORY FILTER</option>

		<?php getShopCategories(); ?>

	</select><br /><br />

	<div class="fieldset flash" id="fsUploadProgress">
	<span class="legend">Upload Queue</span>
	</div>
	<div id="divStatus">0 Files Uploaded</div>
	<div>
		<span id="spanButtonPlaceHolder" style="text-align: center;"></span>
		<input id="btnCancel" type="button" value="Cancel All Uploads" onclick="swfu.cancelQueue();" disabled="disabled" style="margin-left: 2px;" />
	</div>

	</form><br /><br />
</div>