import 'package:flutter/material.dart';

class Bot17 extends StatefulWidget {
  @override
  _Bot17State createState() => _Bot17State();
}

class _Bot17State extends State<Bot17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ17'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot18');
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
                          'images/17.1.jpg',
                        ),
                        Image.asset(
                          'images/17.2.jpg',
                        ),
                        Image.asset(
                          'images/17.3.jpg',
                        ),
                        Image.asset(
                          'images/17.4.jpg',
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
