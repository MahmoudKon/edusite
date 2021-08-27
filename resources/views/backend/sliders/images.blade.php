@forelse ($slices as $slice)
<img src="{{ $slice->image_url }}" width="150px" class="img-thumbnail">
@empty
no image
@endforelse
