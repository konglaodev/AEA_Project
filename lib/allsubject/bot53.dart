import 'package:flutter/material.dart';

class Bot53 extends StatefulWidget {
  @override
  _Bot53State createState() => _Bot53State();
}

class _Bot53State extends State<Bot53> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ53'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot54');
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
                          'images/53.1.jpg',
                        ),
                        Image.asset(
                          'images/53.2.jpg',
                        ),
                        Image.asset(
                          'images/53.3.jpg',
                        ),
                        Image.asset(
                          'images/53.4.jpg',
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