import 'package:primaryschool/questions.dart';

List<Questions> getQuestion() {
  List<Questions> ques = new List<Questions>();
  Questions que = new Questions(
    que: "what is my name ?",
    image: "assets/images/p1.jpg",
    op1: "R",
    op2: "X",
    op3: "Y",
    op4: "Z",
    answer: "R",
  );
  ques.add(que);

  que = new Questions(
    que: "which place is in north sikkim?",
    image: "assets/images/p2.jpg",
    op1: "lachung",
    op2: "mg road",
    op3: "ravangla",
    op4: "zuluk",
    answer: "lachung",
  );
  ques.add(que);

  que = new Questions(
    que: "Highest package of Smit ?",
    image: "assets/images/p3.jpg",
    op1: "10 lpa",
    op2: "5 lpa",
    op3: "22 lpa",
    op4: "60 lpa",
    answer: "22 lpa",
  );
  ques.add(que);

  que = new Questions(
    que: " which of these lang is used for web dev?",
    image: "assets/images/p4.jpg",
    op1: "c",
    op2: "javascript",
    op3: "dart",
    op4: "c++",
    answer: "javascript",
  );
  ques.add(que);

  que = new Questions(
    que: "what is sikkim famous for?",
    image: "assets/images/p1.jpg",
    op1: "dosa",
    op2: "noodles",
    op3: "biryani",
    op4: "momos",
    answer: "momos",
  );
  ques.add(que);
  return ques;
}
