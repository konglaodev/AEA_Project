import 'package:flutter/material.dart';

class Bot54 extends StatefulWidget {
  @override
  _Bot54State createState() => _Bot54State();
}

class _Bot54State extends State<Bot54> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ54'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot55');
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
                          'images/54.1.jpg',
                        ),
                        Image.asset(
                          'images/54.2.jpg',
                        ),
                        Image.asset(
                          'images/54.3.jpg',
                        ),
                        Image.asset(
                          'images/54.4.jpg',
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