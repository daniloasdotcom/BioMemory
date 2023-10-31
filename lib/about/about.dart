import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF46171b),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "About This Project",
          style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 20,
              color: Color(0xFF2b1d0e)),
          textAlign: TextAlign.center,
        ),
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
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 40),

            // Introduction Text
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              child: Column(
                children: [
                  Text(
                    "Bio Memory is an application designed to learn Biochemistry using cognitive science-based approaches to learning",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  // First bottom of options - about support
                  Container(
                    height: 120,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFa7e2dd),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.brown,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)),
                      ],
                    ),
                    child: TextButton(
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.piggyBank,
                            size: 40,
                            color: Color(0xFF2b1d0e),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            'Support this Project',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2b1d0e)),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),

                  const Expanded(child: SizedBox()),

                  // Second bottom of options - about the professor
                  Container(
                    height: 120,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFa7e2dd),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.brown,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)),
                      ],
                    ),
                    child: TextButton(
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.chalkboardTeacher,
                            size: 40,
                            color: Color(0xFF2b1d0e),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            'The Professor Danilo',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2b1d0e)),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
