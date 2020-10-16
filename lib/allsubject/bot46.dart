import 'package:flutter/material.dart';

class Bot46 extends StatefulWidget {
  @override
  _Bot46State createState() => _Bot46State();
}

class _Bot46State extends State<Bot46> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ46'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot47');
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
                          'images/46.1.jpg',
                        ),
                        Image.asset(
                          'images/46.2.jpg',
                        ),
                        Image.asset(
                          'images/46.3.jpg',
                        ),
                        Image.asset(
                          'images/46.4.jpg',
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