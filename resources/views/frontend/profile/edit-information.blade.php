<div class="card">
    <div class="card-header text-bold-700 font-medium-2">
        <h3>Edit Informations:</h3>
    </div>
</div>

<div class="card">
    <div class="card-body text-bold-700">
        <form action=" {{ route('profile.update') }}" method="post" class="submit-form" enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
            <div class="row">
                <div class="col-md-8">
                    {{-- START USER NAME --}}
                    <div class="form-group">
                        <label>User Name :<small class="text-muted warning ml-3">Maximum number of characters is
                                30</small></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="la la-list"></i> </span>
                            </div>
                            <input type="text" class="form-control" name="name" value="{{ $user->name ?? old('name') }}"
                                placeholder="User Name" autocomplete="off">

                        </div>
                        <span class="red error" id="name-error"></span>
                    </div>
                    {{-- START USER NAME --}}

                    {{-- START JOB --}}
                    <div class="form-group">
                        <label>You Job: <small class="text-muted warning ml-3">Maximum number of characters is
                                50</small></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fas fa-briefcase"></i> </span>
                            </div>
                            <input type="text" class="form-control" name="job" value="{{ $user->job ?? old('job') }}"
                                placeholder="Your Job" autocomplete="off">
                        </div>
                        <span class="red error" id="job-error"></span>
                    </div>
                    {{-- START JOB --}}

                    {{-- START BIO --}}
                    <div class="form-group">
                        <label>Bio: <small class="text-muted warning ml-3">Maximum number of characters is
                                150</small></label>
                        <div class="input-group">
                            <textarea name="bio" class="form-control">{{ $user->bio ?? old('bio') }}</textarea>
                        </div>
                        <span class="red error" id="bio-error"></span>
                    </div>
                    {{-- START BIO --}}
                </div>

                <div class="col-md-4">
                    {{-- START COURSE IMAGE --}}
                    @include('backend.includes.forms.input-file', ['image' => $user->image_url ?? null])
                    {{-- START COURSE IMAGE --}}
                </div>
            </div>

            {{-- END FORM BUTTONS --}}
            <button type="submit" class="btn btn-primary">
                <i class="la la-check-square-o"></i> Save
            </button>
            {{-- END FORM BUTTONS --}}
        </form>
    </div>
</div>
