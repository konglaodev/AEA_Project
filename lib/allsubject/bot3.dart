import 'package:flutter/material.dart';

class Bot3 extends StatefulWidget {
  @override
  _Bot3State createState() => _Bot3State();
}

class _Bot3State extends State<Bot3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ3'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot4');
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
                          'images/3.1.jpg',
                        ),
                        Image.asset(
                          'images/3.2.jpg',
                        ),
                        Image.asset(
                          'images/3.3.jpg',
                        ),
                        Image.asset(
                          'images/3.4.jpg',
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
