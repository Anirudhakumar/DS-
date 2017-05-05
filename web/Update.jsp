<body style="background-color:powderblue;">

<hr>
<center><font size="10" face="Comic Sans MS" color="cyan">Welcome</font>
<hr>
<body background color="green">
<form action="Updated.jsp" method='post'>
    <table>
        <input type="hidden" name="uid" value=${uid}>
        <tr>
            <th><font color="yellow"> Enter Name:</font></th>
            <td><input type="text" name="uname" required></td>
        </tr>
        
        <tr>
            <th><font color="yellow"> Enter Gender</font></th>
            <td><input type="radio" name="gender"  value="male" required><font color="yellow">Male</font></td><td><input type="radio" name="gender"  value="female" required><font color="yellow">Female</font></td>
        </tr>
        <tr>
            <th><font color="yellow">Enter E-mail Id:</font></th>
            <td><input type="text" name="email" required></td>
        </tr>
        <tr>
            <th><font color="yellow">Enter Facebook Id:</font></th>
            <td><input type="text" name="fbid" required></td>
        </tr>
        <tr>
            <th><font color="yellow">Enter Insta Id:</font></th>
            <td><input type="text" name="instaid" required></td>
        </tr>
        <tr>
            <th><font color="yellow">Enter Mobile No:</font></th>
            <td><input type="text" name="phno" required></td>
        </tr>
        <tr>
            <td> </td>
            
            <th><font color="yellow">About Yourself:</font></th>
        </tr>
        <tr>
            <td> </td>
            
            <td><textarea name="about"></textarea></td>
        </tr>
       

        
         <tr>
             <th><font color="cyan">Answer These Questions:</font></th>
        <div class="container">
            </table>
        <table>
	<h2>ARE YOU A CAT PERSON OR A DOG PERSON?</h2>
	
  <ul>
  <li>
      <input type="radio" id="f-option" name="q1" value="cat" required>
    <label for="f-option">Cat</label>
    
    <div class="check"></div>
  </li>
  
  <li>
    <input type="radio" id="s-option" name="q1" value="dog" required>
    <label for="s-option">Dog</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <h2> ARE YOU TEA OR A COFFEE PERSON?</h2>
 
   <li>
    <input type="radio" id="t-option" name="q10" value="tea" required>
    <label for="t-option">Tea</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q10" value="cofee" required>
    <label for="t-option">Coffee</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <h2>HAVE YOU GOT A SWEET TOOTH OR A SOUR TONGUE?</h2>
 
   <li>
    <input type="radio" id="t-option" name="q2" value="sweet" required>
    <label for="t-option">SWEET</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q2" value="sour" required>
    <label for="t-option">SOUR</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <h2>DO YOU LIKE TO READ?</h2>
 
   <li>
    <input type="radio" id="t-option" name="q5" value="yes" required>
    <label for="t-option">YES</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q5" value="no" required>
    <label for="t-option">NO</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <h2>FICTION OR FACT IN YOUR NOVELS/BOOKS?</h2>
 
   <li>
    <input type="radio" id="t-option" name="q3" value="fictim" required>
    <label for="t-option">FICTION</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q3" value="facts" required>
    <label for="t-option">FACTS</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q3" value="biography" required>
    <label for="t-option">BIOGRAPHY</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q3" value="history" required>
    <label for="t-option">HISTORY</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <h2>DO YOU A DAY OR NIGHT PERSON?</h2>
 
   <li>
    <input type="radio" id="t-option" name="q4" value="day" required>
    <label for="t-option">DAY</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q4" value="night" required>
    <label for="t-option">NIGHT</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <h2>MOST IMPORTANT THING IN A RELATIONSHIP:</h2>
 
   <li>
    <input type="radio" id="t-option" name="q6" value="yes" required>
    <label for="t-option">TRUST</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q6" value="no" required>
    <label for="t-option">INTIMACY</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q6" value="C" required>
    <label for="t-option">ATTRACTION AND ENERGY</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q6" value="D" required>
    <label for="t-option">FINANCIAL STABILITY AND LUXURY</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q6" value="E" required>
    <label for="t-option">GIVING TIME AND SPACE EQUALLY</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <h2>WHAT KIND OF PERSON ARE YOU?</h2>
 
   <li>
    <input type="radio" id="t-option" name="q7" value="day" required>
    <label for="t-option">OUTDOORSY AND ADVENTUROUS</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q7" value="night" required>
    <label for="t-option">HOMELY AND FAMILY ORIENTED</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q7" value="both" required>
    <label for="t-option">LITTLE BIT OF BOTH.</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q7" value="X" required>
    <label for="t-option">WORK HARD PLAY HARD.</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <h2>FAVOURITE  MOVIE GENRES:</h2>
 
   <li>
    <input type="radio" id="t-option" name="q8" value="day" required>
    <label for="t-option">ACTION/WAR/THRILLER</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q8" value="ROMANCE" required>
    <label for="t-option">ROMANCE</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q8" value="both" required>
    <label for="t-option">HORROR</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q8" value="X" required>
    <label for="t-option">BIOGRAPHY/DRAMA</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <h2>FAVOURITE MUSIC GENRES:</h2>
 
   <li>
    <input type="radio" id="t-option" name="q9" value="day" required>
    <label for="t-option">POP/ROCK</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
   <li>
    <input type="radio" id="t-option" name="q9" value="ROMANCE" required>
    <label for="t-option">EDM</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q9" value="both" required>
    <label for="t-option">JAZZ/CLASSICAL</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  <li>
    <input type="radio" id="t-option" name="q9" value="both" required>
    <label for="t-option">RAP</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
</ul>
</div>

<div class="signature">
	
</div>    
       
    </table>
        <pre>
              <input type="submit" value="Submit">  <input type="reset" value="Reset" required>
        </pre>
   
</form>
        <h3><font color="green">${requestScope.msg}</font></h3>
</center>
</body>