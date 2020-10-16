import 'package:flutter/material.dart';

class Bot51 extends StatefulWidget {
  @override
  _Bot51State createState() => _Bot51State();
}

class _Bot51State extends State<Bot51> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ51'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot52');
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
                          'images/51.1.jpg',
                        ),
                        Image.asset(
                          'images/51.2.jpg',
                        ),
                        Image.asset(
                          'images/51.3.jpg',
                        ),
                        Image.asset(
                          'images/51.4.jpg',
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