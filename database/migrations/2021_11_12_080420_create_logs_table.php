<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('logs', function (Blueprint $table) {
            $table->id();
            $table->longText('response_headers')->nullable();
            $table->longText('response_content')->nullable();
            $table->longText('request')->nullable();
            $table->text('message')->nullable();
            $table->string('url', 200)->nullable();
            $table->string('page', 100)->nullable();
            $table->string('method', 150)->nullable();
            $table->string('controller', 200)->nullable();
            $table->string('model', 200)->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('logs');
    }
}
