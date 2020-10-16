import 'package:flutter/material.dart';

class Bot23 extends StatefulWidget {
  @override
  _Bot23State createState() => _Bot23State();
}

class _Bot23State extends State<Bot23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ5'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot24');
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
                          'images/23.1.jpg',
                        ),
                        Image.asset(
                          'images/23.2.jpg',
                        ),
                        Image.asset(
                          'images/23.3.jpg',
                        ),
                        Image.asset(
                          'images/23.4.jpg',
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
