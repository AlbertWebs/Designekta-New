<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jambo Logistics Limited Calculator</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <style>
      html, body {
      height: 100%;
      }
      body, h1, h3, input { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 16px;
      color: #666;
      }
      h1, h3 {
      padding: 12px 0;
      font-weight: 400;
      }
      h1 {
      font-size: 28px;
      }
      .main-block, .info {
      display: flex;
      flex-direction: column;
      }
      .main-block {
      justify-content: center;
      align-items: center;
      width: 100%;
      min-height: 100%;
      background: url("/uploads/media/default/0001/01/49bff73f282c2c21f3341f1fe457fe35337b1792.jpeg") no-repeat center;
      background-size: cover;
      }
      form {
      width: 86%; 
      padding: 20px;
      margin-bottom: 20px;
      border-radius: 5px; 
      border: solid 1px #ccc;
      box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
      background: #ebebeb; 
      }
      .info-item {
      width: 100%;
      }
      input {
      width: calc(100% - 57px);
      height: 36px;
      padding-left: 10px; 
      margin: 0 0 12px -5px;
      border-radius: 0 5px 5px 0;
      border: solid 1px #cbc9c9;
      box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
      background: #fff; 
      }
      .icon {
      padding: 9px 15px;
      margin-top: -1px;
      /* width:80px; */
      border-radius: 5px 0 0 5px;
      border: solid 0px #cbc9c9;
      background: #666;
      color: #fff;
      }
      input[type=radio] {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      text-indent: 32px;
      cursor: pointer;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      border: 0.5px solid #8ebf42;
      background: #fff;
      }
      label.radio:after {
      content: "";
      position: absolute;
      width: 8px;
      height: 4px;
      top: 5px;
      left: 4px;
      border-bottom: 3px solid #8ebf42;
      border-left: 3px solid #8ebf42;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      textarea {
      width: 99%;
      margin-bottom: 12px;
      }
      button {
      width: 100%;
      padding: 8px;
      border-radius: 5px; 
      border: none;
      background: #8ebf42; 
      font-size: 14px;
      font-weight: 600;
      color: #fff;
      }
      button:hover {
      background: #82b534;
      }
      .grade-type div {
      display: flex;
      margin: 6px 0;
      }
      @media (min-width: 568px) {
      .info {
      flex-flow: row wrap;
      justify-content: space-between;
      }
      .info-item {
      width: 48%;
      }
      .info-itemm {
      width: 100%;
      }
      }
    </style>
  </head>
  <body>
    <div class="main-block">
      <center><h1>Jambo Logistics Limited Calculator</h1></center>
      <form action="{{url('/jambo-form')}}" id="JamboForm">
        {{ csrf_field() }}
        <div class="info">
          <div class="info-item">
            <label class="icon" for="name"><i class="fas fa-arrows-alt-h"></i></label>
            <input class="input" type="text" name="length" id="name" placeholder="length" required/>
          </div>
          <div  class="info-item">
            <label class="icon" for="age"><i class="fas fa-arrow-right"></i></i></label>
            <input class="input" type="text" name="width" id="age" placeholder="Width" required/>
          </div>
          <div  class="info-itemm">
            <label class="icon" for="email"><i class="fas fa-arrows-alt-v"></i></label>
            <input class="input" type="text" name="height" id="email" placeholder="Height" required/>
          </div>
          
        </div>
       
        <button id="JamboBtn" type="submit">Calculate</button>

        <div  class="info-itemm">
        <center><p id="JamboResults" style="font-weight:900; font-size:40px;"></p></center>
        </div>

      </form>
    </div>
    <!--  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        // this is the id of the form
        $("#JamboForm").submit(function(e) {

        e.preventDefault(); // avoid to execute the actual submit of the form.
        $("#JamboBtn").html("Working............");

        var form = $(this);
        var url = form.attr('action');

        $.ajax({
            type: "POST",
            url: url,
            data: form.serialize(), // serializes the form's elements.
            success: function(data)
            {
                $("#JamboResults").html(data);
                $("#JamboBtn").html("Calculate");
                $(".input").val("");
                // show response from the php script.
            }
            });


        });
    </script>
    <!--  -->
  </body>
</html>