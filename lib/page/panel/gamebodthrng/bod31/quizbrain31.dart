import 'question..dart';
import 'dart:math';

class QZ31 {
  int _score = 0;
  int _totalQuestionsAsked = 1;
  int qnum = 0;

  List<Questions> _quizQuestions = [
    Questions(' ປະທຸມມະຊາດເຊື້ອ        ອາໄສເກີດກັບຕົມ','  ______________   ດອກບົວກໍຜຸດພົ້ນ', 'ນໍາ້ໜອງພໍພຽງໃດ', 'ຍັງບໍ່ທັນຕ່າວ',
        'ຍັງບໍ່ທັນມາ', 'ເຊັດຖູຮຽບຮ້ອຍ', 1),
    Questions(' ຖາມແດ່ເປັນໃດເຈົ້າ         ຈຶ່ງຫອມຫຼາຍເຫຼືອມາກ',' ______________    ກິນໄດ້ຄູ່ຊູ່ອັນ', 'ອາໄສເກີດກັບຕົມ', 'ເອົາຕົມເປັນອາຫານ', 'ຫົວຮາກໝາກແກ່ເຈົ້າ',
        ' ມື້ນີ້ອາກາດຮ້ອນ', 3),
    Questions('  ໃບຂອງເຈົ້ານັ້ນ       ອອ່ນແກ່ກໍດີໝົດ','______________      ບ່ອນໜອງເໝັນຮ້າຍ', 'ລ້າງຖ້ວຍຈານ',
        'ເຈົ້າຫາກເກີດຈາກຕົມ', ' ເອົາຕົມເປັນອາຫານ', 'ນໍາ້ໜອງພໍພຽງໃດ', 2),
    Questions(' ດອກເຈົ້າງາມແຊມຊ້ອນ         ຊົມເລິງຫາກບໍ່ເບື່ອ',' ______________  ເໜືອເຈົ້າແມ່ນບໍ່ມີ ແທ້ນາ.', 'ຊຸມບຸບຜາຊາດເຊື້ອ',
        'ດອກບົວເອີຍ', 'ຊູ່ວັນບໍ່ມີມົ້ວ', 'ດອກບົວເອີຍ', 1),
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
