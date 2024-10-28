<?php

namespace App\Http\Controllers;

use App\Models\Loan;
use App\Models\LoanInquery;
use Carbon\Carbon;
use Illuminate\Http\Request;

class EmiController extends Controller
{
    public function index(){
        return view('emi');
    }

    public function store(Request $request){
        $request->validate([
            'name'=>'required',
            'email'=>'required|email',
            'loan_amount'=>'required|numeric|min:100',
            'intrest_rate'=>'required|numeric|min:1|max:100',
            'loan_duration'=>'required|numeric|min:1'
        ]);
        $pa = $request->get('loan_amount',1);
        $ir = $request->get('intrest_rate',1);
        $ld= $request->get('loan_duration',1);
        $emi = calculateEmi($pa,$ir,$ld);
        $loanInquery = LoanInquery::create([
            'name'=>$request->get('name',null),
            'email'=>$request->get('email',null),
            'loan_amount'=>$request->get('loan_amount',default: 1),
            'interest_rate'=>$request->get('intrest_rate',default: 1),
            'duration'=>$request->get('loan_duration',default: 1),
        ]);


        $loan = Loan::create([
            'loan_id'=> $loanInquery->id,
            'emi'=>$emi['emi'],
            'remaining_loan'=>$emi['total'],
            'last_advance_payment'=>Carbon::today(),
            'monthly_interest'=>$emi['monthly_interst']
            ]
        );
        $response = array_merge($emi,$request->all());
        $emiSchedual = [];
        $response = [
            "total" => $loan->remaining_loan,
            "emi" => $loan->emi,
            "monthly_interst" =>$loan->monthly_interest,
            "name" => $loanInquery->name,
            "email" => $loanInquery->email,
            "loan_amount" => $loanInquery->loan_amount,
            "intrest_rate" => $loanInquery->interest_rate,
            "loan_duration" => $loanInquery->duration
        ];
        $remainingLoan = 0;
        for($i=1; $i <= $response['loan_duration']; $i++)
        {
            $remainingLoan = $i === 1 ? calculateRemainingAmount($response['total'],$response['emi']) : calculateRemainingAmount($remainingLoan,$response['emi']);
            $emiSchedual[] = [
                'emi_number'=>$i,
                'emi_amount'=>number_format($response['emi'],2),
                'intrest_rate'=>number_format($response['intrest_rate'],2),
                'remaining_loan'=>number_format($remainingLoan,2),
                'monthly_interst'=>number_format($response['monthly_interst'],2)
            ];
        }
        $loan->schedual = json_encode($emiSchedual,true);
        $loan->save();
        return view('calculation',['response'=>$loan]);
    }

    public function advancePayment(Request $request){
        dd($request->all());
    }

}
