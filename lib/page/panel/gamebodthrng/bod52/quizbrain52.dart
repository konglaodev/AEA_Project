import 'question..dart';
import 'dart:math';

class QZ52 {
  int _score = 0;
  int _totalQuestionsAsked = 1;
  int qnum = 0;

  List<Questions> _quizQuestions = [
    Questions(' ສັດທີ່ເຮົາມັກໃຊ້     ແມ່ນມ້າມິ່ງງົວຄວາຍ','____________        ບໍ່ອາດພັນລະນາໄດ້', 'ບິນຖະຫຼໍາລົງແລ້ວ', 'ໄຫຼລົງມາຕາມແປວ',
        'ກັບຄືນອີກໃໝ່', ' ລ້ວນແຕ່ມີຄຸນຫຼາຍ', 4),
    Questions(' ຢູ່ຕາມຂົງເຂດຄ້າຍ    ກໍ້າຝ່າຍຊົນນະບົດ',' ____________       ຄາດນາຈົນແລ້ວ', 'ສັດທີ່ເຮົາມັກໃຊ້', 'ຫຼິງໄປເທິງເນີນພູ', 'ໄດ້ເອົາງົວຄວາຍໄຖ',
        'ມີແຮງລົ້ນມາກຫຼາຍ', 3),
    Questions(' ມີເຄື່ອງຂອງອັນໃດ        ຕ່າງໄປກໍຍັງໄດ້','______________      ຂະບວນການຂົນສົ່ງ', 'ປ້ອມປິກລົງຈັບປາ',
        'ແມ່ນມັນນັ້ນຄ່ຽນໄປ', 'ຊ້າງມ້າຫຼາຍແນວໃຊ້', 'ປະກອບເປັນປ່າໄມ້', 3),
    Questions(' ໃຫ້ມັນມີແຮງກ້າ        ໄປມາຍ້າຍຍ່າງ','____________    ເອົາໄວ້ເພິ່ງແຮງ ແທ້ເນີ', 'ເຮົາຈິ່ງຍູທາງໃຊ້',
        'ມີມາກເຫຼືອຫຼາຍ', 'ຍູງຍາງສາມສີ່ອູ້ມ', 'ເນົາຢູ່ເຄຫາ', 1),
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
