//Task 1

String gradeScore(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  List<int> testScores = [95, 82, 74, 61, 50];
  for (int scorePoint in testScores) {
    String grade = gradeScore(scorePoint);
    print('Score: $scorePoint -- Grade: $grade');
  }
}
