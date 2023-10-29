import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/custom_page_route.dart';
import 'package:app_bioquimica/pages/custom_rotation.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:app_bioquimica/viasmetabolicas/reacao1.dart';
import 'package:app_bioquimica/viasmetabolicas/reacao4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class Reacao3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Bio Memory 2022/2",
            style: TextStyle(
                fontFamily: 'Merriweather', fontSize: 15, color: Colors.black)),
        backgroundColor: const Color(0xFFa7e2dd),
        toolbarHeight: 80,
        elevation: 5,
        shadowColor: mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(height: 27),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text('Qual é a molécula resultante da reação a seguir?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Merriweather'),
                    textAlign: TextAlign.center)),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Image.asset('assets/images/3.png',
                  fit: BoxFit.cover, width: double.infinity),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.all(60),
                              padding: EdgeInsets.all(30),
                              height: 90,
                              decoration: BoxDecoration(
                                  color: Color(0xFF6b8e23),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90))),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.check,
                                              color: Colors.white, size: 30),
                                        ]),
                                  )
                                ],
                              )),
                        ],
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ));
                    await Navigator.of(context).push(
                      CustomPageRoute(exitPage: this, enterPage: Reacao4()),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Frutose-1,6-bifosfato',
                          style: TextStyle(color: Colors.black, fontSize: 10)),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/frutose16fosfato.png',
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                /*
                Container(
                  height: 180,
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: const Color(0xFFa7e2dd)),
                        child: TextButton(
                            onPressed: () => Navigator.of(context).push(
                                  CustomPageRoute(
                                      exitPage: this, enterPage: SecondPage()),
                                ),
                            child: const Text(
                              'Gliceraldeido-3-Fosfato',
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const SizedBox(),
                      Container(
                        height: 90,
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/gliceraldeido.png',
                          width: 80,
                        ),
                      )
                    ],
                  ),
                ),
                */

                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () async {
                    await ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 1),
                      content: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.all(60),
                              padding: EdgeInsets.all(30),
                              height: 90,
                              decoration: BoxDecoration(
                                  color: Color(0xFFC72C41),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90))),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.close,
                                              color: Colors.white, size: 30),
                                        ]),
                                  )
                                ],
                              )),
                        ],
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ));
                    Navigator.of(context).push(
                      RotationRoute(exitPage: this, enterPage: Reacao1()),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Frutose-6-fosfato',
                          style: TextStyle(color: Colors.black, fontSize: 10)),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/glicose.png',
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),

                /*
                Container(
                  height: 180,
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: const Color(0xFFa7e2dd)),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Glicose',
                                style: TextStyle(color: Colors.black))),
                      ),
                      const SizedBox(),
                      Container(
                        height: 90,
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/glicose.png',
                          width: 80,
                        ),
                      )
                    ],
                  ),
                ),
                */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
