import 'package:flutter/material.dart';

class Howto4 extends StatefulWidget {
  Howto4({Key key}) : super(key: key);

  @override
  _Howto4State createState() => _Howto4State();
}

class _Howto4State extends State<Howto4> {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: SafeArea(
            child: SingleChildScrollView(
              child: InteractiveViewer(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/Nar 6.jpg',
                          ),
                          Image.asset(
                            'images/Nar 7.jpg',
                          ),
                          Image.asset(
                            'Nar 10.jpg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        

    );
  }
}
