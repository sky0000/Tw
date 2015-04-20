<html>
   <head>
    <link type="text/css" rel="stylesheet" href="css/login.css"/>

     <title>Perfumer</title>
  </head>
  <body>
    <div  id="login">
      <div id="stanga">
      <p id ="loginT" >   Login</p>
        <form id="form"  method="post" action="firstPage.php">
         
          <input type="text" name="username" placeholder="User" required>
         <p>
          <input type="password" name="password" placeholder="Password" required>
          <p></p>
           <input id ="buton" type ="submit"  value="Login" >
        </form>
      </div>
      <div id="singup">
             <p id ="loginT" >   Singup</p>
        <form id="form1"  method="post" action="firstPage.php" autocomplete="off">
         
          <input type="text" name="username" placeholder="User"  required>
         <p>
          <input type="password" name="password" placeholder="Password" required>
            <p></p>
            
           <input id ="buton" type ="submit"    value="Singup" >
        </form>
      </div>
      </div>
      </div>
  </body>
</html>