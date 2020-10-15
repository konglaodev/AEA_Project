import 'package:flutter/material.dart';

class ReadSound2 extends StatefulWidget {
  @override
  _ReadSound2State createState() => _ReadSound2State();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _ReadSound2State extends State<ReadSound2> {
  Widget ls1() {
    return InkWell(
      hoverColor: Colors.orange.shade600,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text(
              'ບົດທີ2 ໂຮງຮຽນຂອງຂ້ອຍ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
            child: Icon(Icons.play_arrow),
          )
        ],
      ),
      onTap: () {
        Navigator.pushNamed(context, '/lesson2');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.orangeAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'ບົດກາບກອນ',
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'lao',
              color: Color.fromARGB(255, 184, 133, 13),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.3,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Divider(),
                  ls1(),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ6 ນັກຮຽນດີ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson6');
                    },
                  ),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ9 ອວຍພອນຄູ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson9');
                    },
                  ),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ10 ຮູ້ບຸນຄຸນຄູ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson9');
                    },
                  ),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ14 ຕື່ນເດີກລຸກເຊົ້າ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson14');
                    },
                  ),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ17 ກ່ອມນ້ອງ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson17');
                    },
                  ),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ38 ດອກບົວກາງບືງ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson38');
                    },
                  ),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ44 ບຸນປີໃໝ່ລາວ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson44');
                    },
                  ),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ46 ບ້ານເກີດເມືອງນອນ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson46');
                    },
                  ),
                  Divider(),
                  InkWell(
                    hoverColor: Colors.orange.shade600,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'ບົດທີ48 ສາຍນ້ຳລຳທານ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/lesson48');
                    },
                  ),
                  Divider(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
