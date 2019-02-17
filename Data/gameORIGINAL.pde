width=800;
height=600;
var About = false;
 var Options= false;
 var score = 0;
 var xaff1=50;
var board = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
var color ='rgba(255,255,200)';
var counter = 180;
var difficulty=0;
var error=3;
var ex =0;
var Exit=false;
var k;
var kab=0;
var lgh=-50;
var lgw=-10;
var lgx=1000;
var m = 10;
var m =cos(millis()*0.0005);

// loading BackgroundMusic
var myAudio = document.getElementById("myAudio");
var myAudio1 = document.getElementById("myAudio1");
var posbuttonx=0;
var posbuttony=0;
var right=false;
var s = 3;
var scene=1;
/*// scene list :
1=main
2=option
3=help
4=quit
11=choose level
111=easy
112=medium
113=hard
100=pause

*/
var sec=0;
var minute=1;
var second=0;
var sound = "s"+k;
var sx =600;
var sy =40;
var table = [0,1,0,1,2,4,3,4,0,1,0,1,2,4,3,4,0,1,0,1,2,4,3,4,0,1,0,1,2,4,3,4,0,1,0,1,2,4,3,4,0,1,0,1,2,4,3,4,0,1,0,1,2,4,3,4,0,1,0,1,2,1,0,1,2,4,3,4,0,1,0,1,2,4,3,4,0,1,0,1,0,1,2,3,4,4,3,2,1,2,3,0,1,2,3,4,3,2,1,0,1,2,3,4];
var Ti=0;
var time="";
var turnon=0;
var txth=5;
var txtw=-10;
var txty=1000;
var v =200+vl;
var vit =7;
var vl=0;
var w =cos(millis()*0.005);
var x = 100;
var y= 100;
var yaff1 =190;
//change the center of the image
imageMode(CENTER);


//declaring images :
  ////--Sprites

PImage win = loadImage("Images/Sprites/win.png");
PImage throughScreen = loadImage("Images/Sprites/throughScreen.png");
PImage Thief_with_metalCase = loadImage("Images/Sprites/Thief_with_metalCase.png");
PImage thief_stealing = loadImage("Images/Sprites/thief_stealing.png");
PImage thief_Idle = loadImage("Images/Sprites/thief_Idle.png");
PImage sunper = loadImage("Images/Texts/super.png");
PImage star = loadImage("Images/Sprites/star.png");
PImage Money9 = loadImage("Images/Sprites/Money9.png");
PImage Money8 = loadImage("Images/Sprites/Money8.png");
PImage Money7 = loadImage("Images/Sprites/Money7.png");
PImage Money6 = loadImage("Images/Sprites/Money6.png");
PImage Money5 = loadImage("Images/Sprites/Money5.png");
PImage Money4 = loadImage("Images/Sprites/Money4.png");
PImage Money3 = loadImage("Images/Sprites/Money3.png");
PImage Money2 = loadImage("Images/Sprites/Money2.png");
PImage Money11 = loadImage("Images/Sprites/Money11.png");
PImage Money10 = loadImage("Images/Sprites/Money10.png");
PImage Money = loadImage("Images/Sprites/Money.png");
PImage metalCase_open4 = loadImage("Images/Sprites/metalCase_open4.png");
PImage metalCase_open3 = loadImage("Images/Sprites/metalCase_open3.png");
PImage metalCase_open2 = loadImage("Images/Sprites/metalCase_open2.png");
PImage metalCase_open = loadImage("Images/Sprites/metalCase_open.png");
PImage metalCase_full2 = loadImage("Images/Sprites/metalCase_full2.png");
PImage metalCase_full = loadImage("Images/Sprites/metalCase_full.png");
PImage metalCase_Close = loadImage("Images/Sprites/metalCase_Close.png");
    ////--Buttons
PImage Menu = loadImage("Images/Buttons/Back.png");
PImage Medium = loadImage("Images/Buttons/Medium.png");
PImage logo = loadImage("Images/Sprites/logo.png");
PImage Hard = loadImage("Images/Buttons/Hard.png");
PImage funnythief = loadImage("Images/Sprites/funnythief.png");
PImage Easy = loadImage("Images/Buttons/Easy.png");
PImage cursor = loadImage("Images/Sprites/cursor.png");
PImage caught = loadImage("Images/Sprites/caught.png");
PImage bQuit = loadImage("Images/Buttons/Quit.png");
PImage bPlay = loadImage("Images/Buttons/Play.png");
PImage bOptions = loadImage("Images/Buttons/Options.png");
PImage bMain_button = loadImage("Images/Buttons/Main_button.png");
PImage bHelp = loadImage("Images/Buttons/Help.png");
PImage bEmpty = loadImage("Images/Buttons/empty.png");
    ////--Sources
PImage bank = loadImage("Images/Sources/bank.png");
    ////--Backgrounds
PImage backgroundMain = loadImage("Images/Backgrounds/backgroundwiththief.png");
PImage background2 = loadImage("Images/Backgrounds/background4.png");
PImage background1 = loadImage("Images/Backgrounds/background1.png");
PImage background0 = loadImage("Images/backgrounds/background3.jpg");
    ////-- loading fonts
PFont Vivaldi = loadFont("Vivaldi Italic");

//

textFont(Vivaldi,50);
text("you can just click the screen",200,400);

myAudio.play();


// fonction that create menuButtons
var drawbuttons = function(xaff,yaff,type) 
{
  //begin of type one menu
if (type==1){
if (mouseX>76+xaff && mouseX <306+xaff && mouseY>103+yaff && mouseY<149+yaff){
image(bMain_button,150+xaff,100+yaff,651/3,153/3);
if (mousePressed){scene=11;chooselvl=true;}}
else image(bMain_button,150+xaff,100+yaff,700/3,180/3);

if (mouseX>76+xaff && mouseX <306+xaff && mouseY>175+yaff && mouseY<225+yaff){
  if (mousePressed){scene=12;option=true;}
image(bOptions,150+xaff,190+yaff,400/3,100/3);}
else  image(bOptions,150+xaff,190+yaff,500/3,130/3);
//if (mouseX>76+xaff && mouseX <306+xaff && mouseY>175+yaff && mouseY<225+yaff)



if (mouseX>76+xaff && mouseX <306+xaff && mouseY>260+yaff && mouseY<310+yaff){
  if (mousePressed){scene=13;help=true;}
image(bHelp,150+xaff,275+yaff,400/3,100/3);}
else image(bHelp,150+xaff,275+yaff,500/3,130/3);
//if (mouseX>76+xaff && mouseX <306+xaff && mouseY>260+yaff && mouseY<310+yaff)



if (mouseX>76+xaff && mouseX <306+xaff && mouseY>330+yaff && mouseY<385+yaff){
  if (mousePressed){scene=14;quit=true;}

image(bQuit,150+xaff,350+yaff,400/3,100/3);}
else

image(bQuit,150+xaff,350+yaff,500/3,130/3);


/*

image(logo,width/2,130,857/3*w,443/3*m);
image(logo,width/2,130,857/3+w*15,443/3+w*15);
image(logo,width/2,txty,857/3,443/3);


image(Menu,150+xaff,350+yaff,651/3,153/3);
image(Menu,150+xaff,350+yaff,700/3,180/3);
*/



}
//end of type 1 menu
//begin of type 2 menu
if(type==2){
  if (mouseX>76+xaff && mouseX <306+xaff && mouseY>103+yaff && mouseY<149+yaff){
    if (mousePressed){start =true;difficulty=1; scene=111;}
image(Easy,150+xaff,100+yaff,651/3,153/3);
}
else image(Easy,150+xaff,100+yaff,700/3,180/3);

if (mouseX>76+xaff && mouseX <306+xaff && mouseY>175+yaff && mouseY<225+yaff)
{
if (mousePressed){start =true; difficulty=1; scene=112;}
image(Medium,150+xaff,100+yaff,651/3,153/3);
}else  image(Medium,150+xaff,100+yaff,700/3,180/3);
if (mouseX>76+xaff && mouseX <306+xaff && mouseY>260+yaff && mouseY<310+yaff)
{
  image(Hard,150+xaff,190+yaff,651/3,153/3);
if (mousePressed){start =true; difficulty=3; scene=113;}
//if (mouseX>76+xaff && mouseX <306+xaff && mouseY>330+yaff && mouseY<385+yaff)
}else image(Hard,150+xaff,190+yaff,700/3,180/3);
if (mouseX>76+xaff && mouseX <306+xaff && mouseY>330+yaff && mouseY<385+yaff)
{
  image(Back,150+xaff,275+yaff,651/3,153/3);
  if (mousePressed){scene=1;chooselvl=false;}}
}else image(Back,150+xaff,275+yaff,700/3,180/3);

}
  //end of type 2 menu
}


var Item = function(weight,value,Name)
{
  var weight=weight;
  var value=value;
}


draw = function() {

  
if(scene ==1){image(background0,width/2,height/2,800,600);
drawbuttons(xaff1,yaff1,1);}
if(scene ==11){image(background1,width/2,height/2,800,600);drawbuttons(250,150,2);}
if(scene ==12){}
if(scene ==13){image(background2,width/2,height/2,800,600);}
if(scene ==14){image(background0,width/2,height/2,800,600);}
if(scene ==111){image(background0,width/2,height/2,800,600);}
if(scene ==112){image(background0,width/2,height/2,800,600);}
if(scene ==113){image(background0,width/2,height/2,800,600);}
if(scene ==100){image(background0,width/2,height/2,800,600);}

//drawbuttons(250,150,2);
//console.log(scene);
}

void keyPressed(){console.log(key); 
  if(key==100){ scene=scene+1;};}



/*



drawbuttons(250,150,2);





*/










//mouseClicked=function () {if(scene<2){scene++;};if (scene ==5){scene=2;Options = false;}if (scene ==4){scene=2;About = false;}if (scene==2){}
