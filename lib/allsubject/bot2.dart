import 'package:flutter/material.dart';

class Bot2 extends StatefulWidget {
  @override
  _Bot2State createState() => _Bot2State();
}

class _Bot2State extends State<Bot2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ2'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot3');
            },
          ),
        ],
      ),
      body: Container(
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
                          'images/2.1.jpg',
                        ),
                        Image.asset(
                          'images/2.2.jpg',
                        ),
                        Image.asset(
                          'images/2.3.jpg',
                        ),
                        Image.asset(
                          'images/2.4.jpg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
