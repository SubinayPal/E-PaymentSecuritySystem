<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

@import url('https://fonts.googleapis.com/css?family=Exo:400,700');

*{
    margin: 0px;
    padding: 0px;
}

body{
    font-family: 'Exo', sans-serif;
}


.context {
    width: 100%;
    position: absolute;
    top:15vh;
    
}

.context h1{
    text-align: center;
    color: #fff;
    font-size: 50px;
}


.area{
    background: #4e54c8;  
    background: -webkit-linear-gradient(to left, #8f94fb, #4e54c8);  
    width: 100%;
    height:100vh;
    
   
}

.circles{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
}

.circles li{
    position: absolute;
    display: block;
    list-style: none;
    width: 20px;
    height: 20px;
    background: rgba(255, 255, 255, 0.2);
    animation: animate 25s linear infinite;
    bottom: -150px;
    
}

.circles li:nth-child(1){
    left: 25%;
    width: 80px;
    height: 80px;
    animation-delay: 0s;
}


.circles li:nth-child(2){
    left: 10%;
    width: 20px;
    height: 20px;
    animation-delay: 2s;
    animation-duration: 12s;
}

.circles li:nth-child(3){
    left: 70%;
    width: 20px;
    height: 20px;
    animation-delay: 4s;
}

.circles li:nth-child(4){
    left: 40%;
    width: 60px;
    height: 60px;
    animation-delay: 0s;
    animation-duration: 18s;
}

.circles li:nth-child(5){
    left: 65%;
    width: 20px;
    height: 20px;
    animation-delay: 0s;
}

.circles li:nth-child(6){
    left: 75%;
    width: 110px;
    height: 110px;
    animation-delay: 3s;
}

.circles li:nth-child(7){
    left: 35%;
    width: 150px;
    height: 150px;
    animation-delay: 7s;
}

.circles li:nth-child(8){
    left: 50%;
    width: 25px;
    height: 25px;
    animation-delay: 15s;
    animation-duration: 45s;
}

.circles li:nth-child(9){
    left: 20%;
    width: 15px;
    height: 15px;
    animation-delay: 2s;
    animation-duration: 35s;
}

.circles li:nth-child(10){
    left: 85%;
    width: 150px;
    height: 150px;
    animation-delay: 0s;
    animation-duration: 11s;
}



@keyframes animate {

    0%{
        transform: translateY(0) rotate(0deg);
        opacity: 1;
        border-radius: 0;
    }

    100%{
        transform: translateY(-1000px) rotate(720deg);
        opacity: 0;
        border-radius: 50%;
    }

}


.container {
    display: flex;
    flex-direction: row;
    align-content: center;
    align-items: center;
    margin-left:85vh;
}


.bttn-one {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin: 2rem;

    width: 2rem;
    height: 1rem;

    border-radius: 1.25em;
    padding: 2em 3.25em 2em 3.25em;
    background: rgb(13, 0, 26);
    color: white;
    background-blend-mode: multiply;
    box-shadow: 0em .25em 2em 0em rgba(253, 151, 255, 1);

}

.bttn-one:hover {
    font-style: normal;
    font-weight: 400;
    font-size: 1.75rem;
    line-height: 2.5rem;
    padding: 0;
    width: 0;
    height: 0;

    display: flex;
    align-items: center;
    text-align: center;
    text-decoration: none;
    color: #FDB0FF;
    text-shadow: 0px 3px 15px #FB4EFF;

}



.bttn-two {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin: 2rem;

    width: 2rem;
    height: 1rem;

    padding: 2em 3.25em 2em 3.25em;
    background: #010028;
    color: white;
    background-blend-mode: multiply;
    box-shadow: 0em .25em 2em 0em #B0FFF1;
    border-radius: 1.25em;

}

.bttn-two:hover {
    font-style: normal;
    font-weight: 400;
    font-size: 2rem;
    line-height: 2.5rem;
    text-decoration: none;
    padding: 0;
    width: 0;
    height: 0;

    align-items: center;
    text-align: center;

    color: #B0FFF1;

    text-shadow: 0px 3px 15px #00FFD1;

}




</style>

</head>
<body>

<div class="context">
<script src="https://cdn.lordicon.com/pzdvqjsp.js"></script>
<center>
<lord-icon
    src="https://cdn.lordicon.com/dqxvvqzi.json"
    trigger="loop"
    delay="2000"
    colors="outline:#121331,primary:#ffc738,secondary:#4bb3fd"
    style="width:150px;height:150px">
</lord-icon>
</center>




  <div class="container">
    <button type="button" class="bttn-one" onClick="tClick()">Transaction</button>
    <button type="button" class="bttn-two">@@@</button>
    
    
  </div>


</div>


<div class="area" >

            <ul class="circles">
            	<li></li>
            	<li></li>
            	<li></li>
            	<li></li>
            	<li></li>
            	<li></li>
            	<li></li>
            	<li></li>
            	<li></li>
            	<li></li>
            	<li></li>
            </ul>
    </div >
</body>


</html>
