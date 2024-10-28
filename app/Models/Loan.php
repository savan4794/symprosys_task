<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Loan extends Model
{
    use HasFactory;


    protected $table = 'loan';

    protected $fillable = [
        'loan_id','emi','last_advance_payment','remaining_loan','monthly_interest','schedual'
    ];


    public function Inquery(){
        return $this->hasOne(LoanInquery::class,'id','loan_id');
    }

    public function getInquery(){
        return $this->Inquery;
    }


    protected $casts = [
        'last_advance_payment'=>'date',
    ];

    public function getSchedualAttribute($value){
        return json_decode($value,true);
    }
}
