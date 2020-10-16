import 'package:flutter/material.dart';

class Bot49 extends StatefulWidget {
  @override
  _Bot49State createState() => _Bot49State();
}

class _Bot49State extends State<Bot49> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ49'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot50');
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
                          'images/49.1.jpg',
                        ),
                        Image.asset(
                          'images/49.2.jpg',
                        ),
                        Image.asset(
                          'images/49.3.jpg',
                        ),
                        Image.asset(
                          'images/49.4.jpg',
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