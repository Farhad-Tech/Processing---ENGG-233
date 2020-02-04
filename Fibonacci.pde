import javax.swing.JOptionPane;
String input;
input = JOptionPane.showInputDialog("Enter the value: ");
int x = Integer.parseInt(input);

while (x<3)
{
  input = JOptionPane.showInputDialog("Enter the value: ");
  x = Integer.parseInt(input);
}

int n1=0, n2=1, n3=0;    
print(n2);                                // prints the first 1
for (int i = 0; n3<x; print(" "+n3))      // loop starts from 2 because 0 and 1 are already printed    
{    
  n3=n1+n2;
  n1=n2; 
  n2=n3; 

  if (n3>x) {                             //prevents from adding additional number
    break;
  }
}