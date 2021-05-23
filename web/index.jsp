<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Airline Reservation System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
        <br>
            <br>
            <br>
            <br><br>
        <h1 style="text-align: center;">Welcome to Airline Reservation System</h1>
        <div class="container">
            
            
            <div class="row " style="text-align: center;">
                <div class="col-12">
                    <h1> Login to proceed </h1>
                </div>
            </div>
        <div class="row">
            <div class="col-sm-12">
               <form action="login" method="POST">
                <div class="form-group">
                  <label for="email">Email address</label>
                  <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" name="pass" placeholder="Password">
                </div>
                <!--<div class="form-check">-->
                  <!--<input type="checkbox" class="form-check-input" id="exampleCheck1">-->
                  <!--<label class="form-check-label" for="exampleCheck1">Check me out</label>-->
                <!--</div>-->
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
                </div>
        </div>
    </container>
    </body>
</html>
