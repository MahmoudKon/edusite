<div class="form-group">
    <label>Upload Image :</label>
    <div id="file-preview">
        <input type="file" name="image" class="form-control input-image" accept="image/*" onchange="previewFile(this)">
        <div>
            <img src="{{ $image ?? 'https://www.lifewire.com/thmb/2KYEaloqH6P4xz3c9Ot2GlPLuds=/1920x1080/smart/filters:no_upscale()/cloud-upload-a30f385a928e44e199a62210d578375a.jpg' }}"
                class="img-border img-thumbnail" id="show-file">
        </div>
    </div>
    <span class="error red" id="image-error"></span>
</div>
