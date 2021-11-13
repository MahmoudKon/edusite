<a class="heading-elements-toggle">
    <i class="la la-ellipsis-h font-medium-3"></i>
</a>
<div class="heading-elements" style="top: 16px">
    <ul class="list-inline mb-0">
        <li>
            <a href="{{ route('backend.' . getModel() . '.index') }}" data-toggle="tooltip" data-original-title="Back To {{ getModel() }} Page"
                {{-- class="btn bg-primary bg-darken-4 white dropdown-item"> --}}
                class="btn btn-primary btn-glow dropdown-item">
                <i class="fas fa-sign-out-alt"></i> Back
            </a>
        </li>

        <li><a data-action="expand" class="text-white" data-toggle="tooltip" data-original-title="Full Page"><i class="ft-maximize"></i></a></li>
    </ul>
</div>
