import 'package:flutter/material.dart';

class Bot41 extends StatefulWidget {
  @override
  _Bot41State createState() => _Bot41State();
}

class _Bot41State extends State<Bot41> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ41'),
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
                          'images/41.1.jpg',
                        ),
                        Image.asset(
                          'images/41.2.jpg',
                        ),
                        Image.asset(
                          'images/41.3.jpg',
                        ),
                        Image.asset(
                          'images/41.4.jpg',
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
