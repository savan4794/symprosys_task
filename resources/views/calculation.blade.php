<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EMI Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <div class="card mb-2">
            <div class="card-header">
                Loan Details
            </div>
            <div class="card-body">
                <div class="mb-3 row">
                    <label for="name" class="col-sm-2 col-form-label">Name</label>
                    <div class="col-sm-10">
                      <input type="text" readonly class="form-control-plaintext" id="name" value="{{ $response->getInquery()->name }}">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="name" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                      <input type="text" readonly class="form-control-plaintext" id="email" value="{{ $response->getInquery()->email }}">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="name" class="col-sm-2 col-form-label">Loan Amount</label>
                    <div class="col-sm-10">
                      <input type="text" readonly class="form-control-plaintext" id="loan_amount" value="{{ $response->getInquery()->loan_amount }}">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="name" class="col-sm-2 col-form-label">Rate</label>
                    <div class="col-sm-10">
                      <input type="text" readonly class="form-control-plaintext" id="loan_amount" value="{{ $response->getInquery()->interest_rate }}">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="name" class="col-sm-2 col-form-label">Months</label>
                    <div class="col-sm-10">
                      <input type="text" readonly class="form-control-plaintext" id="duration" value="{{ $response->getInquery()->duration }}">
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
              EMI Calculation
            </div>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>EMI Number</th>
                            <th>EMI Amount</th>
                            <th>Rate</th>
                            <th>Monthly Interst</th>
                            <th>Remaining Loan</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($response->schedual as $i=>$scheual)
                        <tr>
                            <td>{{$i+1}}</td>
                            <td>{{number_format($scheual['emi_amount'],2)}}</td>
                            <td>{{ number_format($scheual['intrest_rate'],2) }}%</td>
                            <td>{{ number_format($scheual['monthly_interst'],2) }}</td>
                            <td>{{ number_format($scheual['remaining_loan'],2) }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                  </table>
                  <div class="col-12">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="gridCheck">
                      <label class="form-check-label" for="gridCheck">
                            Advance Payment
                      </label>
                    </div>
                  </div>
            </div>
          </div>
    </div>
    <div class="card" style="display:none" id="advpay">
        <div class="card-body">
            <form id="frmAdvPay"  method="post" action="#">
                <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
                <input type="hidden" name="loan_id" id="loan_id" value="{{ $response->id }}">
                  <div class="row mt-3">
                    <div class="col">
                        <label for="adv_amount" class="visually-hidden">Advance Amount</label>
                        <input type="number" class="form-control" id="adv_amount" name="adv_amount" placeholder="Advance Amount">
                    </div>
                    <div class="col">
                        <button type="button" id="calculateNewEMI" class="btn btn-primary mb-3">Calcualate</button>
                    </div>
              </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script>
        $('#gridCheck').click(function() {
            $("#advpay").toggle();
        });
        $("#calculateNewEMI").click(function (e) {
            e.preventDefault();
            var formData = $("#frmCalculateEmi").serialize();
               console.log(formData);

            $.ajax({
                type: "post",
                url: "{{ route('emi.advancePayment') }}",
                data: formData,
                success: function (response) {
                    console.log(response);

                }
            });
        });
    </script>
</body>
</html>
