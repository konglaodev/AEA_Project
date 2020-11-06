import 'package:flutter/material.dart';

class HOWTOPLAY extends StatefulWidget {
  HOWTOPLAY({Key key}) : super(key: key);

  @override
  _HOWTOPLAYState createState() => _HOWTOPLAYState();
}

class _HOWTOPLAYState extends State<HOWTOPLAY> {
   
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
          title: Text(' ສອນການໃຊ້ງານແອພ'),
          actions: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: null,
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
                            'images/Nar 3.jpg',
                          ),
                          Image.asset(
                            'images/Nar 4.jpg',
                          ),
                          Image.asset(
                            'images/Nar 5.jpg',
                          ),
                          Image.asset(
                            'images/Nar_13.jpg',
                          ),
                          Image.asset(
                            'images/Nar_14.jpg',
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