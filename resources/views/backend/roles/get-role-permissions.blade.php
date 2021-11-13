
<style>
    .permissions {
        margin: 20px 0;
    }
    .permission {
        padding: 10px 30px;
        background: #e7e7e7e7;
        border-radius: 20px;
        margin-bottom: 20px;
    }
    .permission h3 {
        border-bottom: 1px solid #ccc;
        text-align: center;
    }
    .permission label {
        font-size: 17px;
        font-weight: bold;
        padding: 10px 30px;
        margin: 0 15px;
    }
</style>
<div class="permissions">
    <h3>Permissions</h3>
    <div style="display: flex; justify-content: space-around;" class="flex-wrap">
    @foreach ($roles as $role)
        <div class="permission">
            <h3>{{ $role->name }}</h3>
            @forelse ($role->permissions as $permission)
                <label class="badge border-left-info border-right-info round badge-striped permission">{{ $permission->name }}</label>
            @empty
                <span>No Permissions</span>
            @endforelse
        </div>
    @endforeach
    </div>
</div>
