import 'package:flutter/material.dart';

class ReadSound extends StatefulWidget {
  @override
  _ReadSoundState createState() => _ReadSoundState();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _ReadSoundState extends State<ReadSound> {
  Widget ls3() {
    return InkWell(
      hoverColor: Colors.orange.shade600,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text(
              'ບົດທີ3 ປະຢັດເຄື່ອງຮຽນໃຫ້ດີ',
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
        Navigator.pushNamed(context, '/lesson3');
      },
    );
  }

  Widget inkwell() {
    return InkWell(
      hoverColor: Colors.orange.shade600,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text(
              'ບົດທີ1 ບົດຫົວໃຫມ່',
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
        Navigator.pushNamed(context, '/lession1');
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
          'ບົດເລື່ອງ',
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Divider(),
                inkwell(),
                Divider(),
                ls3(),
                Divider(),
                InkWell(
                  hoverColor: Colors.orange.shade600,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                        child: Text(
                          'ບົດທີ5 ຈົດໝາຍ',
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
                    Navigator.pushNamed(context, '/lesson5');
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
                          'ບົດທີ7 ສວນຂອງໂຮງຮຽນ',
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
                    Navigator.pushNamed(context, '/lesson7');
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
                          'ບົດທີ8 ຟືນດົ້ນດຽວດັງໄຟບໍ່ລຸກ',
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
                    Navigator.pushNamed(context, '/lesson8');
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
                          'ບົດທີ11 ຄອບຄົວຂອງຂ້ອຍ',
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
                    Navigator.pushNamed(context, '/lesson11');
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
                          'ບົດທີ18 ມໍລະດົກຂອງພໍ່',
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
                    Navigator.pushNamed(context, '/lesson18');
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
                          'ບົດທີ19 ຮັກສາແຂ້ວໃຫ້ສະອາດ',
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
                    Navigator.pushNamed(context, '/lesson19');
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
                          'ບົດທີ20 ການບົວລະບັດເຮືອນຊານ',
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
                    Navigator.pushNamed(context, '/lesson20');
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
                          'ບົດທີ21 ຊ່ວຍເຫຼືອຜູ້ເຖົ້າ',
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
                    Navigator.pushNamed(context, '/lesson21');
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
                          'ບົດທີ34 ວິລະຊົນສີທອງ',
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
                    Navigator.pushNamed(context, '/lesson34');
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
                          'ບົດທີ37 ວັດພູຈຳປາສັກ',
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
                    Navigator.pushNamed(context, '/lesson37');
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
                          'ບົດທີ40 ບ້ານເມືອງຂອງເຮົາ',
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
                    Navigator.pushNamed(context, '/lesson40');
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
                          'ບົດທີ41 ເມືອງຫຼວງພະບາງ',
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
                    Navigator.pushNamed(context, '/lesson41');
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
                          'ບົດທີ42 ສ. ປ. ປ. ລາວ',
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
                    Navigator.pushNamed(context, '/lesson7');
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
                          'ບົດທີ43 ເປັດນ້ອຍ',
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
                    Navigator.pushNamed(context, '/lesson43');
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
                          'ບົດທີ45 ພູຜາປ່າດົງ',
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
                    Navigator.pushNamed(context, '/lesson45');
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
