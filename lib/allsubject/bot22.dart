import 'package:flutter/material.dart';

class Bot22 extends StatefulWidget {
  @override
  _Bot22State createState() => _Bot22State();
}

class _Bot22State extends State<Bot22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ22'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot23');
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
                          'images/22.1.jpg',
                        ),
                        Image.asset(
                          'images/22.2.jpg',
                        ),
                        Image.asset(
                          'images/22.3.jpg',
                        ),
                        Image.asset(
                          'images/22.4.jpg',
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
