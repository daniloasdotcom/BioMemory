import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/introdution/teste.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';

class OpcoesMapaMetabolico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E4650),
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          title: const Text("Vias Bioquímicas",
              style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 16,
                  color: Colors.white)),
          backgroundColor: const Color(0xFF2E4D59),
          toolbarHeight: 80,
          elevation: 0,
          shadowColor: mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
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
        ],),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/fundo02.jpg'), // Substitua pelo caminho da sua imagem
                fit: BoxFit.cover,
              ),
            ),
            foregroundDecoration: BoxDecoration(
                  color: Color.fromRGBO(43, 70, 80, 0.8),
                ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2D6BD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MinhaPagina();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
                        ),
                      );
                    },
                    icon: const Icon(Icons.device_hub,
                        color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size(10, 50),
                    ),
                    label: const Text(
                      "Glicolise",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2D6BD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MinhaPagina();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
                        ),
                      );
                    },
                    icon: const Icon(Icons.device_hub,
                        color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size(10, 50),
                    ),
                    label: const Text(
                      "Ciclo de Krebs",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2D6BD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MinhaPagina();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
                        ),
                      );
                    },
                    icon: const Icon(Icons.device_hub,
                        color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size(10, 50),
                    ),
                    label: const Text(
                      "Cadeia Respiratória",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2D6BD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MinhaPagina();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
                        ),
                      );
                    },
                    icon: const Icon(Icons.device_hub,
                        color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size(10, 50),
                    ),
                    label: const Text(
                      "Fermentação Álcoolica",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2D6BD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MinhaPagina();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
                        ),
                      );
                    },
                    icon: const Icon(Icons.device_hub,
                        color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size(10, 50),
                    ),
                    label: const Text(
                      "Fermentação Etílica",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2D6BD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MinhaPagina();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
                        ),
                      );
                    },
                    icon: const Icon(Icons.device_hub,
                        color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size(10, 50),
                    ),
                    label: const Text(
                      "Gliconeogênese",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2D6BD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MinhaPagina();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
                        ),
                      );
                    },
                    icon: const Icon(Icons.device_hub,
                        color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size(10, 50),
                    ),
                    label: const Text(
                      "Glicogenólise",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2D6BD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return MinhaPagina();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
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
                        ),
                      );
                    },
                    icon: const Icon(Icons.device_hub,
                        color: Color(0xFF2b1d0e)),
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size(10, 50),
                    ),
                    label: const Text(
                      "Glicogênese",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 12,
                          color: Color(0xFF2b1d0e)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),

      /*
      Center(
        child: ListView(
          children: [
            const SizedBox(height: 40),
            const Icon(Icons.device_hub, color: Colors.white, size: 60),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFa7e2dd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return MinhaPagina();
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
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
                    ),
                  );
                },
                /*
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MinhaPagina();
                  }));
                },
                */
                icon:
                    const Icon(Icons.circle_rounded, color: Color(0xFF2b1d0e)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Gliconeogênese",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Color(0xFF2b1d0e)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}
