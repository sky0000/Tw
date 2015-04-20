<html>
  <head>
    <script type="text/javascript">
            function showFrontLayer1() {
                document.getElementById('bg_mask1').style.visibility='visible';
                document.getElementById('frontlayer1').style.visibility='visible';
            }
            function hideFrontLayer1() {
                document.getElementById('bg_mask1').style.visibility='hidden';
                document.getElementById('frontlayer1').style.visibility='hidden';
            }
      function showFrontLayer2() {
                document.getElementById('bg_mask2').style.visibility='visible';
                document.getElementById('frontlayer2').style.visibility='visible';
            }
            function hideFrontLayer2() {
                document.getElementById('bg_mask2').style.visibility='hidden';
                document.getElementById('frontlayer2').style.visibility='hidden';
            }
      function showFrontLayer3() {
                document.getElementById('bg_mask3').style.visibility='visible';
                document.getElementById('frontlayer3').style.visibility='visible';
            }
            function hideFrontLayer3() {
                document.getElementById('bg_mask3').style.visibility='hidden';
                document.getElementById('frontlayer3').style.visibility='hidden';
            }
      
        </script>
    <title> Perfumer
    </title>
    <link type="text/css" rel="stylesheet" href=" css/voucher.css"/>
    </head>
      <body>
<div class="menu-wrap">
    <nav class="menu">
        <ul class="clearfix">
 
            <li>
                <a href="#">Cont <span class="arrow">&#9660;</span></a>
 
                <ul class="sub-menu">
                    <li><a href="profil.php">Profil</a></li>
                    <li><a href="voucher.php">Vouchere</a></li>
                    <li><a href="comanda.php">Comenzi</a></li> 
                    <li><a href="dasboard.php">Dashboard</a></li>       
                </ul>
            </li>
            <li><a href="login.php">Logout</a></li>
        </ul>
    </nav>
</div>
<div id="banner">
  <div id="perfumer">
    <p id="tper">Perfumer</p>
  </div>
 <div id ="menu">

<ul id="menu1">
<li class="li1"><a class="a1" href="firstPage.php">Acasa</a></li>
<li class="li1"><a class="a1" href="parfumuri.php">Parfumuri</a></li>
<li class="li1"><a class="a1" href="despreNoi.php">Despre noi</a></li>
</ul>
  </div>
  </div>
        
 <div id="dreapta">
   <div id="baselayer">
     <ul id="menu2">
      <li class="li1"> <button class="button" onclick="showFrontLayer1();">Voucher 10 RON</button></li>
      <li class="li1"><button class="button" onclick="showFrontLayer2();" >Voucher 20 RON</button></li>
      <li class="li1"><button class="button" onclick="showFrontLayer3();">Voucher 30 RON</button></li>
</ul>
     <div id="bg_mask1">
       <div id="frontlayer1">
       <div class="comanda">
    <table class="tabelComanda" border="1px">
      <thead><th colspan=4>Comanda</th>
      </thead>
      <tr>
        <td>
          <p class="detalii"> Cod Produs </p>
        </td>
        <td>
          <p class="detalii"> Reducere </p>
        </td>
         <td>
          <p class="detalii"> Pentru Produsul </p>
        </td></tr> 
        <tr> <td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd"placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td> </tr>
      <tr><td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd" placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td> </tr>
      <tr> <td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd" placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td> </tr>
       </table>
       <br/><br/>
         <button id="button" onclick="hideFrontLayer1();"> Inchide </button>
       </div> </div> </div> </div>
     <div id="bg_mask2">
       <div id="frontlayer2"><div class="comanda">
    <table class="tabelComanda" border="1px">
      <thead><th colspan=4>Comanda</th>
      </thead>
      <tr> <td>
         <p class="detalii"> Cod Produs </p>
        </td> <td>
          <p class="detalii"> Reducere </p>
        </td> <td>
          <p class="detalii"> Pentru Produsul </p>
        </td> </tr>
      <tr> <td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd"
                  placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td> </tr>
      <tr>
        <td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd"
                  placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td> </tr>
      <tr>
        <td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd"
                  placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td>
      </tr>
       </table>
       <br/><br/>
         <button id="button" onclick="hideFrontLayer2();"> Inchide </button>
       </div>  </div> </div>  </div>
     <div id="bg_mask3">
       <div id="frontlayer3">
                <div class="comanda">
    <table class="tabelComanda" border="1px">
      <thead><th colspan=4>Comanda</th>
      </thead>
      <tr>
        <td>
          <p class="detalii"> Cod Produs </p>
        </td>
        <td>
          <p class="detalii"> Reducere </p>
        </td>
         <td>
          <p class="detalii"> Pentru Produsul </p>
        </td>
      </tr>
      <tr>
        <td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd"
                  placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td>   </tr>
      <tr>
        <td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd"
                  placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td>  </tr>
      <tr>
        <td>
          <form>
           <input type="text" name="cod" size="10" placeholder="Cod" >
          </form>
        </td>
         <td>
         <form>
           <input type="text" name="reducere" size="10" placeholder="reducere" >
         </form>
        </td>
        <td>
         <form>
           <input type="text" name="ptProd"
                  placeholder="Pentru-Produsul" size="12"  >
         </form>
        </td>
      </tr>
       </table>
       <br/><br/>
         <button id="button" onclick="hideFrontLayer3();"> Inchide </button>
       </div> </div> </div> </div> </div>
       <div id="jos">
          ©2015 - Toate drepturile rezervate Tudorache Adriana
        </div>
      </body>
</html>