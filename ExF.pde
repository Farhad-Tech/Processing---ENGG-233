
/* For the following function, you can assume that matrix1 and matrix2 are both of the same size. 
 * Meaning that they have same number of rows, and same number of columns. 
 */
float [][] add (float[][] matrix1, float[][] matrix2) {
  // students are supposed to complete the implementation of this function and change its return values
  int rows = matrix1.length;
  int cols = matrix1[0].length;
    float sum[][] = new float[rows][cols];

  for ( int i = 0 ; i < rows ; i++ ) {
         for ( int j = 0 ; j < cols ; j++ ){
            print(sum[rows][cols]);
 
         println();
      }
   }
  
  float[][] result = sum;
  return result;
}

float [][] transpose (float[][] matrix)
{
  // students are supposed to complete the implementation of this function and change its return values
  float[][] result ={{0.0,0.0},{0.0,0.0}};
  return result;
}

float [] sum_of_columns(float [][] matrix) {
   // students are supposed to complete the implementation of this function and change its return values
  float[]result = {0,0,0,0};
  return result;
}


void setup() {
  float [][] matrix_one = {{6.0, 9.0, 5.0}, {4.0, 0, 1.0}, {3.0, 2.0, 4.0}};
  float [][] matrix_two = {{1.0, 2.0, 3.0}, {0.0, 1.0, 2.0}, {4.0, 2.0, 1.0}};
  float[][] matrix_three = add(matrix_one, matrix_two);
  float[][] matrix_four = transpose(matrix_three);

  float [] cols_sums = sum_of_columns(matrix_four);
  float [][] matrix_five = {{0.0, 9.0, 0.0}, {1.0, 0, -1.0}, {-2.0, 0.0, 1.0}};
  
  

  println("Testing the \"add\" function: the sum of the value is matrix_one and matrix_two is matrix_three as follows: ");
  for (int i=0; i < matrix_three.length; i++) {
    for (int j = 0; j < matrix_three[i].length; j++) {
      print(matrix_three[i][j] + "  ");
    }
    println();
  }
  
  println("Testing the \"transpose\" function: the transpose of matrix_three is matrix_four as follows: ");
  for (int i=0; i < matrix_four.length; i++) {
    for (int j = 0; j < matrix_four[i].length; j++) {
      print(matrix_four[i][j] + "  ");
    }
    println();
  }
  
  println("Testing the \"sum_of_columns\" function: the sum of columns in matrix_four are: ");
  for (int i=0; i < cols_sums.length; i++) {
      print(cols_sums[i] + "  ");
  }
}