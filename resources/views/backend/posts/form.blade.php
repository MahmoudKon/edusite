{{-- START POSTS Title --}}
<div class="form-group">
    <label>Post Title:</label>
    <div class="input-group">
        <div class="input-group-prepend"> <span class="input-group-text"> <i class="la la-list"></i> </span>
        </div>
        <input type="text" class="form-control badge-text-maxlength" maxlength="60" name="title"
            value="{{ $row->title ?? old('title') }}" placeholder="Post Tite">
    </div>
    <span class="red error" id="title-error"></span>
</div>
{{-- END POSTS Title --}}

<div class="row">
    <div class="col-md-8">
        <div class="row px-0">
            <div class="col-md-12">
                {{-- START POSTS CATEGORY --}}
                @include('backend.includes.forms.select-category')
                {{-- START POSTS CATEGORY --}}
            </div>

            <div class="col-md-12">
                {{-- START POSTS DISCOUNT END DATE --}}
                @include('backend.includes.forms.select-visibility')
                {{-- END POSTS DISCOUNT END DATE --}}
            </div>

            <div class="col-md-12">
                {{-- START POSTS CATEGORY --}}
                @include('backend.includes.forms.select-tag')
                {{-- START POSTS CATEGORY --}}
            </div>
        </div>
    </div>

    <div class="col-md-4">
        @include('backend.includes.forms.input-file', ['image' => $row->image_url ?? null])
    </div>
</div>

{{-- START POSTS DESCRIPTION --}}
<div class="form-group">
    <label>Post Descrption:</label>
    <textarea class="summernote" name="desc">{{ $row->desc ?? old('desc') }}</textarea>
    <span class="red error" id="desc-error"></span>
</div>
{{-- END POSTS DESCRIPTION --}}
