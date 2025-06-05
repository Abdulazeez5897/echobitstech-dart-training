import 'dart:io';
import 'dart:math';

void main() {
  playGuessingGame();
}

void playGuessingGame() {
  final random = Random();
  final int target = random.nextInt(100);
  int attempts = 0;
  int? guess;

  print("I have picked a number between 0 and 99. Try to guess it!");

  do {
    attempts++;
    guess = _promptForGuess();

    if (guess == null) {
      print("– That wasn’t a valid integer. Please try again.");
      continue;
    }

    if (guess < target) {
      print("Too low! Try again.\n");
    } else if (guess > target) {
      print("Too high! Try again.\n");
    } else {
      print("\n You got it! The number was $target.");
      print("It took you $attempts attempt${attempts == 1 ? '' : 's'}.");
    }
  } while (guess != target);
}

int? _promptForGuess() {
  stdout.write("Enter your guess (0–99): ");
  final input = stdin.readLineSync();
  if (input == null) return null;
  return int.tryParse(input.trim());
}
