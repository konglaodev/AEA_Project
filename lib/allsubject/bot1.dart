import 'package:flutter/material.dart';

class Bot1 extends StatefulWidget {
  @override
  _Bot1State createState() => _Bot1State();
}

class _Bot1State extends State<Bot1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);

        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home),
          ),
          backgroundColor: Colors.orange.shade700,
          elevation: 0.0,
          title: Text('ບົດທີ1'),
          actions: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/bot2');
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
                            'images/1.1.jpg',
                          ),
                          Image.asset(
                            'images/1.2.jpg',
                          ),
                          Image.asset(
                            'images/1.3.jpg',
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
      ),
    );
  }
}