import 'question..dart';
import 'dart:math';

class QZ17 {
  int _score = 0;
  int _totalQuestionsAsked = 1;
  int qnum = 0;

  List<Questions> _quizQuestions = [
    Questions(' ນອນສາຫຼ້າ       ຫຼັບຕາເອື້ອຍຊິກ່ອມ','  ______________   ຈຶ່ງມາເຝົ້າກ່ອມນອນ ', ' ດັງໄປທົ່ວບ້ານ', 'ນອນສາຫຼ້າ ',
        '  ເອື້ອຍນີ້ຫອມຮັກເຈົ້າ', 'ເຊັດຖູຮຽບຮ້ອຍ', 3),
    Questions('  ເອື້ອຍນີ້ຫອມຮັກເຈົ້າ      ຈຶ່ງມາເຝົ້າກ່ອມນອນ',' ______________    ແຕ່ລົມວອນວີວ່ອນ', 'ສຽງເນືອງນັນ', 'ຍັງບໍ່ທັນຕ່າວ', 'ດັງໄປທົ່ວບ້ານ',
        ' ມື້ນີ້ອາກາດຮ້ອນ', 4),
    Questions('  ນອນຫຼັບຕາສາແກ້ວ       ຫຼັບແລ້ວເອື້ອຍຊິໄກວ','______________       ຍັງບໍ່ທັນມາ', 'ລ້າງຖ້ວຍຈານ',
        'ຈຶ່ງຂໍຍໍມືໄຫວ້', 'ພໍ່ໄປໄຮ່', 'ຍັງບໍ່ທັນຕ່າວ', 3),
    Questions(' ແມ່ໄປນາ       ກ່ອນແມ່ມານດາ',' ______________  ມານດາແກ້ວຊິຕ່າວມາ ', 'ຈັກວ່າຄາວຫນຶ່ງແລ້ວ',
        'ທັນເວລາ', 'ຈຶ່ງມາເຝົ້າກ່ອມນອນ', 'ນອນສາຫຼ້າ', 1),
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
