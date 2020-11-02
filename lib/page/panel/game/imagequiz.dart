import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:primaryschool/data.dart';
import 'package:primaryschool/result.dart';
import 'package:primaryschool/questions.dart';

class Imagequiz extends StatelessWidget {
  const Imagequiz({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> with SingleTickerProviderStateMixin {
  int index = 0, totalQue = 0;
  int correct = 0, incorrect = 0, notAttempted = 0, score = 0, attempted = 0;
  List<Questions> _questions = new List<Questions>();

  Animation animation;
  AnimationController animationController;

  double animBegin = 0.0;
  double animEnd = 1.0;

  @override
  void initState() {
    super.initState();

    _questions = getQuestion();

    totalQue = _questions.length;

    animationController = AnimationController(
        duration: const Duration(seconds: 1000), vsync: this);

    animation =
        Tween(begin: animBegin, end: animEnd).animate(animationController)
          ..addListener(() {
            setState(() {});
          });

    startAnimation();
    animation.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        if (index < _questions.length - 1) {
          index++;
          print(index);
          resetAnimation();
          startAnimation();
        } else {
          goToResult();
        }
        notAttempted++;
      }
    });
  }

  goToResult() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Result(
            attempted: attempted,
            notAttempted: notAttempted,
            correct: correct,
            totalQue: totalQue,
            score: score,
          ),
        ));
  }

  @override
  void dispose() {
    animationController.stop();
    super.dispose();
  }

  startAnimation() {
    animationController.forward();
  }

  resetAnimation() {
    animationController.reset();
  }

  stopAnimation() {
    animationController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 60),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Text(
                        "ຄຳຖາມທີ ",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${index + 1} ໃນ ${_questions.length}",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "$score ",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "ຄະແນນ",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text(
                "${_questions[index].getQue()}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                child: LinearProgressIndicator(
              value: animationController.value ?? 0.0,
            )),
            Column(
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage(
                      '${_questions[index].getImage()}',
                    ),
                    width: 350,
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          attempted++;
                        });
                        print(animation.value);
                        if (_questions[index].getAnswer() ==
                            _questions[index].getOp1()) {
                          setState(() {
                            score += 10;
                            correct++;
                          });
                        }

                        if (index < _questions.length - 1) {
                          setState(() {
                            index++;
                            resetAnimation();
                            startAnimation();
                          });
                        } else {
                          setState(() {
                            stopAnimation();
                            goToResult();
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Text(
                          'A. ${_questions[index].getOp1()}',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          attempted++;
                        });
                        if (_questions[index].getAnswer() ==
                            _questions[index].getOp2()) {
                          setState(() {
                            score += 10;
                            correct++;
                          });
                        }
                        if (index < _questions.length - 1) {
                          setState(() {
                            index++;
                            resetAnimation();
                            startAnimation();
                          });
                        } else {
                          setState(() {
                            stopAnimation();
                            goToResult();
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Text(
                          'B. ${_questions[index].getOp2()}',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          attempted++;
                        });
                        print(animation.value);
                        if (_questions[index].getAnswer() ==
                            _questions[index].getOp3()) {
                          setState(() {
                            score += 10;
                            correct++;
                          });
                        }

                        if (index < _questions.length - 1) {
                          setState(() {
                            index++;
                            resetAnimation();
                            startAnimation();
                          });
                        } else {
                          setState(() {
                            stopAnimation();
                            goToResult();
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Text(
                          'C. ${_questions[index].getOp3()}',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          attempted++;
                        });
                        if (_questions[index].getAnswer() ==
                            _questions[index].getOp4()) {
                          setState(() {
                            score += 10;
                            correct++;
                          });
                        }
                        if (index < _questions.length - 1) {
                          setState(() {
                            index++;
                            resetAnimation();
                            startAnimation();
                          });
                        } else {
                          setState(() {
                            stopAnimation();
                            goToResult();
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Text(
                          'D. ${_questions[index].getOp4()}',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
