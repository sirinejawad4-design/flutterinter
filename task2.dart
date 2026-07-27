// Task 1: Anonymous Functions

void execute(void Function() action) {
  action();
}


// Task 2: Arrow Functions

int square(int number) => number * number;

String greet(String name) => "Hello $name";

bool isEven(int number) => number % 2 == 0;


// Task 3: Higher-Order Functions & Callbacks

void calculate(
  int firstNumber,
  int secondNumber,
  int Function(int, int) operation,
) {
  int result = operation(firstNumber, secondNumber);
  print("Result: $result");
}


void main() {
  // Task 1
  print("Task 1:");

  execute(() {
    print("Hello Dart!");
  });


  // Task 2
  print("\nTask 2:");

  print(square(5));       // 25
  print(greet("Serine")); // Hello Serine
  print(isEven(8));       // true
  print(isEven(7));       // false


  // Task 3
  print("\nTask 3:");

  print("Addition:");
  calculate(10, 5, (a, b) => a + b);

  print("Subtraction:");
  calculate(10, 5, (a, b) => a - b);

  print("Multiplication:");
  calculate(10, 5, (a, b) => a * b);
}