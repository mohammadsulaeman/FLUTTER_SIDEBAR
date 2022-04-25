import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_sidebar/detail.dart';

void main() {
  runApp(MaterialApp(
    title: "SideBar",
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String gambar1 =
      "https://media-exp1.licdn.com/dms/image/C5603AQFgTspx-53skw/profile-displayphoto-shrink_200_200/0/1644655145284?e=1652918400&v=beta&t=DfQf4JrJs4j__CZSC8CuvW6AoNdH3WwGRuiYcG8HUjg";
  String gambar2 =
      "https://www.greenscene.co.id/wp-content/uploads/2020/10/Naruto-10.jpg";
  late String backup;

  String nama1 = "mohammadSulaeman";
  String nama2 = "Sulaman";
  late String backupnama;

  String email1 = "email@gmail.com";
  String email2 = "email23@gmail.com";
  late String emailBackup;
  void gantiUser() {
    this.setState(() {
      backup = gambar1;
      gambar1 = gambar2;
      gambar2 = backup;

      backupnama = nama1;
      nama1 = nama2;
      nama2 = backupnama;

      emailBackup = email1;
      email1 = email2;
      email2 = emailBackup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daftar SideBar (DRAWER)",
          style: TextStyle(fontSize: 18.0, fontFamily: "Times New Roman"),
        ),
        backgroundColor: Colors.red[700],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                nama1,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                    color: Colors.black,
                    fontFamily: "Tahoma"),
              ),
              accountEmail: Text(
                email1,
                style: TextStyle(
                    fontFamily: "Tahoma",
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 15.0),
              ),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Detail(
                            nama: nama1,
                            gambar: gambar1,
                            email: email1,
                          )));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(gambar1),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media.suara.com/pictures/970x544/2019/07/17/20725-teknologi-digital.jpg"),
                      fit: BoxFit.cover)),
              otherAccountsPictures: [
                GestureDetector(
                  onTap: () => gantiUser(),
                  child: new CircleAvatar(
                    backgroundImage: NetworkImage(gambar2),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text("Setting"),
              trailing: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
