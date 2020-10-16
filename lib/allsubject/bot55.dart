import 'package:flutter/material.dart';

class Bot55 extends StatefulWidget {
  @override
  _Bot55State createState() => _Bot55State();
}

class _Bot55State extends State<Bot55> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ55'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot56');
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
                          'images/55.1.jpg',
                        ),
                        Image.asset(
                          'images/55.2.jpg',
                        ),
                        Image.asset(
                          'images/55.3.jpg',
                        ),
                        Image.asset(
                          'images/55.4.jpg',
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