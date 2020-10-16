import 'package:flutter/material.dart';

class Bot24 extends StatefulWidget {
  @override
  _Bot24State createState() => _Bot24State();
}

class _Bot24State extends State<Bot24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ24'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot25');
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
                          'images/24.1.jpg',
                        ),
                        Image.asset(
                          'images/24.2.jpg',
                        ),
                        Image.asset(
                          'images/24.3.jpg',
                        ),
                        Image.asset(
                          'images/24.4.jpg',
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
