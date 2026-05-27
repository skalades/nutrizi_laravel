<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreAuditRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true; // Per-kitchen scoping is handled in Controller
    }

    public function rules(): array
    {
        $isUpdate = false;
        if ($this->has('audit_date')) {
            $user = $this->user();
            $kitchenId = $this->input('kitchen_id', $user->kitchen_id);
            $isUpdate = \App\Models\AuditLog::where('kitchen_id', $kitchenId)
                ->where('audit_date', $this->input('audit_date'))
                ->whereNotNull('photo_path')
                ->exists();
        }

        return [
            'audit_date' => 'required|date',
            'taste_score' => 'required|integer|min:1|max:5',
            'appearance_score' => 'required|integer|min:1|max:5',
            'aroma_score' => 'required|integer|min:1|max:5',
            'texture_score' => 'required|integer|min:1|max:5',
            'photo' => ($isUpdate ? 'nullable' : 'required') . '|image|mimes:jpeg,png,jpg,webp|max:10240', // 10MB max upload
            'notes' => 'nullable|string',
        ];
    }
}
