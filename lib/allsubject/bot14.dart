import 'package:flutter/material.dart';

class Bot14 extends StatefulWidget {
  @override
  _Bot14State createState() => _Bot14State();
}

class _Bot14State extends State<Bot14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ14'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot15');
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
                          'images/14.1.jpg',
                        ),
                        Image.asset(
                          'images/14.2.jpg',
                        ),
                        Image.asset(
                          'images/14.3.jpg',
                        ),
                        Image.asset(
                          'images/14.4.jpg',
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
