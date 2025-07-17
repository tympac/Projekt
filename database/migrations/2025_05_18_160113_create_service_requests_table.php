<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::create('service_requests', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('client_id'); 
            $table->unsignedBigInteger('serviceman_id')->nullable(); 
            $table->string('status')->default('nieopłacona');  
            $table->string('type');  
            $table->string('device_type')->nullable();  
            $table->string('device_model')->nullable(); 
            $table->text('description');  
            $table->timestamps();
    
            $table->foreign('client_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('serviceman_id')->references('id')->on('users')->onDelete('set null');
        });
    }
    

    public function down(): void
    {
        Schema::dropIfExists('service_requests');
    }
};
