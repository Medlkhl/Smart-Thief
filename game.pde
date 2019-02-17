width=800;
height=600;
var About = false;
 var Options= false;
 var score = 0;
 var xaff1=50;
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
5=win
6=lose
*/
var Num_Item=0;
var Sack_weight=0;
var minute=1;
var second=0;
var sound = "s"+k;
var sx =600;
var sy =40;
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
PImage Money9 = loadImage("Images/Sprites/money9.png");
PImage Money8 = loadImage("Images/Sprites/money8.png");
PImage Money7 = loadImage("Images/Sprites/money7.png");
PImage Money6 = loadImage("Images/Sprites/money6.png");
PImage Money5 = loadImage("Images/Sprites/money5.png");
PImage Money4 = loadImage("Images/Sprites/money4.png");
PImage Money3 = loadImage("Images/Sprites/money3.png");
PImage Money2 = loadImage("Images/Sprites/Money2.png");
PImage Money11 = loadImage("Images/Sprites/money11.png");
PImage Money10 = loadImage("Images/Sprites/money10.png");
PImage Money1 = loadImage("Images/Sprites/Money.png");
PImage Sack = loadImage("Images/Sprites/sack.png");
PImage metalCase_open4 = loadImage("Images/Sprites/metalCase_open4.png");
PImage metalCase_open3 = loadImage("Images/Sprites/metalCase_open3.png");
PImage metalCase_open2 = loadImage("Images/Sprites/metalCase_open2.png");
PImage metalCase_open = loadImage("Images/Sprites/metalCase_open.png");
PImage metalCase_full2 = loadImage("Images/Sprites/metalCase_full2.png");
PImage metalCase_full = loadImage("Images/Sprites/metalCase_full.png");
PImage metalCase_Close = loadImage("Images/Sprites/metalCase_Close.png");
PImage thief = loadImage("Images/Sprites/thief.png");

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
PFont Arial = loadFont("Arial");
//
var table_weight=[1,2,3,5,8,4,7,6,9];
var table_value=[50,32,120,300,200,100,150,250,400];
var choosen_Items=[0,0,0,0,0,0,0,0,0];
void setvalues(){
for(int u=0;u<Num_Item;u++){

table_value[u]=(int)random(10);
table_weight[u]=(int)random(5);
console.log(table_value[u]);
console.log(table_weight[u]);
var right_Items=[0,0,0,0,0,0,0,0,0];
}}
var n=9;
void Sollution(){

  var  V =new Array(10)(Sack_weight+1);
        var keep =new Array(10)(Sack_weight+1);
        
        
        
        for(int i=0;i<=9;i++){
            for (int j = 0; j <=Sack_weight; j++) {
                if(i==0 || j==0) {
                    V[i][j]=0;
                    keep[i][j]=0;
                    
                }
                else if (sem_count[i-1]<j){
                    if (V[i-1][j]<table_value[i-1]+ V[i-1][j-table_weight[i-1]]){
                        keep[i][j]=1;
                        V[i][j]=val[i-1]+V[i-1][j-table_weight[i-1]];
                    }
                    else {
                        keep[i][j]=0;
                        V[i][j]=V[i-1][j];
                    }
                }
                else{
                    V[i][j]=V[i-1][j];
                    keep[i][j]=0;
                }
            }
        }
       
       
        System.out.println("the maximum benefi can be"+ V[n][w]);
        System.out.println("the maximum benefit can be achieved by choosing ");
        while(n!=0){
            if (keep[n][w]==1){
                System.out.println("Coin no."+n+"Of value"+table_value[n-1]);
                n=n-1;
                w=w-table_weight[n];
            }
            else{n=n-1;}
        }
}

textFont(Vivaldi,50);
text("you can just click the screen",200,400);

myAudio.play();


// fonction that create menuButtons
var drawbuttons = function(xaff,yaff,type) 
{
  //begin of type one menu
if (type==1){
if (mouseX>76+xaff && mouseX <306+xaff && mouseY>73+yaff && mouseY<119+yaff){
image(bMain_button,150+xaff,100+yaff,651/3,153/3);
if (mousePressed){scene=11;chooselvl=true;}}
else image(bMain_button,150+xaff,100+yaff,700/3,180/3);

if (mouseX>76+xaff && mouseX <306+xaff && mouseY>145+yaff && mouseY<195+yaff){
  if (mousePressed){scene=12;option=true;}
image(bOptions,150+xaff,190+yaff,400/3,100/3);}
else  image(bOptions,150+xaff,190+yaff,500/3,130/3);
//if (mouseX>76+xaff && mouseX <306+xaff && mouseY>175+yaff && mouseY<225+yaff)



if (mouseX>76+xaff && mouseX <306+xaff && mouseY>230+yaff && mouseY<280+yaff){
  if (mousePressed){scene=13;help=true;}
image(bHelp,150+xaff,275+yaff,400/3,100/3);}
else image(bHelp,150+xaff,275+yaff,500/3,130/3);
//if (mouseX>76+xaff && mouseX <306+xaff && mouseY>260+yaff && mouseY<310+yaff)



if (mouseX>76+xaff && mouseX <306+xaff && mouseY>300+yaff && mouseY<355+yaff){
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

if (mouseX>76+xaff && mouseX <306+xaff && mouseY>73+yaff && mouseY<119+yaff)
{
if (mousePressed){start =true;difficulty=1; scene=111; setTimeout(setvalues(),1);}
image(Easy,150+xaff,100+yaff,651/3,153/3);
}else  image(Easy,150+xaff,100+yaff,700/3,180/3);
if (mouseX>76+xaff && mouseX <306+xaff && mouseY>145+yaff && mouseY<195+yaff)
{
  image(Medium,150+xaff,190+yaff,651/3,153/3);
if (mousePressed){start =true; difficulty=2; scene=112}
//if (mouseX>76+xaff && mouseX <306+xaff && mouseY>330+yaff && mouseY<385+yaff)
}else image(Medium,150+xaff,190+yaff,700/3,180/3);
if (mouseX>76+xaff && mouseX <306+xaff && mouseY>230+yaff && mouseY<280+yaff)
{
  image(Hard,150+xaff,275+yaff,651/3,153/3);
  if (mousePressed){start =true; difficulty =3; scene=113}
}else image(Hard,150+xaff,275+yaff,700/3,180/3);
if (mouseX>76+xaff && mouseX <306+xaff && mouseY>300+yaff && mouseY<355+yaff)
{
image(Menu,150+xaff,350+yaff,651/3,153/3);
if (mousePressed){chooselvl=false;menu=true;scene=1;}
}else
image(Menu,150+xaff,350+yaff,700/3,180/3);
}
  //end of type 2 menu
  if(type==3){

if (mouseX>76+xaff && mouseX <306+xaff && mouseY>73+yaff && mouseY<119+yaff)
{
if (mousePressed){start =false;pause=true; scene=1; }
image(Menu,150+xaff,100+yaff,651/3,153/3);
}else  image(Menu,150+xaff,100+yaff,700/3,180/3);
if (mouseX>76+xaff && mouseX <306+xaff && mouseY>145+yaff && mouseY<195+yaff)
{
  image(bEmpty,150+xaff,190+yaff,651/3,153/3);
if (mousePressed){choosen_Items=[0,0,0,0,0,0,0,0,0];}
//if (mouseX>76+xaff && mouseX <306+xaff && mouseY>330+yaff && mouseY<385+yaff)
}else image(bEmpty,150+xaff,190+yaff,700/3,180/3);

}
}


var Item = function(Name,i,j)
{
  
  image(Name,i,j,50,50);
  textSize(5);
  
}
var k=0;
//table Items
PImage Items =[Money1,Money2,Money3,Money4,Money5,Money11,Money7,Money8,Money9,Money10];



void Drawscore(posx,posy)
{
for (var i = 0; i < choosen_Items.length; i++) {
	text(" "+table_value[i],posx+i*20,posy);
}
}

void DrawItem(posx,posy){ 
for(int h=0;h<3;h++){
  for(int u=0;u<3;u++){
    textSize(10);
   textFont(Arial);
   if((mousePressed&&mouseX<u*90+posx+35&&mouseX>u*90+posx-35&&mouseY>h*100+posy-35&&mouseY<h*100+posy+35)||choosen_Items[u+h*3]==1){
     choosen_Items[u+h*3]=1;
    image(Items[u+h*3],u*90+posx,h*100+posy,20,20);
text("W:"+table_weight[u+h*3]+" V:"+table_value[u+h*3],u*90+posx-20,h*100+posy+50);
  }
  else if (mouseX<u*90+posx+35&&mouseX>u*90+posx-35&&mouseY>h*100+posy-35&&mouseY<h*100+posy+35){
    image(Items[u+h*3],u*90+posx,h*100+posy,65,65);}else{
    
    image(Items[u+h*3],u*90+posx,h*100+posy,75,75);
    
  }
  text("W:"+table_weight[u+h*3]+" V:"+table_value[u+h*3],u*90+posx-20,h*100+posy+50);
}


}}

draw = function() {

  console.log();
if(scene ==1){image(background0,width/2,height/2,800,600);
  image(logo,width/2,130,857/3,443/3);
  image(thief,730,430,270,400);
drawbuttons(200,400,1);}
if(scene ==11){image(background1,width/2,height/2,800,600);drawbuttons(200,400,2);
image(logo,width/2,130,857/3,443/3);
}
if(scene ==12){}
if(scene ==13){image(background2,width/2,height/2,800,600);}
if(scene ==14){image(background0,width/2,height/2,800,600);}
//main game
if(scene ==111)
  {
    image(background1,width/2,height/2,800,600);
    image(metalCase_open4,600,400,400,400);
    image(Sack,200,400,300,300);
    Drawscore(500,100)
    DrawItem(510,280);
    drawbuttons(500,-30,3);


  }
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
