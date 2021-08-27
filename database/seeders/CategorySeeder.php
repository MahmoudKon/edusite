<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;
use App\Models\User;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories =
            [
                ['name' => 'Web Developer',             'slug' => 'web-developer',           'order' => 1, 'visibility' => rand(0, 1)],
                ['name' => 'Web Designer',              'slug' => 'web-designer',            'order' => 2, 'visibility' => rand(0, 1)],
                ['name' => 'Ui&Ux Designer',            'slug' => 'ui-ux-designer',          'order' => 3, 'visibility' => rand(0, 1)],
                ['name' => 'Desktop Application',       'slug' => 'desktop-application',     'order' => 4, 'visibility' => rand(0, 1)],
                ['name' => 'Mobile Application',        'slug' => 'mobile-application',      'order' => 5, 'visibility' => rand(0, 1)],
                ['name' => 'Web Application',           'slug' => 'web-application',         'order' => 6, 'visibility' => rand(0, 1)],
                ['name' => 'Artificial Intelligence',   'slug' => 'artificial-intelligence', 'order' => 7, 'visibility' => rand(0, 1)],
                ['name' => 'IT & Multimedia Design',    'slug' => 'it&-multimedia-design',   'order' => 8, 'visibility' => rand(0, 1)],
            ];
        Category::insert($categories);
    }
}
