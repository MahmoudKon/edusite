@forelse ($tags as $tag)
<span class="badge badge badge-success" style="margin-bottom: 3px">{{ $tag['name'] }}</span>
@empty
no tags found
@endforelse
