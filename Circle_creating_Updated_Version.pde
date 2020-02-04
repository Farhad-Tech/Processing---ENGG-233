//Lab 1
//Computing for Engineers - I - ENGG 233
//Instructor name: Dr. Moshirpour
//Student name: Farhad Alishov
//Lab Exercise D – A Simple Processing Program that Interacts with the User
//Date submitted: September 20, 2017

size (600, 600);
background(0,0,139); //Setting Background up
import javax.swing.JOptionPane;
String userInput_1, userInput_2, userInput_3;
userInput_1 = JOptionPane.showInputDialog("Enter value of x coordinate: ");
int x = Integer.parseInt(userInput_1);
userInput_2 = JOptionPane.showInputDialog("Enter value of y coordinate: ");
int y = Integer.parseInt(userInput_2);
userInput_3 = JOptionPane.showInputDialog("Enter value of circle's radius: ");
int r = Integer.parseInt(userInput_3);
double a = PI*sq(r);
println("Your circle is ready.","Radius = "+r+" and", "Area = "+a); //Printing the result

fill(255); //Drawing circle and line
ellipse(x, y, 2*r, 2*r);
float z = y - r;
line(x,y,x,z);

textSize(10); //Text for the pictured circle
fill(0);
text("Radius = "+r, x+5, y-r/2);
text("Area = "+a, x+5, y+10);