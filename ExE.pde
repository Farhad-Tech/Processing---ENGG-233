float second_largest_calculator(float[] array)
{
  // students must complete the implementation of this function and change the return value

  float first, second;

  if (array[0] > array[1]) {
    first = array[0];
    second = array[1];
  } else {
    first = array[1];
    second = array[0];
  }

  for (int i = 2; i < array.length; i++) {
    if ((array[i] <= first) && array[i] > second) {
      second = array[i];
    }

    if (array[i] > first) {
      second = first;
      first = array[i];
    }
  }
  return second;
}

void setup() {
  float array_one [] = {6.0, 9.0, 5.0, 2.0, 0, 1.0, 3.0};
  float array_two [] = {-6.7, -9.9, -5.5, -4.4, -1.0, -11.9, -3.3};
  float array_three [] = {-6.7, -9.9, 0, -4.4, 2, -11.9, -3.3};
  println("The second largest value in array_one is : " + second_largest_calculator(array_one));
  println("The second largest value in array_two is : " + second_largest_calculator(array_two));
  println("The second largest value in array_three is : " + second_largest_calculator(array_three));
}