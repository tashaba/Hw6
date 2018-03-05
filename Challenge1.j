//added slider
//*had issue trying to fit the slider into background and not overlay the other code. 

var freq = [174,196,220,246];

var playing = false
var playingA = false;
var playingS = false;
var playingD = false;
var playingF = false;

var pressedA = false;
var pressedS = false;
var pressedD = false;
var pressedF = false;



function setup(){
	createCanvas (600,400);
	background (255);
  textAlign(CENTER);
	


var spot = {
x:100,
y:50,
}

var col = {
  r:255,
  g:0,
  b:0 
};




 
  oscA = new p5.Oscillator();
  oscA.setType('triangle');
  oscA.freq(freq[0]);
  oscA.amp(0);
  oscA.start();
  
  oscS = new p5.Oscillator();
  oscS.setType('triangle');
  oscS.freq(freq[1]);
  oscS.amp(0);
  oscS.start();
  
  oscD = new p5.Oscillator();
  oscD.setType('triangle');
  oscD.freq(freq[2]);
  oscD.amp(0);
  oscD.start();
  
  oscF = new p5.Oscillator();
  oscF.setType('triangle');
  oscF.freq(freq[3]);
  oscF.amp(0);
  oscF.start();
	
		slider = createSlider(0, 100, 50);
  slider.position(125, 10);
  slider.style('width', '350px');
}

function draw() {  
textAlign(CENTER);
  textFont('Georgia',[25])
text('Click Here to Make Art & Music!', width / 2,60);
noStroke();
rect(140,80,140,130);
noStroke();
rect(140,220,140,130);
noStroke();
rect(310,80,140,130);
noStroke();
rect(310,220,140,130);
noStroke();

strokeWeight(2);
  stroke(255, 204, 0);
stroke(55);
noFill();
rect(20, 20, 550, 360);  
    
   
  if (playingA) {
    noStroke();
    spot.x= random(0,width);
    spot.y= random(0,height);
    col.r= random(100,255);
    col.g= random(20,111)
    col.b= random(100,190)
    fill(col.r, col.g, col.b,100);
   ellipse(spot.x,spot.y, 55, 55);
  }
 if (playingS) {
   noStroke();
  spot.x= random(0, width);
    spot.y= random(0,height);
    col.r= random(0);
    col.g= random(10,111)
    col.b= random(100,130)
    fill(col.r, col.g, col.b,100);
   ellipse(spot.x,spot.y, 55, 55);
  }  
  
  
  
 if (playingD) {
   noStroke();
   spot.x= random(0, width);
    spot.y= random(0,height);
    col.r= random(0);
    col.g= random(26,222,287)
    col.b= random(0)
    fill(col.r, col.g, col.b,100);
   ellipse(spot.x,spot.y, 55, 55);
  }  
  
  
   if (playingF) {
     noStroke();
    spot.x= random(0, width);
    spot.y= random(0,height);
    col.r= random(280);
    col.g= random(100)
    col.b= random(50)
    fill(col.r, col.g, col.b,100);
   ellipse(spot.x,spot.y, 55, 55);
     
  }
  
}

function keyPressed() {
  print("got key press for ", key);
  var osc;
  if (key == 'A') {
    osc = oscA;
  playingA= true 
  } else if (key == 'S') {
    osc = oscS;
      playingS= true
  } else if (key == 'D') {
    osc = oscD;
      playingD= true
  } else if (key == 'F') {
    osc = oscF;
      playingF= true
  }
  if (osc) {
    osc.amp(0.5, 0.1);
    playing = true;
  }
}

function keyReleased() {
  print("got key release for ", key);
  var osc;
  if (key == 'A') {
    osc = oscA;
  } else if (key == 'S') {
    osc = oscS;
  } else if (key == 'D') {
    osc = oscD;
  } else if (key == 'F') {
    osc = oscF;

  }
  if (osc) {
    osc.amp(0, 0.5);
    playingA = false;
        playingS = false;
        playingD = false;
        playingF = false;
        
  }

	
	if (osc) {
    osc.amp(0.5, 0.1);
    playing = true;
	}
	if (osc) {
  osc.amp(slider.value()/1000, slider.value()/1000);
  playing = true;
  }
	if (osc) {
    osc.amp(0, 0.5);
	  playing = false;
    playingA = false;
    playingS = false;
   	playingD = false; 
    playingF = false;
    pressedA = false;
    pressedS = false;
    pressedD = false;
    pressedF = false;
}}
