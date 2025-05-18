<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('service_requests', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->string('device_type');
            $table->string('device_model');
            $table->enum('issue_type', ['mechanical', 'startup', 'software']);
            $table->text('description');
            $table->enum('status', ['nieopłacona', 'w drodze', 'w serwisie', 'zrealizowana'])->default('nieopłacona');
            $table->timestamps();
        });
    }
    
};
