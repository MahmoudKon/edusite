function previewFile(file) {
    if (file.files && file.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            if (file.files[0].type.split("/")[0] == 'video')
                $('#show-file').attr('src', e.target.result).parent()[0].load();
            else
                file.nextElementSibling.children[0].setAttribute('src', e.target.result);
        }
        reader.readAsDataURL(file.files[0]);
    } else {
        $('#show-file').attr('src', file.value).parent()[0].load();
    }
}
