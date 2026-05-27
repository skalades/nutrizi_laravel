<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('portion_configs', function (Blueprint $table) {
            $table->decimal('meal_fiber', 8, 2)->default(0)->after('meal_carbs');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('portion_configs', function (Blueprint $table) {
            $table->dropColumn('meal_fiber');
        });
    }
};
