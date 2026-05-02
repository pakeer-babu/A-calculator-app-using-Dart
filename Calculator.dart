// Task_2 -  Calculator 
import 'dart:io';

void main(){
  // Taking input from user numer_1
  print("Enter Fisrt number: ");
  double? num_1 = double.tryParse(stdin.readLineSync()!);

// Choose Operator
  print("Slect Operator ---> +, -, *, / ");
  String Operator = stdin.readLineSync()!;

// Taking input from user number_2
  print("Enter Second number: ");
  double? num_2 = double.tryParse(stdin.readLineSync()!);

// Checking the input is null or not
  if (num_1 == null || num_2 == null){
    print("Invalid input!");
    return;
  }

  double result;

  switch(Operator){

    // Additon operation
    case "+":
    result = num_1 + num_2;
    print("Addition: $result");
    break;

    // Subtraction operation
    case "-":
    result = num_1 - num_2;
    print("Subtraction: $result");
    break;

    // Multiplication operation
    case "*":
    result = num_1 * num_2;
    print("Multiplication: $result");
    break;

    // Division operation
    case "/":
    // Checking number_2 not be null else raise error
    if (num_2 == 0){
      print("Error: Division by Zero");
      return;
    }
    result = num_1 / num_2;
    print("Division: $result");
    break;

    default:
    print("Invalid Operator!");
    return;
  }


}



