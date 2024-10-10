void setup()
  {
     size(500,500);
      noLoop();
  }
  void draw()
  {
      //your code here
      int diceSum = 0;
      background(255);
      for (int column = 10; column <= 400; column += 70){
        for (int row = 10; row <= 500; row += 70){
          fill(255);
        Die bob = new Die(row, column);
        bob.show();
        diceSum = diceSum + bob.diceNumber;
        System.out.println(diceSum);
       
        }
      }
      fill(0);
       textSize(30);
        text("Total Dice Sum = " + diceSum, 10, 450);
  }
  
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, diceNumber;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
          diceNumber = (int)(Math.random()*6)+1;
      }
      void roll()
      {
          //your code here
          redraw();
      }
      void show()
      {
          //your code here
          
           rect (myX, myY, 50,50);

          if (diceNumber == 1)
            ellipse(myX+25,myY+25, 10,10);
          else if (diceNumber == 2){
            ellipse(myX+15, myY+15,10,10);
            ellipse(myX+35, myY+35, 10,10);
          }
          else if (diceNumber ==3){
           ellipse (myX+25, myY+25, 10,10);
            ellipse(myX+10, myY+10,10,10);
            ellipse(myX+40, myY+40, 10,10);
          }
            else if (diceNumber ==4){
            ellipse (myX+15, myY+35, 10,10);
            ellipse(myX+15, myY +15,10,10);
            ellipse(myX +35 , myY+15, 10,10);
            ellipse (myX+35, myY+35, 10,10);
            }
            else if (diceNumber ==5){
            ellipse (myX+25, myY+25, 10,10);
            ellipse (myX+15, myY+35, 10,10);
            ellipse(myX+15, myY +15,10,10);
            ellipse(myX +35 , myY+15, 10,10);
            ellipse (myX+35, myY+35, 10,10);
            }
            else if (diceNumber == 6){
            ellipse (myX+15, myY+10, 10,10);
            ellipse (myX+15, myY+25, 10,10);
            ellipse(myX+15, myY +40,10,10);
            ellipse(myX +35 , myY+10, 10,10);
            ellipse (myX+35, myY+25, 10,10);
            ellipse (myX+35, myY+40, 10,10);
            }
           
      }
  }
