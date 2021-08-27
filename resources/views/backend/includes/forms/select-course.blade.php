<div class="form-group">
    <label>Course name:</label>
    <select class="select2 form-control" name="course_id" data-placeholder="Select a course...">
        @forelse ($courses as $course)
        <option value="{{ $course->id }}"
            {{ $course->visibility == 0 ? (isset($row) ? ($row->course_id == $course->id ? '' : 'disabled') : 'disabled') : '' }}
            {{ isset($row) ? ($row->course_id == $course->id ? 'selected' : '') : (old('course_id') == $course->id ? 'selected' : '') }}>
            {{ $course->title }} {{ $course->visibility == 0 ? '(Hidden)' : '' }}
        </option>
        @empty
        <option>no courses found</option>
        @endforelse
    </select>
    <span class="red error" id="course_id-error"></span>
</div>
