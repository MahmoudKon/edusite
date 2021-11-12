<div class="form-group">
    <label>Visibility <span class="text-danger">*</span></label>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text"> <i class="fas fa-lightbulb"></i> </span>
        </div>
        <select class="form-control" name="visibility">
            <option value="0"
                {{ isset($row) ? ($row->visibility == 0 ? 'selected' : '') : (old('visibility') == 0 ? 'selected' : '') }}>
                Hidden
            </option>
            <option value="1"
                {{ isset($row) ? ($row->visibility == 1 ? 'selected' : '') : (old('visibility') == 1 ? 'selected' : '') }}>
                Visible
            </option>
        </select>
    </div>
    <span class="red error" id="visibility-error"></span>
</div>
