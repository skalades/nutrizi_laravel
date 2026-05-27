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
        // Sync portion_name in master_menu_items with food_items.category (SQLite/MySQL compatible)
        DB::statement("
            UPDATE master_menu_items 
            SET portion_name = (
                SELECT category FROM food_items 
                WHERE food_items.id = master_menu_items.food_item_id
            )
            WHERE EXISTS (
                SELECT 1 FROM food_items 
                WHERE food_items.id = master_menu_items.food_item_id 
                  AND food_items.category IS NOT NULL 
                  AND food_items.category != ''
            )
        ");

        // Sync portion_name in daily_menu_items with food_items.category (SQLite/MySQL compatible)
        DB::statement("
            UPDATE daily_menu_items 
            SET portion_name = (
                SELECT category FROM food_items 
                WHERE food_items.id = daily_menu_items.food_item_id
            )
            WHERE EXISTS (
                SELECT 1 FROM food_items 
                WHERE food_items.id = daily_menu_items.food_item_id 
                  AND food_items.category IS NOT NULL 
                  AND food_items.category != ''
            )
        ");
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Rollback is not strictly necessary, but we could set them back to 'Lauk'
    }
};
