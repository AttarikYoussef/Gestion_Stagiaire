<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">


<style>


body {
padding-bottom:58px; 

}
.send-button{
background: #54C7C3;
width:100%;
font-weight: 600;
color:#fff;
padding: 8px 25px;
}
input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
  -webkit-appearance: none; 
  margin: 0; 
}
.g-button{
color: #fff !important;
border: 1px solid #EA4335;
background: #ea4335 !important;
width:100%;
font-weight: 600;
color:#fff;
padding: 8px 25px;
}
.my-input{
box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
cursor: text;
padding: 8px 10px;
transition: border .1s linear;
}
.header-title{
margin: 5rem 0;
}
h1{
font-size: 31px;
line-height: 40px;
font-weight: 600;
color:#4c5357;
}
h2{
color: #5e8396;
font-size: 21px;
line-height: 32px;
font-weight: 400;
}
.login-or {
position: relative;
color: #aaa;
margin-top: 10px;
margin-bottom: 10px;
padding-top: 10px;
padding-bottom: 10px;
}
.span-or {
display: block;
position: absolute;
left: 50%;
top: -2px;
margin-left: -25px;
background-color: #fff;
width: 50px;
text-align: center;
}
.hr-or {
height: 1px;
margin-top: 0px !important;
margin-bottom: 0px !important;
}
@media screen and (max-width:480px){
h1{
font-size: 26px;
font-family: agency fb;
}
h2{
font-size: 20px;
}
}
h1{
font-family: agency fb;
font-size: 300%;
}

.file {
  opacity: 0;
  width: 0.1px;
  height: 0.1px;
  position: absolute;
}

.file-input label {
  display: block;
  position: relative;
  width: 200px;
  height: 50px;
  border-radius: 25px;
  background: #95BAE4;
  box-shadow: 0 4px 7px rgba(0, 0, 0, 0.4);
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
  font-weight: bold;
  cursor: pointer;
  transition: transform .2s ease-out;
}

.file-name {
  position: absolute;
  bottom: -35px;
  left: 10px;
  font-size: 0.85rem;
  color: #555;
}

input:hover + label,
input:focus + label {
  transform: scale(1.02);
}

/* Adding an outline to the label on focus */
input:focus + label {
  outline: 1px solid #000;
  outline: -webkit-focus-ring-color auto 2px;
}

label {
font-family: agency fb;
font-size: large;
}

</style>

<script type="text/javascript">

const file = document.querySelector('#file');
file.addEventListener('change', (e) => {
  // Get the selected file
  const [file] = e.target.files;
  // Get the file name and size
  const { name: fileName, size } = file;
  // Convert size in bytes to kilo bytes
  const fileSize = (size / 1000).toFixed(2);
  // Set the text content
  const fileNameAndSize = `${fileName} - ${fileSize}KB`;
  document.querySelector('.file-name').textContent = fileNameAndSize;
});

</script>
<body>

<body>
   <div class="container">
      <div class="col-md-6 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">
              Demande de soutenance
            </h1>
           
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="myform form ">
               <form action="/Gestion_Stagiaire/ServletDemandeSoutenance" method="post" name="login">
                  <div class="form-group">
                     <input type="text" name="id_st"  class="form-control my-input" id="name" placeholder="Identifiant du stage">
                  </div>
                 
                 <center>
                    <div class="file-input">
  					<input type="file" id="file" class="file" name="fiche_eva">
  					<label for="file">
    				Fiche d'evaluation
    				<p class="file-name"></p>
    				
  					</label>
					</div>
                  </center>
                  <br>
                  
                 <center>
                    <div class="file-input">
  					<input type="file" id="file" class="file" name="rapp_st">
  					<label for="file">
    				Rapport de stage
    				<p class="file-name"></p>
  					</label>
					</div>
                  </center>
                  
                  <br>
                   <center>
                    <div class="file-input">
  					<input type="file" id="file" class="file"name="att_st">
  					<label for="file">
    				Attestation de stage
    				<p class="file-name"></p>
  					</label>
					</div>
                  </center>
                  
                  <br>
                  
                    <div class="form-group">
                   <center>
                  <label >Date proposé pour soutenance : </label>
                  <input type="date"  name="date_pro" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
                  </center>
                     
                     
                  </div>
                  
                   <div class="form-group">
                   <center>
                  <label for="lname">Heure proposé :</label>
                  <input type="time" id="appt" name="heure"
       min="09:00" max="18:00" required>
                  </center>
                    
  
                  </div>
                  
                   <div class="form-group">
                     <input type="text" name="comm"  class="form-control my-input" id="name" placeholder="Commentaire">
                  </div>

                  <div class="text-center ">
                     <button type="submit" class=" btn btn-block send-button tx-tfm">Valider la demande</button>
                  </div>
                  <div class="col-md-12 ">
                     <div class="login-or">
                        <hr class="hr-or">
             
               </form>
            </div>
         </div>
      </div>
   </div>
</body>
</html>
