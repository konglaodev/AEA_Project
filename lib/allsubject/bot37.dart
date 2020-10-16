import 'package:flutter/material.dart';

class Bot37 extends StatefulWidget {
  @override
  _Bot37State createState() => _Bot37State();
}

class _Bot37State extends State<Bot37> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ37'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot38');
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
                          'images/37.1.jpg',
                        ),
                        Image.asset(
                          'images/37.2.jpg',
                        ),
                        Image.asset(
                          'images/37.3.jpg',
                        ),
                        Image.asset(
                          'images/37.4.jpg',
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
