<div class="row">
    <div class="col-md-7">
        {{-- START VIDEO Title --}}
        <div class="form-group">
            <label>Video Title:</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="la la-list"></i> </span>
                </div>
                <input type="text" class="form-control badge-text-maxlength" maxlength="70" name="title"
                    value="{{ $row->title ?? old('title') }}" placeholder="Video Tite" autocomplete="off">
            </div>
            <span class="red error" id="title-error"></span>
        </div>
        {{-- START VIDEO Title --}}

        {{-- START VIDEO SRC --}}
        <div class="form-group">
            <label>Video SRC:</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="la la-file-video-o"></i> </span>
                </div>
                <input type="{{ $row->type ?? 'file' }}" class="form-control" id="urlORfile" accept="video/*"
                    name="{{ $row->type ?? 'file' }}" onchange="previewFile(this)" placeholder="Write The Video Link!"
                    value="{{ $row->url ?? '' }}" autocomplete="off">
                <div class="input-group-append">
                    <select name="type" class="form-control h-100">
                        <option value="file"
                            {{ (isset($row) && $row->type == 'file') ? 'selected' : (old('type') == 'file' ? 'selected' : '') }}>
                            FILE
                        </option>
                        <option value="url"
                            {{ (isset($row) && $row->type == 'url') ? 'selected' : (old('type') == 'url' ? 'selected' : '') }}>
                            URL
                        </option>
                    </select>
                </div>
                <span class="red error" id="type-error"></span>
            </div>
            <span class="red error" id="file-error"></span>
            <span class="red error" id="url-error"></span>
        </div>
        {{-- START VIDEO SRC --}}

        {{-- START VIDEO COURSE ID --}}
        @include('backend.includes.forms.select-course')
        {{-- START VIDEO COURSE ID --}}
    </div>

    {{-- START VIDEO PREVIEW --}}
    <div class="col-md-5">
        <video width="100%" height="250px" controls>
            <source src="{{ $row->video_path ?? '' }}" id="show-file">
        </video>
    </div>
    {{-- END VIDEO PREVIEW --}}

    <div class="col-md-12">
        {{-- START VIDEO TAGS --}}
        @include('backend.includes.forms.select-tag')
        {{-- START VIDEO TAGS --}}
    </div>

    {{-- START VIDEO DESCRIPTION --}}
    <div class="col-md-12">
        <div class="form-group">
            <label>Video Description:</label>
            <textarea class="summernote" name="desc">{{ $row->desc ?? '' }}</textarea>
            <span class="red error" id="desc-error"></span>
        </div>
    </div>
    {{-- START VIDEO DESCRIPTION --}}
</div>


@push('script')
<script>
    $(document).ready(function () {
        $('input#urlORfile').attr('type', $('select[name="type"]').val()).attr('name', $('select[name="type"]').val());
        $('select[name="type"]').change(function () {
            $('input#urlORfile').attr('type', $(this).val()).attr('name', $(this).val());
        });
    });
</script>
@endpush
