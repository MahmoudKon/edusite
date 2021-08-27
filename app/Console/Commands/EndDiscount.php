<?php

namespace App\Console\Commands;

use Illuminate\Support\Facades\Notification;
use App\Notifications\AddComment;
use Illuminate\Console\Command;
use App\Models\Course;
use App\Models\User;
use Carbon\Carbon;

class EndDiscount extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'end:discount';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Make all the fields of the discount expired of courses equal to null.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $courses = Course::whereDate('end_date', '<=', Carbon::yesterday())->get();
        foreach ($courses as $course) {
            $course->update([
                'discount'   => null,
                'start_date' => null,
                'end_date'   => null,
            ]);

            $data = [
                'message'     => 'Your course discount interval has expired.',
                'image'       => $course->image_url,
                'title'       => $course->title,
                'date'        => now()->diffForHumans(),
                'url'         => route('course', ['id' => $course->id, 'title' => $course->slug]),
            ];

            $author = User::whereId($course->user_id)->first();
            Notification::send($author, new AddComment($data));
        }
    }
}
