<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Fix existing daily_menus kitchen_id from their schools (fully compatible SQL)
        DB::statement("
            UPDATE daily_menus 
            SET kitchen_id = (SELECT kitchen_id FROM schools WHERE schools.id = daily_menus.school_id) 
            WHERE kitchen_id IS NULL
        ");
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
