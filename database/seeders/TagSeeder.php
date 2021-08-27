<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Tag;

class TagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $tags =
            [
                ['name' => 'wordpress',     'slug' => 'wordpress',         'visibility' => rand(0, 1),  'icon' => 'fab fa-wordpress'],
                ['name' => 'codepen',       'slug' => 'codepen',           'visibility' => rand(0, 1),  'icon' => 'fab fa-codepen'],
                ['name' => 'drupal',        'slug' => 'drupal',            'visibility' => rand(0, 1),  'icon' => 'fab fa-drupal'],
                ['name' => 'pinterest',     'slug' => 'pinterest',         'visibility' => rand(0, 1),  'icon' => 'fab fa-pinterest'],
                ['name' => 'html',          'slug' => 'html',              'visibility' => rand(0, 1),  'icon' => 'fab fa-html5'],
                ['name' => 'pdf',           'slug' => 'pdf',               'visibility' => rand(0, 1),  'icon' => 'fas fa-file-pdf'],
                ['name' => 'word',          'slug' => 'word',              'visibility' => rand(0, 1),  'icon' => 'fas fa-file-word'],
                ['name' => 'excel',         'slug' => 'excel',             'visibility' => rand(0, 1),  'icon' => 'fas fa-file-excel'],
                ['name' => 'powerpoint',    'slug' => 'powerpoint',        'visibility' => rand(0, 1),  'icon' => 'fas fa-file-powerpoint'],
                ['name' => 'chrome',        'slug' => 'chrome',            'visibility' => rand(0, 1),  'icon' => 'fab fa-chrome'],
                ['name' => 'firefox',       'slug' => 'firefox',           'visibility' => rand(0, 1),  'icon' => 'fab fa-firefox-browser'],
                ['name' => 'safari',        'slug' => 'safari',            'visibility' => rand(0, 1),  'icon' => 'fab fa-safari'],
                ['name' => 'opera',         'slug' => 'opera',             'visibility' => rand(0, 1),  'icon' => 'fab fa-opera'],
                ['name' => 'IE',            'slug' => 'internet-explorer', 'visibility' => rand(0, 1),  'icon' => 'fab fa-internet-explorer'],
                ['name' => 'css',           'slug' => 'css',               'visibility' => rand(0, 1),  'icon' => 'fab fa-css3'],
                ['name' => 'js',            'slug' => 'js',                'visibility' => rand(0, 1),  'icon' => 'fab fa-js-square'],
                ['name' => 'vue.js',        'slug' => 'vue.js',            'visibility' => rand(0, 1),  'icon' => 'fab fa-vuejs'],
                ['name' => 'php',           'slug' => 'php',               'visibility' => rand(0, 1),  'icon' => 'fab fa-php'],
                ['name' => 'laravel',       'slug' => 'laravel',           'visibility' => rand(0, 1),  'icon' => 'fab fa-laravel'],
                ['name' => 'mysql',         'slug' => 'mysql',             'visibility' => rand(0, 1),  'icon' => 'fas fa-database'],
            ];
        Tag::insert($tags);
    }
}
