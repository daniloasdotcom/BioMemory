import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/flashcards/flashcards.aula.01.dart';
import 'package:app_bioquimica/flashcards/flashcards.aula.02.dart';
import 'package:app_bioquimica/flashcards/flashcards.aula.03.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';

class FlashCardsOpcoes extends StatelessWidget {
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
              Icons.dashboard,
              color: Color(0xFFE58E57),
            ),
            SizedBox(
              width: 20,
            ),
            const Text("FlashCards",
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
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/fundo03.jpg'), // Substitua pelo caminho da sua imagem
                fit: BoxFit.cover,
              ),
            ),
            foregroundDecoration: BoxDecoration(
              color: Color.fromRGBO(43, 70, 80, 0.6),
            ),
          ),
          SingleChildScrollView(
              child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextButton(
                child: const Text(
                  'Escolha um dos cards a seguir',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const FlashCards01();
                  }));
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 140,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(5, 5)),
                      ],
                    ),
                    child: TextButton(
                      child: const Text(
                        'Conceitos\nTurma BL01',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2b1d0e)),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return FlashCards01();
                            },
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.ease;
                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                            transitionDuration: Duration(milliseconds: 1500),
                          ),
                        );
                      },
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    height: 140,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(5, 5)),
                      ],
                    ),
                    child: TextButton(
                      child: const Text(
                        'Conceitos\nTurma BB1/BB2',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2b1d0e)),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return FlashCards02();
                            },
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.ease;
                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                            transitionDuration: Duration(milliseconds: 1500),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 140,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(5, 5)),
                      ],
                    ),
                    child: TextButton(
                      child: const Text(
                        'Para Turma BL01\n\nAminoácido e Proteínas',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2b1d0e)),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return FlashCards03();
                            },
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.ease;
                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                            transitionDuration: Duration(milliseconds: 1500),
                          ),
                        );
                      },
                      
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    height: 140,
                    width: 140,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(5, 5)),
                      ],
                    ),
                    child: TextButton(
                      child: const Text(
                        'Em Brever um novo Card Aqui',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2b1d0e)),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
