import 'package:flutter/material.dart';

class Bot16 extends StatefulWidget {
  @override
  _Bot16State createState() => _Bot16State();
}

class _Bot16State extends State<Bot16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ16'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot17');
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
                          'images/16.1.jpg',
                        ),
                        Image.asset(
                          'images/16.2.jpg',
                        ),
                        Image.asset(
                          'images/16.3.jpg',
                        ),
                        Image.asset(
                          'images/16.4.jpg',
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
