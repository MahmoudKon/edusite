<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = ['super admin', 'admin', 'manager', 'user', 'normal'];

        foreach ($roles as $role) {
            $new_role = Role::create([
                'name' => $role
            ]);
            $new_role->permissions()->attach(Permission::inRandomOrder()->take(rand(1, 5))->pluck('id', 'id')->toArray());
        }
    }
}
