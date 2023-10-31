import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/custom_rotation.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:app_bioquimica/viasmetabolicas/reacao2.dart';
import 'package:flutter/material.dart';

import '../pages/custom_page_route.dart';

class Reacao1 extends StatelessWidget {
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
            SizedBox(height: 30),
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
              child: Image.asset('assets/images/1.png',
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
                    await Navigator.of(context).push(
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
                      Text('Gliceraldeido-3-fosfato',
                          style: TextStyle(color: Colors.black, fontSize: 10)),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/frutose6fosfato.png',
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 10),
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
                      CustomPageRoute(exitPage: this, enterPage: Reacao2()),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Glicose-6-fosfato',
                          style: TextStyle(color: Colors.black, fontSize: 10)),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/glicose6fosfato.png',
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
