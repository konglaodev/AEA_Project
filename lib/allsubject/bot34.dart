import 'package:flutter/material.dart';

class Bot34 extends StatefulWidget {
  @override
  _Bot34State createState() => _Bot34State();
}

class _Bot34State extends State<Bot34> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ34'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot35');
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
                          'images/34.1.jpg',
                        ),
                        Image.asset(
                          'images/34.2.jpg',
                        ),
                        Image.asset(
                          'images/34.3.jpg',
                        ),
                        Image.asset(
                          'images/34.4.jpg',
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
