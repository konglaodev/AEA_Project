import 'question..dart';
import 'dart:math';

class QZ2 {
  int _score = 0;
  int _totalQuestionsAsked = 1;
  int qnum = 0;

  List<Questions> _quizQuestions = [
    Questions(' ໂຮງຮຽນຂ້ອຍ     ຕັ້ງມໍ່ແຄມທາງ','  ______________      ບ້ານເຫນີຶອ ແລະ ໃຕ້', 'ເປິເປຶ້ອນ', 'ບານເຮື່ອຫຼາຍສີ',
        'ຢູ່ຫວ່າງກາງ', 'ຕົ້ນໄມ້ໄຮຢ່ອນ', 3),
    Questions('       ຮົ້ວທຸກດ້ານ       ____________ ','ມີເດີ່ນງາມ       ບ່ອນເຮົາແລ່ນຫຼິ້ນ', 'ບ້ານເຫນີຶອ ແລະ ໃຕ້', 'ໂຮງຮຽນຂ້ອຍ', 'ມຸງສັງກະສີ',
        'ອອ້ມດ້ວຍເຫຼັກຫນາມ', 4),
    Questions('______________       ຕອນແສງແດດແກ່','ຄົນມັກແວ່         ໂຮງຮຽນຂອງເຮົາ.', 'ບ່ອນເຮົາແລ່ນຫຼິ້ນ',
        'ມີໜອງປາ', 'ບ້ານເຫນີຶອ ແລະ ໃຕ້', 'ຍາມກາງເວັນ', 4),
    Questions('  ໜານດອກໄມ້         ບານເຮື່ອຫຼາຍສີ','ແລະ ຍັງມີ         ______________', 'ຫັດແອບແຂນຂາ',
        'ຕົ້ນໄມ້ໄຮຢ່ອນ', 'ທັງຮາວປິ້ນ ', 'ຊົ້ນຮົ່ມເຊົາເຢັນ', 2),
  ];
  List<int> questionsAsked = [];

  int getScore() {
    return _score;
  }

  String getQuestion() {
    return _quizQuestions[qnum].question;
  }
  String getQuestion2() {
    return _quizQuestions[qnum].question2;
  }

  String getAnswer() {
    return getChoice(_quizQuestions[qnum]
        .ans); //This fetches the ans no and plugs it in the getChoice to return the correct answer
  }

  int getTotalQuestionsAsked() {
    return _totalQuestionsAsked;
  }

  void nextQuestion() {
    //verifies that the index of question is unique and updates the data member qnum to the new question number
    this.qnum = Random().nextInt(_quizQuestions
        .length); //This whole segment gets a random generated index for the question to be asked

    while (questionsAsked.contains(this.qnum)) {
      this.qnum = Random().nextInt(_quizQuestions.length);
    }
    questionsAsked.add(this.qnum); //Add this question index into the asked list
    print(qnum.toString() +
        ' was asked, questions asked so far ' +
        questionsAsked.length.toString());
  }

  bool checkAnswer(int selection) {
    bool isCorrect = false;
    if (selection == _quizQuestions[qnum].ans) {
      _score++;
      isCorrect = true;
      print('picked the correct answer ' + _score.toString());
    } else {
      print('picked the wrong answer');
    }
    _totalQuestionsAsked++; //regardless, question has been asked and button has been pressed
    return isCorrect;
  }

  String getChoice(int butChoice) {
    String choiceText;
    switch (butChoice) {
      case 1:
        choiceText = _quizQuestions[qnum].choice1;
        break;
      case 2:
        choiceText = _quizQuestions[qnum].choice2;
        break;
      case 3:
        choiceText = _quizQuestions[qnum].choice3;
        break;
      case 4:
        choiceText = _quizQuestions[qnum].choice4;
        break;
    }
    return choiceText;
  }

  void reset() {
    qnum = 0;
    _score = 0;
    _totalQuestionsAsked = 1;
    questionsAsked.clear();
  }
}
