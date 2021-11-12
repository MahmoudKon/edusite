{{-- START COURSE Title --}}
<div class="form-group">
    <label>Course Title <span class="text-danger">*</span></label>
    <div class="input-group">
        <div class="input-group-prepend"> <span class="input-group-text"> <i class="la la-header"></i> </span>
        </div>
        <input type="text" class="form-control badge-text-maxlength" maxlength="50" name="title"
            value="{{ $row->title ?? old('title') }}" placeholder="Course Tite" autocomplete="off">
    </div>
    <span class="red error" id="title-error"></span>
</div>
{{-- END COURSE Title --}}

<div class="row">
    <div class="col-md-8">
        <div class="row px-0">
            <div class="col-md-12">
                {{-- START COURSE CATEGORY --}}
                @include('backend.includes.forms.select-category')
                {{-- START COURSE CATEGORY --}}
            </div>

            <div class="col-md-6">
                {{-- START COURSE PRICE --}}
                <div class="form-group">
                    <label>Course Price <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fas fa-dollar-sign"></i> </span>
                        </div>
                        <input type="number" class="form-control badge-text-maxlength" maxlength="4" name="price"
                            value="{{ $row->price ?? old('price') }}" placeholder="Course Price" min="1"
                            autocomplete="off">
                    </div>
                    <span class="red error" id="price-error"></span>
                </div>
                {{-- START COURSE PRICE --}}
            </div>

            <div class="col-md-6">
                {{-- START COURSE DISCOUNT END DATE --}}
                @include('backend.includes.forms.select-visibility')
                {{-- END COURSE DISCOUNT END DATE --}}
            </div>

            <div class="col-md-4 discount">
                {{-- START COURSE DISCOUNT --}}
                <div class="form-group">
                    <label>Course Discount <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fas fa-percent"></i> </span>
                        </div>
                        <input type="number" class="form-control badge-text-maxlength" maxlength="2" name="discount"
                            min="1" max="100" placeholder="Enter Value in %" autocomplete="off"
                            value="{{ $row->discount ?? old('discount') }}">
                    </div>
                    <span class="red error" id="discount-error"></span>
                </div>
                {{-- START COURSE DISCOUNT --}}
            </div>

            <div class="col-md-4 removed">
                {{-- START COURSE DISCOUNT START DATE --}}
                <div class="form-group">
                    <label>Discount Start Date <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fas fa-calendar-alt"></i> </span>
                        </div>
                        <input type="date" class="form-control" name="start_date"
                            min="{{ $row->start_date ?? date('Y-m-d') }}"
                            value="{{ $row->start_date ?? old('start_date') }}">
                    </div>
                    <span class="red error" id="start_date-error"></span>
                </div>
                {{-- END COURSE DISCOUNT START DATE --}}
            </div>

            <div class="col-md-4 removed">
                {{-- START COURSE DISCOUNT END DATE --}}
                <div class="form-group">
                    <label>Discount End Date <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fas fa-calendar-alt"></i> </span>
                        </div>
                        <input type="date" class="form-control" name="end_date"
                            min="{{ $row->start_date ?? date('Y-m-d', time() + 86400) }}"
                            value="{{ $row->end_date ?? old('end_date') }}">
                    </div>
                    <span class="red error" id="end_date-error"></span>
                </div>
                {{-- END COURSE DISCOUNT END DATE --}}
            </div>

        </div>
    </div>

    <div class="col-md-4">
        {{-- START COURSE IMAGE --}}
        @include('backend.includes.forms.input-file', ['image' => $row->image_url ?? null])
        {{-- START COURSE IMAGE --}}
    </div>
</div>

{{-- START COURSE DESCRIPTION --}}
<div class="form-group">
    <label>Course Descrption <span class="text-danger">*</span></label>
    <textarea class="summernote" name="desc">{{ $row->desc ?? old('desc') }}</textarea>
    <span class="red error" id="desc-error"></span>
</div>
{{-- END COURSE DESCRIPTION --}}
