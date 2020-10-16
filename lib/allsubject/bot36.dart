import 'package:flutter/material.dart';

class Bot36 extends StatefulWidget {
  @override
  _Bot36State createState() => _Bot36State();
}

class _Bot36State extends State<Bot36> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ36'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot37');
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
                          'images/36.1.jpg',
                        ),
                        Image.asset(
                          'images/36.2.jpg',
                        ),
                        Image.asset(
                          'images/36.3.jpg',
                        ),
                        Image.asset(
                          'images/36.4.jpg',
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
