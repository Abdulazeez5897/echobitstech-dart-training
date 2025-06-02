//Task 1

double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

void main() {
  double myWeight = 68.0;
  double myHeight = 1.53;

  double myBMI = calculateBMI(myWeight, myHeight);
  print('My BMI is ${myBMI.toStringAsFixed(1)}'); 
}

//Task 2

int findGreaterThan(int a, int b) {
  if(a > b){
    return a;
  }else{
    return b;
  }
}

void main(){
  int c = 7;
  int d = 5;
  int greaterThan = findGreaterThan(c, d);
  
  print('The greater number is $greaterThan');
  
}
