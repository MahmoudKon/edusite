<div role="tabpanel" class="tab-pane active" id="courses" aria-expanded="true" aria-labelledby="baseIcon-tab21">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header text-bold-700 font-medium-2">
                    <h3>Pupular Videos:</h3>
                </div>
            </div>
        </div>
        @forelse ($videos as $video)
        <div class="col-md-4">
            <div class="card">
                <div class="card-header p-0">
                    <video width="100%" controls>
                        <source src="{{ $video->video_path }}">
                    </video>
                </div>
                <div class="card-body pb-1">
                    <p class="mb-0 text-bold-700" style="overflow: hidden; height: 40px;">{!! $video->title
                        !!}
                    </p>
                </div>
                <div class="card-footer py-1">
                    <div class="d-flex justify-content-between align-self-center">
                        <span class="info">
                            <i class="fas fa-thumbs-up"></i> {{ $video->likes()->count() }}
                        </span>
                        <span class="info">
                            <i class="fas fa-eye"></i> {{ $video->visitors()->count() }}
                        </span>
                        <span class="info">
                            <i class="fas fa-comment"></i> {{ $video->comments()->count() }}
                        </span>
                    </div>
                </div>
                <div class="card-footer py-1">
                    <div class="d-flex justify-content-between">
                        <a class="btn btn-primary btn-sm d-block w-50"
                            href="{{ route('course.video', ['id' => $video->id, 'video' => $video->slug]) }}">
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
