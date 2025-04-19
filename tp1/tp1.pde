PImage miFoto;

size (800, 400) ;
background (255,255,255) ;

//imagen 

miFoto = loadImage ("Fotomia.jpg");

image (miFoto, 0, 0, 400, 400);

//formas

//line (600,600, 600,200) ;

fill (60, 37, 27) ; //---------------------------------------------------------------color pelo

ellipse (600,200, 300,350) ;        //pelo

fill (255, 255, 255) ; //--------- ondas de pelo

noStroke();

arc(440,200, 80, 100, radians (180),radians (540));

arc(760,200, 80, 100, radians (180),radians (540));

fill (215, 180, 140) ; //------------------------------------------------------------color piel

//line (590,400, 590,100) ;        //cuello

//line (615,400, 615,100) ;        //cuello

//ellipse (640,650, 400,450) ;

rect (590,240, 30,50) ;          //cuello

ellipse (600,150, 200,200) ;     //cabeza

fill (60, 37, 27) ; //---------------------------------------------------------------color pelo

//ellipse (550,90, 100,90) ;      //flequillo

arc(665,70, 130, 130, radians (395),radians (565));      //flequillo der

arc(540,70, 130, 130, radians (325),radians (510));      //flequillo der

noStroke();

rect (575,32, 50,60) ;

fill (0, 0, 0) ; //-----------------------------------------------------------------color ojos

ellipse (640,150, 50,50) ;       // ojo izq

ellipse (560,150, 50,50) ;       //ojo der

triangle (675,120, 645,175, 615,150) ; //delineado izq

triangle (527,120, 575,140, 537,150) ; //delineado der

fill (255, 255, 255) ;//---------------------------------------------------------color brillo

ellipse (570,140, 20,20) ;       //brillo der

ellipse (650,140, 20,20) ;       //brillo izq

fill (0, 0, 0) ; //---------------------------------------------------------------color ropa

rect (540,280, 120,300) ;        //cuerpo

rect (500,295, 50,300) ;         //brazo der

rect (650,295, 50,300) ;        //brazo izq

//arc (650,300, 250,203, PI*4, PI*5/4) ;       //intento de boca 

//noFill ( );

strokeWeight( 4 );

arc(597,200, 50, 50, radians (360),radians (540));    //boca
