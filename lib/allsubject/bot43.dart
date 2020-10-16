import 'package:flutter/material.dart';

class Bot43 extends StatefulWidget {
  @override
  _Bot43State createState() => _Bot43State();
}

class _Bot43State extends State<Bot43> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ43'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot44');
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
                          'images/43.1.jpg',
                        ),
                        Image.asset(
                          'images/43.2.jpg',
                        ),
                        Image.asset(
                          'images/43.3.jpg',
                        ),
                        Image.asset(
                          'images/43.4.jpg',
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