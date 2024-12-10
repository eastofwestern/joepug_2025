<?php

if (isset($metaType) and $metaType === "product") {

	$theCat = getMainImage($picID);
} else {

	$theCat = catDetails($catID);
}

?>

<script>
	$(document).ready(function() {

		// HANDLE FORM SUBMISSION
		$(".updateMeta").click(function(e) {

			e.preventDefault();

			var fd = new FormData();
			var files = $('#preview_image')[0].files;

			if (files.length > 0) {
				fd.append('file', files[0]);
			}

			var catID = $("input#catID").val();
			var picID = $("input#picID").val();
			var metaTitle = $("#metaTitle").val();
			var metaDesc = $('#metaDesc').val();
			var metaKeywords = $("#metaKeywords").val();
			var currentImage = $("#current_image").val();
			var currentWidth = $("#current_width").val();
			var currentHeight = $("#current_height").val();

			fd.append('catID', catID);
			fd.append('picID', picID);
			fd.append('metaTitle', metaTitle);
			fd.append('metaDesc', metaDesc);
			fd.append('metaKeywords', metaKeywords);
			fd.append('currentImage', currentImage);
			fd.append('currentWidth', currentWidth);
			fd.append('currentHeight', currentHeight);

			if (typeof picID === "undefined") {
				var url = "updateMeta.php";
			} else {
				var url = "updateMetaProduct.php";
			}

			$.ajax({
				type: "POST",
				url: url,
				data: fd,
				contentType: false,
				processData: false,
				success: function(response) {
					$('.metaResponse').html(response);
				},
				error: function() {
					alert('failure');
				}
			});

		});

		$(".openerTitle").click(function() {

			$(".contents").slideToggle();

		});

	});
</script>

<div class="opener" style="width: 98%; margin-top: 20px;">
	<span class="openerTitle" style="cursor: pointer;">META TAG EDITOR</span>
	<span class="dirArrow"><img src="images/icons/openArrow.png" style="border: 0px;"></span>
</div>
<div class="contents" style="display: none; padding: 25px; width: 93%;">

	<form action="" method="post" enctype="multipart/form-data">

		<input type="hidden" name="current_image" id="current_image" value="<?= $theCat['metaImage'] ?>" />
		<input type="hidden" name="current_width" id="current_width" value="<?= $theCat['metaImageWidth'] ?>" />
		<input type="hidden" name="current_height" id="current_height" value="<?= $theCat['metaImageHeight'] ?>" />

		Title:<br />
		<input type="text" name="metaTitle" id="metaTitle" value="<?= $theCat['metaTitle'] ?>" style="width: 450px;"><br /><br />

		Description:<br />
		<textarea name="metaDesc" id="metaDesc" class="mceNoEditor" style="width: 450px; height: 35px; font-family: Arial;"><?= $theCat['metaDesc'] ?></textarea><br /><br />

		Keywords:<br />
		<textarea name="metaKeywords" id="metaKeywords" class="mceNoEditor" style="width: 450px; height: 35px; font-family: Arial;"><?= $theCat['metaKeywords'] ?></textarea><br /><br />

		Preview Image:<br />
		<?php if ($theCat['metaImage'] != "") { ?>
			<img src="/images/pics/<?= $theCat['metaImage'] ?>" style="width: 200px; height: auto;" alt="Meta Preview Image" /><br />
		<?php } ?>
		<input type="file" name="preview_image" id="preview_image" /><br /><br />

		<button id="btn" class="updateMeta">Update Meta Tags</button><br>

	</form>

	<div class="metaResponse" style="margin-top: 10px;"></div>
</div>

<div id="line" style="width: 99%; margin-bottom: 25px;"></div><br />