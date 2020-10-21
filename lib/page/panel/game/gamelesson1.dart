
import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/game/quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class Gamelessonone extends StatelessWidget {
  const Gamelessonone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Dartgameone(),
    );
  }
}

class Dartgameone extends StatefulWidget {
  Dartgameone({Key key}) : super(key: key);

  @override
  _DartgameoneState createState() => _DartgameoneState();
}

class _DartgameoneState extends State<Dartgameone> {
  String setScore() {
    int score = quizBrain.getScore();
    return 'ຄະແນນປັດຈຸບັນ: $scoreໃນ10';
  }

  void ansChecker(int choicNo) {
    String corrAns = 'ຄຳຕອບທີ່ຖືກແມ່ນ: ' +
        quizBrain
            .getAnswer(); //This is put on top of the line below because the line below changes the qnum index, and we need it to get the correct ans
    bool isCorrect = quizBrain.checkAnswer(choicNo);
    setState(() {
      if (isCorrect == false && quizBrain.getTotalQuestionsAsked() > 1) {
        Alert(
          context: context,
          type: AlertType.error,
          title: "ຄຳຕອບຜິດເດີ້",
          desc: corrAns,
          buttons: [
            DialogButton(
              child: Text(
                "ໄປຂໍ້ຕໍ່ໄປ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
      }
      if (quizBrain.getTotalQuestionsAsked() <= 10) {
        quizBrain
            .nextQuestion(); //as button has been pressed the nextQuestion needs to be invoked, this will change the qnum and as the app refreshes the getQuestion will show the new question
      } else {
        Alert(
          context: context,
          type: AlertType.success,
          title: "ຕອບຄົບທຸກຂໍ້ແລ້ວ",
          desc: 'ຕອບຖືກທັງຫມົດ: ',
          buttons: [
            DialogButton(
              child: Text(
                "ຕົກລົງ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        quizBrain.reset();
      }
    });
  }

  String getQuestionNo() {
    return 'ຄຳຖາມທີ່ີຕອບໄປແລ້ວ: ' +
        quizBrain.getTotalQuestionsAsked().toString() +
        'ຂໍ້';
  }

  FlatButton createChoiceButton(int btnNo) {
    return FlatButton(
      onPressed: () {
        setState(() {
          ansChecker(btnNo);
        });
      },
      child: SizedBox(
        width: 300.0,
        height: 100.0,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/buttonsl.png',
                  ),
                  fit: BoxFit.fill)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quizBrain.getChoice(btnNo),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget back() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "images/backbt.png",
          width: 40.0,
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      child: Text(
        "ເລືອກຄຳຕອບຈາກຄຳອະທິບາຍສັບ",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none),
      ),
    );
  }
   Widget backhome() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "images/homepage.png",
          width: 40.0,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/NarinterfacegameBG.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  setScore(),
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title(),
                Text(
                  getQuestionNo(),
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500.0,
                    height: 110.0,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'images/question.png',
                              ),
                              fit: BoxFit.fill)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            quizBrain.getQuestion(),
                            //gets the question with the current qnum
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,45,0,0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      createChoiceButton(1),
                      SizedBox(height: 35.0,),
                      createChoiceButton(2),
                    ],
                  ),
                  SizedBox(
                    width: 200.0,
                  ),
                  Column(
                    children: [
                      createChoiceButton(3),
                        SizedBox(height: 35.0,),
                      createChoiceButton(4),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
