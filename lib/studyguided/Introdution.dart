import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';

class Introdution extends StatefulWidget {
  @override
  State<Introdution> createState() => _IntrodutionState();
}

class _IntrodutionState extends State<Introdution> {
  final ScrollController _scrollController = ScrollController();

  bool showSection2 = false; // Variável para controlar a exibição da Seção 2
  bool showSection3 = false; // Variável para controlar a exibição da Seção 3
  bool showSection4 = false; // Variável para controlar a exibição da Seção 4
  
  List<double> sectionHeights = [0.0, 0.0, 0.0];
  int currentSection = 0;
  
  bool respostaCorreta = false;
  bool mostrarBotaoProximaSecao02 = false;
  bool mostrarBotaoProximaSecao03 = false;
  bool mostrarBotaoProximaSecao04 = false;

  // Função para rolar a página para a Seção 2

  void _scrollToSection2() {
    setState(() {
      showSection2 = true;
    });

    _scrollController.animateTo(
      MediaQuery.of(context)
          .size
          .height * 1.35, // Rolando para o início da próxima seção
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToSection3() {
    setState(() {
      showSection3 = true;
    });

    _scrollController.animateTo(
      MediaQuery.of(context).size.height *
          2.35, // Rolando para o início da próxima seção
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToSection4() {
    setState(() {
      showSection4 = true;
    });

    _scrollController.animateTo(
      MediaQuery.of(context).size.height *
          3, // Rolando para o início da próxima seção
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _mostrarBotaoProximaSecao02() {
    setState(() {
      mostrarBotaoProximaSecao02 = true;
    });
  }

  void _mostrarBotaoProximaSecao03() {
    setState(() {
      mostrarBotaoProximaSecao03 = true;
    });
  }

  void _mostrarBotaoProximaSecao04() {
    setState(() {
      mostrarBotaoProximaSecao04 = true;
    });
  }

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
          "Cell Study",
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
      body: ListView(
        controller: _scrollController,
        children: [
          Column(
            children: <Widget>[
              // Seção 1
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                //height: MediaQuery.of(context).size.height, // Altura da tela
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'There are two main types of cells: prokaryotic cells and eukaryotic cells. Prokaryotic cells are generally smaller and simpler, while eukaryotic cells are larger and more complex',
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 14,
                              height: 2.0,
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      SizedBox(
                        height: 30,
                      ),
                      PerguntaComAlternativas01(
                        onRespostaCorreta: () {
                          _mostrarBotaoProximaSecao02();
                        },
                      ),
                      if (mostrarBotaoProximaSecao02)
                        Column(
                          children: [
                            SizedBox(height: 20,),
                            Container(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'This is because the main difference between prokaryotic and eukaryotic cells lies in their complexity. Prokaryotic cells are generally simpler, lacking a true nucleus and many membrane-bound organelles, while eukaryotic cells are more complex, containing a nucleus and various membrane-bound organelles that compartmentalize different cellular functions. Understanding this distinction is fundamental in the study of cell biology.',
                                        style: TextStyle(
                                            fontFamily: 'Merriweather',
                                            fontSize: 14,
                                            height: 2.0,
                                            color: Colors.white),
                                        textAlign: TextAlign.justify),
                                    SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(
                                    0xFFa7e2dd), // Cor de fundo personalizada
                              ),
                              onPressed: () {
                                if (!showSection2) {
                                  _scrollToSection2();
                                }
                              },
                              child: Text('Next...',
                                  style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xFF46171b)),
                                  textAlign: TextAlign.justify),
                            ),
                            SizedBox(height: 20,),
                          ],
                        )
                    ],
                  ),
                ),
              ),

              // Seção 2
              if (showSection2)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  height: MediaQuery.of(context).size.height, // Altura da tela
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            'Cells contain various structures and organelles that perform specific functions. Some of the most important cellular components include the nucleus, plasma membrane, cytoplasm, and mitochondria.',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        PerguntaComAlternativas02(
                          onRespostaCorreta: () {
                            _mostrarBotaoProximaSecao03();
                          },
                        ),
                        if (mostrarBotaoProximaSecao03)
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xFFa7e2dd), // Cor de fundo personalizada
                            ),
                            onPressed: () {
                              if (!showSection3) {
                                _scrollToSection3();
                              }
                            },
                            child: Text('Next...',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 14,
                                    height: 1.5,
                                    color: Color(0xFF46171b)),
                                textAlign: TextAlign.justify),
                          ),
                      ],
                    ),
                  ),
                ),

              // Seção 3
              if (showSection3)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  height: MediaQuery.of(context).size.height, // Altura da tela
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            'Cellular metabolism is the set of chemical reactions that occur in a cell to maintain life. This includes protein synthesis, energy production and regulation of chemical balance.',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        PerguntaComAlternativas03(
                          onRespostaCorreta: () {
                            _mostrarBotaoProximaSecao04();
                          },
                        ),
                        if (mostrarBotaoProximaSecao04)
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xFFa7e2dd), // Cor de fundo personalizada
                            ),
                            onPressed: () {
                              if (!showSection4) {
                                _scrollToSection4();
                              }
                            },
                            child: Text('Next...',
                                style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 14,
                                    height: 1.5,
                                    color: Color(0xFF46171b)),
                                textAlign: TextAlign.justify),
                          ),
                      ],
                    ),
                  ),
                ),

              // Seção 4
              if (showSection4)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  height: MediaQuery.of(context).size.height, // Altura da tela
                  child: Center(
                    child: Text('Seção 04',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.justify),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class PerguntaComAlternativas01 extends StatefulWidget {
  final VoidCallback onRespostaCorreta;

  PerguntaComAlternativas01({required this.onRespostaCorreta});

  @override
  _PerguntaComAlternativas01State createState() =>
      _PerguntaComAlternativas01State();
}

class _PerguntaComAlternativas01State extends State<PerguntaComAlternativas01> {
  int respostaSelecionada = 0;
  String mensagemResposta = '';

  void verificarResposta() {
    if (respostaSelecionada == 2) {
      mensagemResposta = 'Right answer';
      widget.onRespostaCorreta();
    } else {
      mensagemResposta = 'Incorrect answer';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
              'What is the main difference between prokaryotic and eukaryotic cells?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Size',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 1,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          RadioListTile(
            title: Text('Complexity',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 2,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          RadioListTile(
            title: Text('Presence of a nucleus',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 3,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Cor de fundo personalizada
            ),
            onPressed: verificarResposta,
            child: Text('Check Answer',
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 14,
                    height: 1.5,
                    color: Color(0xFF2b1d0e)),
                textAlign: TextAlign.center),
          ),
          Text(mensagemResposta),
        ],
      ),
    );
  }
}

class PerguntaComAlternativas02 extends StatefulWidget {
  final VoidCallback onRespostaCorreta;

  PerguntaComAlternativas02({required this.onRespostaCorreta});

  @override
  _PerguntaComAlternativas02State createState() =>
      _PerguntaComAlternativas02State();
}

class _PerguntaComAlternativas02State extends State<PerguntaComAlternativas02> {
  int respostaSelecionada = 0;
  String mensagemResposta = '';

  void verificarResposta() {
    if (respostaSelecionada == 2) {
      mensagemResposta = 'Right answer';
      widget.onRespostaCorreta();
    } else {
      mensagemResposta = 'Incorrect answer';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('What is the function of the nucleus in a eukaryotic cell?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Energy production',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 1,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          RadioListTile(
            title: Text('Storage of genetic information',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 2,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          RadioListTile(
            title: Text('Nutrient digestion',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 3,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Cor de fundo personalizada
            ),
            onPressed: verificarResposta,
            child: Text('Check Answer',
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 14,
                    height: 1.5,
                    color: Color(0xFF2b1d0e)),
                textAlign: TextAlign.center),
          ),
          Text(mensagemResposta),
        ],
      ),
    );
  }
}

class PerguntaComAlternativas03 extends StatefulWidget {
  final VoidCallback onRespostaCorreta;

  PerguntaComAlternativas03({required this.onRespostaCorreta});

  @override
  _PerguntaComAlternativas03State createState() =>
      _PerguntaComAlternativas03State();
}

class _PerguntaComAlternativas03State extends State<PerguntaComAlternativas03> {
  int respostaSelecionada = 0;
  String mensagemResposta = '';

  void verificarResposta() {
    if (respostaSelecionada == 2) {
      mensagemResposta = 'Right answer';
      widget.onRespostaCorreta();
    } else {
      mensagemResposta = 'Incorrect answer';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
              'Which organelle plays a crucial role in energy production in a cell?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Golgi apparatus',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 1,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          RadioListTile(
            title: Text('Mitochondria',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 2,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          RadioListTile(
            title: Text('Ribosome',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 3,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Cor de fundo personalizada
            ),
            onPressed: verificarResposta,
            child: Text('Check Answer',
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 14,
                    height: 1.5,
                    color: Color(0xFF2b1d0e)),
                textAlign: TextAlign.center),
          ),
          Text(mensagemResposta),
        ],
      ),
    );
  }
}

class CommentSection01 extends StatefulWidget {
  const CommentSection01({Key? key}) : super(key: key);

  @override
  State<CommentSection01> createState() => _CommentSection01State();
}

class _CommentSection01State extends State<CommentSection01> {
  final ScrollController _scrollController = ScrollController();

  bool showSection2 = true; // Variável para controlar a exibição da Seção 2

  void _scrollToSection2() {
    setState(() {
      showSection2 = true;
    });
    _scrollController.animateTo(
      MediaQuery.of(context).size.height, // Altura da tela
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                  'There are two main types of cells: prokaryotic cells and eukaryotic cells. Prokaryotic cells are generally smaller and simpler, while eukaryotic cells are larger and more complex',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 14,
                      height: 2.0,
                      color: Colors.white),
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFa7e2dd), // Cor de fundo personalizada
        ),
        onPressed: () {
          if (!showSection2) {
            _scrollToSection2();
          }
        },
        child: Text('Next...',
            style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
                color: Color(0xFF46171b)),
            textAlign: TextAlign.justify),
      ),
    ]);
  }
}
