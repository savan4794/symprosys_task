<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LoanInquery extends Model
{
    use HasFactory;
    protected $table = 'loan_inquery';

    protected $fillable = [
        'name','email','loan_amount','interest_rate','duration'
    ];


    protected $cast =[
        'loan_amount'=>'double',
        'interest_rate'=>'double',
        'duration'=>'integer'
    ];

    public function Loan(){
         return $this->hasMany(Loan::class,'loan_id','id');
    }
    public function getLoan(){
        return $this->Loan;
    }
}
