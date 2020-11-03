import 'question..dart';
import 'dart:math';

class QZ58 {
  int _score = 0;
  int _totalQuestionsAsked = 1;
  int qnum = 0;

  List<Questions> _quizQuestions = [
    Questions(' ພໍເມືອສຸລິໂຍຍ້າຍ        ຄ້າຍຄ່ຳລົງແລງ','  ______________      ທ່ຽວຕີນດອຍກ້ວາງ', 'ໄກ່ຂັນທຸກເທື່ອ', 'ນອນສາຫຼ້າ  ',
        'ເຮົາມາພາກັນໄປ ', 'ທັນເວລາ', 3),
    Questions(' ບຶດຫນຶ່ງໄດ້      ລຽບປ່າແຄມເຂົາ',' ______________   ທົ່ງນາໜອງນໍ້າ ', 'ສຽງເນືອງນັນ', 'ຊູ່ເຊີງຈົນໄດ້', 'ເຢັນຊ້ອຍຊື່ນໃຈ',
        'ພໍເຮົາເດີນໄປເຖິງ', 4),
    Questions(' ເຫັນໝູ່ດົງດອນໄມ້     ມະໂນໃນໃສສະຫວ່າງ','______________       ເຢັນຊ້ອຍຊື່ນໃຈ', 'ພໍເມື່ອລົມລ່ວງຕ້ອງ ',
        'ໃຫ້ມັນມີແຮງກ້າ', 'ມາລະຍາດຄ່ອງແຄ້ວ', 'ເພື່ອນຜູ້ໃດ', 1),
    Questions('  ເຫັນໝູ່ເຍືອງຢືນຊ້ອງ       ຊຸມກິນຫຍ້າອ່ອນ',' ______________  ໜອງນັ້ນຄູ່ຊູ່ໂຕ', 'ສຽງເນືອງນັນ',
        'ແລ້ວເລົ່າລົງດື່ມນໍ້າ ', 'ເຫັນທັງແດດອ່ອນຕ້ອງ ', 'ຫຍ້າເບີກໃບຂຽວ', 2),
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
