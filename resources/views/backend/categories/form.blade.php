{{-- START CATEGORY NAME --}}
<div class="form-group">
    <label>Category Name:</label>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text"> <i class="la la-list"></i> </span>
        </div>
        <input type="text" class="form-control badge-text-maxlength" maxlength="25" name="name"
            value="{{ $row->name ?? old('name') }}" placeholder="Category Name" autocomplete="off">
    </div>
    <span class="red error" id="name-error"></span>
</div>
{{-- START CATEGORY NAME --}}

{{-- START CATEGORY ORDER --}}
<div class="form-group">
    <label>Category order:</label>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text"> <i class="fas fa-sort-numeric-up-alt"></i> </span>
        </div>
        <input type="number" class="form-control badge-text-maxlength" maxlength="2" name="order" autocomplete="off"
            value="{{ $row->order ?? old('order') }}" placeholder="Category Order" value="1" min="1">
    </div>
    <span class="red error" id="order-error"></span>
</div>
{{-- START CATEGORY ORDER --}}

{{-- START CATEGORY IS ACTIVE --}}
@include('backend.includes.forms.select-visibility')
{{-- END CATEGORY IS ACTIVE --}}
