import ballerina/io;
import ballerina/math;

public function main(string... args) {
 // function to generate random numbers
 int|error number1 = math:randomInRange(10,60);
 io:println("The random number is ", <int>number1);

 int k = 0;
 // type cast from <int|error> to <int>
 int num2  = <int>nunmber1;

 while (k < num2) {

  if (k == 0) {
   k = k + 2;
  }

  if((num2 % k == 0) && (k != 0)) {
   io:println(k);
   k = k + 1;
   continue;
  }

  if (num2 % k != 0) {
   k = k + 1;
   continue;
  }

  if(k == num2) {
   io:println(k);
   break;
  }
 }
}