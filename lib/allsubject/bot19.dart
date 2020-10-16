import 'package:flutter/material.dart';

class Bot19 extends StatefulWidget {
  @override
  _Bot19State createState() => _Bot19State();
}

class _Bot19State extends State<Bot19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ19'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot20');
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
                          'images/19.1.jpg',
                        ),
                        Image.asset(
                          'images/19.2.jpg',
                        ),
                        Image.asset(
                          'images/19.3.jpg',
                        ),
                        Image.asset(
                          'images/19.4.jpg',
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
