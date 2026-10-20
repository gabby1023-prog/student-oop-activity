class Student {
  String name;
  String course;
  int yearLevel;

  double _grade;

  Student(this.name, this.course, this.yearLevel, double grade)
      : _grade = grade;

  void updateGrade(double newGrade) {
    if (newGrade >= 0 && newGrade <= 100) {
      _grade = newGrade;
      print('$name\'s grade has been updated.');
    } else {
      print('Invalid grade. Please enter 0 to 100.');
    }
  }

  double getGrade() {
    return _grade;
  }

  void displayInfo() {
    print('Name: $name');
    print('Course: $course');
    print('Year Level: $yearLevel');
    print('Grade: ${getGrade()}');
    print('--------------------');
  }

  void study() {
    print('$name is studying $course.');
  }
}

void main() {
  Student student1 = Student('Alex', 'Information Technology', 1, 90);
  Student student2 = Student('Jamie', 'Computer Science', 2, 85);

  List<Student> students = [student1, student2];

  student1.study();
  student2.study();

  student1.updateGrade(95);

  print('\nSTUDENT INFORMATION');

  for (Student student in students) {
    student.displayInfo();
  }
}