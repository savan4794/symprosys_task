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
        <div class="card">
            <div class="card-header">
              EMI Calculator
            </div>
            <div class="card-body">

                @if($errors->any())
                <div class="alert alert-danger" role="alert">
                    <ul>
                    @foreach ($errors->all() as $error)
                            <li>{{$error}}</li>
                    @endforeach
                    </ul>
                  </div>

                @endif

                <form id="frmCalculateEmi"  method="post" action="{{ route('emi.calcuate') }}">
                    <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
                    <div class="row g-3">
                        <div class="col">
                          <input type="text" class="form-control" placeholder="Name" aria-label="Name" id="name" name="name">
                        </div>
                        <div class="col">
                          <input type="email" class="form-control" placeholder="Email" aria-label="Email" id="email" name="email">
                        </div>
                      </div>
                      <div class="row mt-3">
                        <div class="col">
                            <label for="loan_amount" class="visually-hidden">Loan Amount</label>
                            <input type="number" class="form-control" id="loan_amount" name="loan_amount" placeholder="Loan Amount">
                        </div>
                        <div class="col">
                          <label for="intrest_rate" class="visually-hidden">Annual Interest Rate</label>
                          <input type="number" class="form-control" id="intrest_rate" name="intrest_rate" placeholder="Annual Interest Rate">
                        </div>
                        <div class="col">
                            <label for="loan_duration" class="visually-hidden">Loan Duration</label>
                            <input type="number" class="form-control" id="loan_duration" name="loan_duration" placeholder="Loan Duration">
                          </div>
                      </div>
                      <div class="row mt-3">
                        <div class="col">
                            <button type="submit" id="calculateEMI" class="btn btn-primary mb-3">Calcualate</button>
                          </div>
                      </div>

                  </form>
            </div>
          </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
