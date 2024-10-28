<?php

function calculateRemainingAmount($loanAmout,$emi){
    return  $loanAmout - $emi;
}

function calculateEmi($amount,$rate,$term){
    $rateof = ($rate/1200);
    $x = pow((1+$rateof),$term);
    $emi = (($amount*$rateof)*($x/($x-1)));

    $t_amnt = ($emi*$term);
    $monthly_interst = $emi -($amount /$term);
    return [ "total" => $t_amnt, "emi" => $emi,'monthly_interst'=>$monthly_interst];
}
