/* Program Notes
- Finish Nightmode: medium and difficult
*/
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float sakuraXrect, sakuraYrect,  sakuraWidthRect,  sakuraHeightRect,  sakuraWidth,  sakuraHeight;
float branchXrect, branchYrect, branchWidthRect, branchHeightRect, branchWidth, branchHeight;
PImage picBackground, branchForeground, sakuraPortrait;
//
void setup() {
  fullScreen(); //displayWidth, displayHeight
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  // DIV rect() Variable Population
  //Origonal Aspect Ratios of Images to Change
  //Compare the side Lengths to see which is bigger
  //"Compress" the biggest side into the rect()
  //Multiple the Image's Aspect Ratio to the smaller side
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  sakuraXrect = appWidth*1/14;
  sakuraYrect = appHeight*1/8;
  sakuraWidthRect = appWidth*2.25/7; // 2/4
  sakuraHeightRect = appHeight*1/4; // 2/8
  branchXrect = sakuraXrect;
  branchYrect = appHeight*5/8; 
  branchWidthRect = sakuraWidth;
  branchHeightRect = sakuraHeight;
  //Aspect Ratio Change
  sakuraWidth = 1200.0;
  sakuraHeight = 673.0;
  branchWidth = 1200.0;
  branchHeight = 675.0;
  float aspectRatio = 0.0; //Local Variables
   if ( sakuraWidth >=sakuraHeight ) { // treemoon Image if Landscape
   //Comparison Verification
   println("TREEMOON is Landscsape");
   aspectRatio =  sakuraHeight * sakuraWidth; // smaller/larger=0 if int
   //memory of smaller side
   sakuraWidth = sakuraWidthRect;
   sakuraHeight = aspectRatio * sakuraWidth;
   if ( sakuraHeight > sakuraHeightRect ) { //ERROR Catch is treemoonHeight > treemoonHeightRect
      println("ERROR: Aspect Calculation Too Big");
     }
   } else { //ANIME Image if Potrait
   //Comparison Verification
   println("ANIME is Potrait");
   //Repeat Aspect Ratio
   //Comparison Verification
   aspectRatio =   sakuraHeight / sakuraWidth; {// smaller/larger=0 if int
   //memory of smaller side
    sakuraHeight =  sakuraWidthRect;
    sakuraHeight = aspectRatio * sakuraWidth;
   //if () {} //ERROR Catch is bikeHeight > bikeHeightRect 
  } //End IF
  if ( branchWidth >= branchHeight ) { //GUN Image if Landscape
  //Comparison Verification
  println("BRANCH is Landscape");
  //Repeat Aspect Ratio
  } else { //GUN Image if Potrait
  //Comparison Verification
  println("GUN is Portrait");
    //Repeat Aspect Ratio
    aspectRatio = branchWidth / branchHeight; // smaller/larger=0 if int,
    //memory of smaller side
    branchHeight = branchHeightRect;
    branchHeight = aspectRatio * branchWidth;
    if ( branchWidth >branchWidthRect ) {} //ERROR Catch is gunHeightRect . gunHeight
    println("ERROR: Aspect Calculation Too Big");
  }
  } //End if
  //Error Check of Smaller Dimension
  //
  //Concatenation of Pathways
  String up = "..";
  String open = "/";
  String imagesPath = up + open + up + open +up + open + up + open;
  String landScapeImage = "imagesUsed/Landscape & Square Images/";
  String potraitImage = "imageUsed/Potrait/";
  String treemoonImage = "360_F_577301499_XlsPMsWkE4r0FIfCNfxSNR4it8CgoD1K.jpg";
  String branchImage = "branch-with-beautiful-sakura-flowers-falling-petals-realistic-composition-illustration_1284-31302.jpg"; 
  String sakuraImage = "istockphoto-1137578281-612x612.jpg";    
  picBackground = loadImage( imagesPath + landScapeImage + treemoonImage ); //Concatenation
  branchForeground = loadImage( imagesPath + landScapeImage + branchImage );
  sakuraPortrait = loadImage( imagesPath + potraitImage + sakuraImage );
  //
  //DIVs
  //rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //rect( animeX, animeY, animeWidth, animeHeight ); //anime image
  //rect( gunX, gunY, gunWidth, gunHeight ); //Gun Image
  //
} //End setup
//
void draw() {
  //background(255); //builti in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  rect( branchXrect, branchYrect, branchWidthRect, branchHeightRect );
  image( branchForeground, branchXrect, branchYrect, branchWidth, branchHeight );
  //
  rect( sakuraXrect, sakuraYrect, sakuraWidthRect, sakuraHeightRect );
  image( sakuraPortrait, sakuraXrect, sakuraYrect, sakuraWidth, sakuraHeight);
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
