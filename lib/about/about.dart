import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  final Uri _url = Uri.parse('https://daniloas.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E4650),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.rocket,
              color: Color(0xFFE58E57),
            ),
            SizedBox(
              width: 20,
            ),
            const Text("Sobre o Aplicativo",
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 18,
                    color: Colors.white)),
          ],
        ),
        backgroundColor: const Color(0xFF2E4D59),
        toolbarHeight: 80,
        elevation: 0,
        shadowColor: mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
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
                    "Bio Memory é um aplicativo para aprendizagem de bioquímica usando principios da ciência cognitiva sobre aprendizagem",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "O Aplicativo está sendo desenvolvido pelo Professor Danilo Andrade.",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
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
                              'Professor Danilo',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2b1d0e)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: _launchUrl),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "No momento o aplicativo é distribuido gratuitamente objetivando dar suporte a alunos de graduação da Universidade Federal do Espírito Santo - Campus Alegre - para o desenvolvimento do racíocinio sobre bioquímica",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
