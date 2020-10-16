import 'package:flutter/material.dart';

class Bot39 extends StatefulWidget {
  @override
  _Bot39State createState() => _Bot39State();
}

class _Bot39State extends State<Bot39> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ39'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot40');
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
                          'images/39.1.jpg',
                        ),
                        Image.asset(
                          'images/39.2.jpg',
                        ),
                        Image.asset(
                          'images/39.3.jpg',
                        ),
                        Image.asset(
                          'images/39.4.jpg',
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
