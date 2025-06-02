import 'dart:math';

void main() {
  print('Keep trying till you win');
  dynamic random = Random();

  int randomNum = random.nextInt(100); 
  
  int attempt = 0;
  
   attempt ++; 
  
  if (randomNum == 7){
    print("$randomNum you won");  
    print("$attempt attempt");
  }else if (randomNum <= 4) {
    print("$randomNum Too low! Try again.");
  }else if (randomNum >= 8){
    print("$randomNum Too high! Try again.");
  }else{
    print('$randomNum keep tryng');
  }
  
  print("You've attemted this guess $attempt times");
  
}
