<div role="tabpanel" class="tab-pane active" id="courses" aria-expanded="true" aria-labelledby="baseIcon-tab21">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header text-bold-700 font-medium-2">
                    <h3>Pupular Posts:</h3>
                </div>
            </div>
        </div>
        @forelse ($posts as $post)
        <div class="col-md-4">
            <div class="card">
                <div class="card-header p-0">
                    <img src="{{ $post->image_url }}" alt="{{ $post->title }}" width="100%">
                </div>
                <div class="card-body pb-1">
                    <p class="mb-0 text-bold-700" style="overflow: hidden; height: 40px;">{!! $post->title
                        !!}
                    </p>
                </div>
                <div class="card-footer py-1">
                    <div class="d-flex justify-content-between align-self-center">
                        <span class="info">
                            <i class="fas fa-thumbs-up"></i> {{ $post->likes->count() }}
                        </span>
                        <span class="info">
                            <i class="fas fa-eye"></i> {{ $post->visitors->count() }}
                        </span>
                        <span class="info">
                            <i class="fas fa-comment"></i> {{ $post->comments()->count() }}
                        </span>
                    </div>
                </div>
                <div class="card-footer py-1">
                    <div class="d-flex justify-content-between">
                        <a class="btn btn-primary btn-sm d-block w-50"
                            href="{{ route('post', ['id' => $post->id, 'title' => $post->slug]) }}">
                            <i class="fas fa-eye"></i> Show Page
                        </a>
                    </div>
                </div>
            </div>
        </div>
        @empty
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="text-center">No Data</h3>
                </div>
            </div>
        </div>
        @endforelse
    </div>
</div>
