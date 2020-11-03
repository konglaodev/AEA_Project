import 'question..dart';
import 'dart:math';

class QZ10 {
  int _score = 0;
  int _totalQuestionsAsked = 1;
  int qnum = 0;

  List<Questions> _quizQuestions = [
    Questions(' ຂ້າຂໍນົບນອບນ້ອມ      ກົ້ມກາບພະຄຸນຄູ ກ່ອນເນີ','  ______________      ເລີດປະມານເຫຼືອລົ້ນ', 'ທ້າວສົມສີ', 'ທຽມຄຸນຂອງທ່ານ  ',
        'ພູເຂົາສູງສົ່ງພົ້ນ', 'ທ່ານຜູ້ມີພະຄຸນຫຼາຍ', 4),
    Questions('     ຄິດເມື່ອຍັງໜຸ່ມນ້ອຍ        ບໍ່ຮູ້ຮ່ອມດຽງສາ','ທ່ານພະຍາຍາມສອນ      ______________', 'ລີງລາຍສັບພະຊໍ່', 'ຊູ່ເຊີງຈົນໄດ້', 'ຄະແນນດີ',
        'ເວົ້າຖືກຕ້ອງ', 2),
    Questions('______________       ເສີມຊາດລາວຈະເລີນ','  ອະນາໄມຖະໜອມຕົນ      ໂລກໄພພອຍເວັ້ນ', 'ໃຈລາວດີ',
        'ຈຶ່ງຂໍຍໍມືໄຫວ້', 'ມາລະຍາດຄ່ອງແຄ້ວ', 'ເພື່ອນຜູ້ໃດ', 3),
    Questions('  ນໍ້າໃຈສູງພຸ່ງພົ້ນ            ບໍ່ບັງບຽດໃຜ','  ໃນຈິດໃຈບໍ່ມີອຳ           ______________', 'ບູຊາຄູຜູ້ປະເສີດ',
        'ເຍື່ອງໃດກໍສອນໃຫ້', 'ຂໍເທີດທູນຍິ່ງລໍາ້ ', 'ວາດຊົງກໍຄ່ອງ', 2),
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
