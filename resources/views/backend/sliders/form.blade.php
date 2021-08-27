{{-- START SLIDER NAME --}}
<div class="form-group">
    <label>Slider Name:</label>
    <div class="input-group">
        <div class="input-group-prepend"> <span class="input-group-text"> <i class="la la-bookmark"></i> </span>
        </div>
        <input type="text" class="form-control badge-text-maxlength" maxlength="20" name="name"
            value="{{ $row->name ?? old('name') }}" placeholder="Slider Name" autocomplete="off">
    </div>
    <span class="red error" id="name-error"></span>
</div>
{{-- END SLIDER NAME --}}

<div class="repeater-slices">
    <div data-repeater-list="slices">
        @if(isset($row))
        @foreach ($row->slices as $slice)
        @include('backend.sliders.form-body')
        @endforeach
        @else
        @include('backend.sliders.form-body')
        @endif
    </div>
    <div class="form-group overflow-hidden mt-1">
        <div class="col-12">
            <span data-repeater-create class="btn btn-primary">
                <i class="ft-plus"></i> Add
            </span>
        </div>
    </div>
</div>
