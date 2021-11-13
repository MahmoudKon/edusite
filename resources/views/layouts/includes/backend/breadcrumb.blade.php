<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">{{ strtoupper(getModel()) }}</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    @foreach (generateUrl() as $link)
                        @if($loop->last)
                            <li class="breadcrumb-item active"> {{ $link == "" ? 'Dashboard' : ucfirst($link) }} </li>
                        @else
                            <li class="breadcrumb-item"> <a href="{{ url('dashboard/'.$link) }}">{{ $link == "" ? 'Dashboard' : ucfirst($link) }}</a> </li>
                        @endif
                    @endforeach
                </ol>
            </div>
        </div>
    </div>
</div>
