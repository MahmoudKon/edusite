<div class="card-header bg-info white">
    <h4 class="card-title white">
        {{ ucfirst(getModel()) }} : <span id="recourds-count"> {{ $count }}</span>
    </h4>

    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
    <div class="heading-elements">
        <ul class="list-inline mb-0">
            <li><a data-action="collapse" data-toggle="tooltip" data-original-title="Minus Section" ><i class="ft-minus"></i></a></li>
            <li><a data-action="reload" data-toggle="tooltip" data-original-title="Reload Table" ><i class="ft-rotate-cw"></i></a></li>
            <li><a data-action="expand" data-toggle="tooltip" data-original-title="Full Page" ><i class="ft-maximize"></i></a></li>
            <li><a data-action="close" data-toggle="tooltip" data-original-title="Remove Section" ><i class="ft-x"></i></a></li>
        </ul>
    </div>

</div>
