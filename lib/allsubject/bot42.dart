import 'package:flutter/material.dart';

class Bot42 extends StatefulWidget {
  @override
  _Bot42State createState() => _Bot42State();
}

class _Bot42State extends State<Bot42> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ42'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot42');
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
                          'images/42.1.jpg',
                        ),
                        Image.asset(
                          'images/42.2.jpg',
                        ),
                        Image.asset(
                          'images/42.3.jpg',
                        ),
                        Image.asset(
                          'images/42.4.jpg',
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
