<div class="form-group">
    <label>Select Tags:</label>
    <select data-placeholder="Select a tags..." class="select2-icons form-control" multiple name="tags[]">
        @forelse ($tags as $tag)
        <option value="{{ $tag->id }}" data-icon=" {{ $tag->icon }}"
            {{ $tag->visibility == 0 ? (isset($row) ? (in_array($tag->id, $row->tags->pluck('id')->toArray()) ? '' : 'disabled') : 'disabled') : '' }}
            {{ isset($row) ? (in_array($tag->id, $row->tags->pluck('id')->toArray()) ? 'selected' : '') : '' }}>
            {{ $tag->name }} {{ $tag->visibility == 0 ? '(Hidden)' : '' }}
            @empty
        <option> no tags found </option>
        @endforelse
    </select>
    <span class="red error" id="tags-error"></span>
</div>
