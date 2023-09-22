// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';



class Student {
  final String name;
  final int age;
  final List<String> subjects;
  final List<int> grades;

  Student({
   required this.name,
   required this.age,
   required this.subjects,
   required this.grades,
  })  {
  List subjects = [];
  List grades = [];
  }

  void addSubject(String item) {
    subjects.add(item);
  }
  void removeSubject(String item) {
    if(subjects.contains(item)) {
      int index = subjects.indexOf(item);
     subjects.remove(index);
     grades.remove(index);  

    }
  }
  String getInfo() {
     return 'Имя: $name, Возраст: $age, Предметы: ${subjects.toString()}, Оценки: ${grades.toString()} ';
  }
  double getAverageGrade() {
    if (grades.isEmpty) {
      return 0;
    }
    int sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
    bool hasSubject(String subject) {
    return subjects.contains(subject);
  }
}

void main() {
  var student = Student(name: 'Alex', age: 12, subjects: ['Math', 'English'], grades: [4,5] );
  student.addSubject('Physics');
 
   student.removeSubject('Physics');
    print(student.getInfo());
    print('Averagegrade: ${student.getAverageGrade()}');
      print('Предмет "English" есть: ${student.hasSubject('Математика')}');
}
