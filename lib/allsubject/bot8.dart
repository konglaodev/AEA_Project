import 'package:flutter/material.dart';

class Bot8 extends StatefulWidget {
  @override
  _Bot8State createState() => _Bot8State();
}

class _Bot8State extends State<Bot8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ8'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot9');
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
                          'images/8.1.jpg',
                        ),
                        Image.asset(
                          'images/8.2.jpg',
                        ),
                        Image.asset(
                          'images/8.3.jpg',
                        ),
                        Image.asset(
                          'images/8.4.jpg',
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
