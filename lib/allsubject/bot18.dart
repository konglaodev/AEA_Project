import 'package:flutter/material.dart';

class Bot18 extends StatefulWidget {
  @override
  _Bot18State createState() => _Bot18State();
}

class _Bot18State extends State<Bot18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ18'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot19');
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
                          'images/18.1.jpg',
                        ),
                        Image.asset(
                          'images/18.2.jpg',
                        ),
                        Image.asset(
                          'images/18.3.jpg',
                        ),
                        Image.asset(
                          'images/18.4.jpg',
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
