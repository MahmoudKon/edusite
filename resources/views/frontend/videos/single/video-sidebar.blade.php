<div class="sidebar" style="padding-top: 45px">
    <div class="sidebar_section">
        <div class="sidebar_section_title">Course List</div>
        <div class="sidebar_latest" style="overflow:hidden;overflow-y: scroll;height: 490px;background: #0000001f">
            @foreach ($list as $item)
            <div class="latest mb-0 d-flex flex-row align-items-start justify-content-start w-100"
                {{ $video->id == $item->id ? 'style = background:#f1f1f1' : '' }}>
                <div class="row py-2">
                    <div class="col-5">
                        <iframe style="width: 100%; height: 90px;" src="{{ $item->video_path }}"
                            frameborder="0"></iframe>
                    </div>
                    <div class="col-7">
                        <div class="latest_title" style="height: 75px;overflow: hidden;">
                            <a href="{{ route('course.video', ['video' => $item->id, 'title' => $item->slug]) }}"
                                data-toggle="tooltip" title="{{ $item->title }}">{{ $item->title }}</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>

<div class="sidebar" style="padding-top: 45px">
    <div class="sidebar_section">
        <div class="sidebar_section_title">Random List</div>
        <div class="sidebar_latest" style="overflow:hidden; overflow-y:scroll;max-height: 460px;">
            @foreach ($random as $ranom_item)
            <div class="latest mb-0 d-flex flex-row align-items-start justify-content-start w-100">
                <div class="row py-2">
                    <div class="col-5 pr-0">
                        <iframe style="width: 100%; height: 90px;" src="{{ $ranom_item->video_path }}"
                            frameborder="0"></iframe>
                    </div>
                    <div class="col-7">
                        <div class="latest_title" style="height: 75px;overflow: hidden;">
                            <a href="{{ route('course.video', ['video' => $ranom_item->id, 'title' => $ranom_item->slug]) }}"
                                data-toggle="tooltip" title="{{ $ranom_item->title }}">{{ $ranom_item->title }}</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
