import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';

class Enzimas extends StatefulWidget {
  @override
  State<Enzimas> createState() => _EnzimasState();
}

class _EnzimasState extends State<Enzimas> {
  final ScrollController _scrollController = ScrollController();

  double screenHeight = 0.0; // Altura da tela atual

  bool showSection2 = false; // Variável para controlar a exibição da Seção 2
  bool showSection3 = false; // Variável para controlar a exibição da Seção 3
  bool showSection4 = false; // Variável para controlar a exibição da Seção 4
  bool showSection5 = false; // Variável para controlar a exibição da Seção 5
  bool showSection6 = false; // Variável para controlar a exibição da Seção 6
  bool showSection7 = false; // Variável para controlar a exibição da Seção 6
  bool showSection8 = false; // Variável para controlar a exibição da Seção 6
  bool showSection9 = false; // Variável para controlar a exibição da Seção 6
  bool showSection10 = false; // Variável para controlar a exibição da Seção 6
  bool showSection11 = false; // Variável para controlar a exibição da Seção 6
  bool showSection12 = false; // Variável para controlar a exibição da Seção 6
  bool showSection13 = false; // Variável para controlar a exibição da Seção 6
  bool showSectionFinal =
      false; // Variável para controlar a exibição da Seção 6

  bool respostaCorreta = false;

  void initState() {
    super.initState();
    _scrollController.addListener(_updateScreenHeight);

    print("Altura da tela após _updateScreenHeight ");
    print(screenHeight);
  }

  void _updateScreenHeight() {
    setState(() {
      screenHeight = MediaQuery.of(context).size.height;
    });
  }

  void _scrollToNextSection() {
    double appBarHeight = AppBar().preferredSize.height;
    print("A altura da Appbar:");
    print(appBarHeight);
    double statusBarHeight = MediaQuery.of(context).padding.top;
    print("A altura da área de notificaçã:");
    print(statusBarHeight);
    double totalHeight = appBarHeight + statusBarHeight;
    print("A altura total");
    print(totalHeight);

    print("Altura da tela inicio do _scrollToNextSection");
    print(screenHeight);

    screenHeight = MediaQuery.of(context).size.height;
    print("Agora o screenHeitght é:");
    print(screenHeight);

    double targetPosition =
        _scrollController.offset + (screenHeight - totalHeight);

    print("E o targetPositio é");
    print(targetPosition);

    if (!showSection2) {
      setState(() {
        showSection2 = true;
      });
    } else if (!showSection3) {
      setState(() {
        showSection3 = true;
      });
    } else if (!showSection4) {
      setState(() {
        showSection4 = true;
      });
    } else if (!showSection5) {
      setState(() {
        showSection5 = true;
      });
    } else if (!showSection6) {
      setState(() {
        showSection6 = true;
      });
    } else if (!showSection7) {
      setState(() {
        showSection7 = true;
      });
    } else if (!showSection8) {
      setState(() {
        showSection8 = true;
      });
    } else if (!showSection9) {
      setState(() {
        showSection9 = true;
      });
    } else if (!showSectionFinal) {
      setState(() {
        showSectionFinal = true;
      });
    }

    _scrollController.animateTo(
      targetPosition,
      duration: Duration(seconds: 2),
      curve: Curves.easeInOut,
    );
  }

  void _mostrarBotaoProximaSecao09() {
    setState(() {
      showSection9 = true;
    });
  }

  void _mostrarBotaoProximaSecao10() {
    setState(() {
      showSection10 = true;
    });
  }

  void _mostrarBotaoProximaSecao11() {
    setState(() {
      showSection11 = true;
    });
  }

  void _mostrarBotaoProximaSecao12() {
    setState(() {
      showSection12 = true;
    });
  }

  void _mostrarBotaoProximaFinal() {
    setState(() {
      showSectionFinal = true;
    });
  }

  void rolarTelaUmPouco() {
    double novoDeslocamento =
        _scrollController.offset + 1000.0; // Ajuste o valor conforme necessário
    _scrollController.animateTo(
      novoDeslocamento,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

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
              Icons.book_outlined,
              color: Color(0xFFE58E57),
            ),
            SizedBox(
              width: 20,
            ),
            const Text("Enzimas",
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
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                          'As enzimas são proteínas especializadas que atuam como catalisadores biológicos em células.  ',
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 14,
                              height: 2.0,
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                          'Essas moléculas desempenham um papel fundamental ao acelerar as reações químicas que ocorrem nas células, permitindo que elas aconteçam em velocidades compatíveis com os processos metabólicos necessários para a vida.',
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 14,
                              height: 2.0,
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                          'A seguir vamos conhecer algumas caaracterísticas importantes das enzimas. Vamos lá!!',
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 14,
                              height: 2.0,
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      SizedBox(
                        height: 30,
                      ),
                      /*
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Ajuste o raio conforme necessário
                        child: InteractiveViewer(
                          child: Image.asset('assets/images/lipidios/oils.jpg',
                              fit: BoxFit.cover, width: double.infinity),
                        ),
                      ),
                      */
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xFFa7e2dd), // Cor de fundo personalizada
                        ),
                        onPressed: () {
                          if (!showSection2) {
                            _scrollToNextSection();
                          }
                        },
                        child: Text('Próximo...',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 1.5,
                                color: Color(0xFF46171b)),
                            textAlign: TextAlign.justify),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),

              // Seção 2
              if (showSection2)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('Especificidade',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.center),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'Cada enzima é altamente específica para seu substrato, que é a molécula sobre a qual ela atua. Essa especificidade ocorre devido à forma tridimensional única da enzima, que se encaixa perfeitamente em seu substrato.',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection3) {
                              _scrollToNextSection();
                            }
                          },
                          child: Text('Próximo...',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xFF46171b)),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        /*
                        PerguntaComAlternativas01(
                          onRespostaCorreta: () {
                            _mostrarBotaoProximaSecao03();
                            rolarTelaUmPouco();
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        */
                        if (showSection3)
                          Column(
                            children: [
                              Container(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Catálise',
                                          style: TextStyle(
                                              fontFamily: 'Merriweather',
                                              fontSize: 14,
                                              height: 2.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.justify),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                          'As enzimas aceleram as reações químicas ao diminuir a energia de ativação necessária para que a reação ocorra. Isso permite que as reações biológicas aconteçam em temperaturas compatíveis com a vida.',
                                          style: TextStyle(
                                              fontFamily: 'Merriweather',
                                              fontSize: 14,
                                              height: 2.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.justify),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      /*
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Ajuste o raio conforme necessário
                                        child: InteractiveViewer(
                                          child: Image.asset(
                                              'assets/images/lipidios/oil_water.jpg',
                                              fit: BoxFit.cover,
                                              width: double.infinity),
                                        ),
                                      ),
                                      */
                                      SizedBox(
                                        height: 30,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(
                                              0xFFa7e2dd), // Cor de fundo personalizada
                                        ),
                                        onPressed: () {
                                          if (!showSection4) {
                                            _scrollToNextSection();
                                          }
                                        },
                                        child: Text('Próximo...',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                fontSize: 14,
                                                height: 1.5,
                                                color: Color(0xFF46171b)),
                                            textAlign: TextAlign.justify),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                ),

              // Seção 3
              /*
              if (showSection3)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            'Os lipídios desempenham diferentes funções em organismos vivos. Uma das principais é serem um meio de armazenamento de energia, servindo assim como fonte de energia. E o principal exemplo de mólecula lipídica com este tipo de função são os triglicerídios.',
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
                            _mostrarBotaoProximaSecao04();
                            rolarTelaUmPouco();
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        if (mostrarBotaoProximaSecao04)
                          Column(
                            children: [
                              Container(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Certa resposta!\n\nOs triglicerídeos, também chamados de triacilgliceróis, são compostor por 3 móleculas de ácidos graxos ligadas a uma molécula de glicerol',
                                          style: TextStyle(
                                              fontFamily: 'Merriweather',
                                              fontSize: 14,
                                              height: 2.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.justify),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Ajuste o raio conforme necessário
                                        child: InteractiveViewer(
                                          child: Image.asset(
                                              'assets/images/lipidios/acidos_graxos.png',
                                              fit: BoxFit.cover,
                                              width: double.infinity),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                          'Os triglicerídeos armazenam energia nas cadeias de carbono dos ácidos graxos, tornando-os uma reserva importante de energia para mamiferos.',
                                          style: TextStyle(
                                              fontFamily: 'Merriweather',
                                              fontSize: 14,
                                              height: 2.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.justify),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(
                                              0xFFa7e2dd), // Cor de fundo personalizada
                                        ),
                                        onPressed: () {
                                          if (!showSection4) {
                                            _scrollToNextSection();
                                          }
                                        },
                                        child: Text('Próximo...',
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
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              */
              // Seção 4
              if (showSection4)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('Reversibilidade',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'Embora muitas reações catalisadas por enzimas sejam direcionais, muitas enzimas também podem catalisar reações em ambas as direções, dependendo das condições do ambiente celular',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection5) {
                              _scrollToNextSection();
                            }
                          },
                          child: Text('Próximo...',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xFF46171b)),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(
                          height: 30,
                        )
                        /*
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o raio conforme necessário
                          child: InteractiveViewer(
                            child: Image.asset(
                                'assets/images/lipidios/lipidios.png',
                                fit: BoxFit.cover,
                                width: double.infinity),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        
                        PerguntaComAlternativas03(
                          onRespostaCorreta: () {
                            _mostrarBotaoProximaSecao05();
                            rolarTelaUmPouco();
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        */
                        /*
                        if (mostrarBotaoProximaSecao05)
                          Column(
                            children: [
                              Container(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Perfeito!! Os Fosfolipídios Possuem duas caudas hidrofóbicas (constituida majoritariamente por ácidos graxos) e uma cabeça hidrofílica (formada comumente por um grupo fosfato e um aminoalcool).',
                                          style: TextStyle(
                                              fontFamily: 'Merriweather',
                                              fontSize: 14,
                                              height: 2.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.justify),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                          'Essa estrutura única permite que os fosfolipídios formem a bicamada lipídica das membranas celulares, com a cabeça hidrofílica voltada para fora e as caudas hidrofóbicas voltadas para dentro.',
                                          style: TextStyle(
                                              fontFamily: 'Merriweather',
                                              fontSize: 14,
                                              height: 2.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.justify),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Ajuste o raio conforme necessário
                                        child: InteractiveViewer(
                                          child: Image.asset(
                                              'assets/images/lipidios/fosfolipidio.png',
                                              fit: BoxFit.cover,
                                              width: double.infinity),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(
                                              0xFFa7e2dd), // Cor de fundo personalizada
                                        ),
                                        onPressed: () {
                                          if (!showSection5) {
                                            _scrollToNextSection();
                                          }
                                        },
                                        child: Text('Próximo...',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                fontSize: 14,
                                                height: 1.5,
                                                color: Color(0xFF46171b)),
                                            textAlign: TextAlign.justify),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )

                          */
                      ],
                    ),
                  ),
                ),

              if (showSection5)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('Regulação',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'A atividade enzimática é regulada de várias maneiras nas células. Pode ser controlada por fatores como a concentração do substrato, a presença de moléculas reguladoras e mudanças no ambiente celular.',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection6) {
                              _scrollToNextSection();
                            }
                          },
                          child: Text('Próximo...',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xFF46171b)),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              if (showSection6)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('Desnaturação',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'As enzimas são sensíveis a mudanças extremas de temperatura e pH, o que pode alterar sua estrutura tridimensional e afetar sua capacidade de catalisar reações.',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection7) {
                              _scrollToNextSection();
                            }
                          },
                          child: Text('Próximo...',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xFF46171b)),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              if (showSection7)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('Cofatores e coenzimas',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'Algumas enzimas requerem cofatores (íons metálicos) ou coenzimas (moléculas orgânicas não proteicas) para funcionar adequadamente',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(0xFFa7e2dd), // Cor de fundo personalizada
                          ),
                          onPressed: () {
                            if (!showSection8) {
                              _scrollToNextSection();
                            }
                          },
                          child: Text('Próximo...',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xFF46171b)),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              if (showSection8)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                            'Questão 01',
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
                            _mostrarBotaoProximaSecao09();
                            rolarTelaUmPouco();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 30,
              ),
              if (showSection9)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                            'Questão 02',
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
                            _mostrarBotaoProximaSecao10();
                            rolarTelaUmPouco();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 30,
              ),
              if (showSection10)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                            'Questão 03',
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
                            _mostrarBotaoProximaSecao11();
                            rolarTelaUmPouco();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 30,
              ),
              if (showSection11)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                            'Questão 04',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 14,
                                height: 2.0,
                                color: Colors.white),
                            textAlign: TextAlign.justify),
                        SizedBox(
                          height: 30,
                        ),
                        PerguntaComAlternativas04(
                          onRespostaCorreta: () {
                            _mostrarBotaoProximaFinal();
                            rolarTelaUmPouco();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 30,
              ),
              if (showSectionFinal)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Text(
                        'Parabéns!!\n\nVocê chegou a fim desta lição!!\n\nFique de olho nas notificações do Professor para atualizar seu Aplicativo e aproveitar das novas lições que estão por vir!',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.justify),
                  ),
                ),
              SizedBox(
                height: 100,
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
      mensagemResposta = 'Certa resposta';
      widget.onRespostaCorreta();
    } else {
      mensagemResposta = 'Resposta errada';
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
              color: Color(0xFFE58E57),
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4)),
        ],
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
              'Qual é o papel das enzimas nas reações químicas biológicas?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Inibir reações químicas',
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
            title: Text('Acelerar reações químicas',
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
            title: Text(
                'Tornar as reações químicas irreversíveis',
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
          RadioListTile(
            title: Text(
                'Neutralizar reações químicas',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 4,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Cor de fundo personalizada
            ),
            onPressed: verificarResposta,
            child: Text('Verificar Resposta',
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
      mensagemResposta = 'Certa resposta';
      widget.onRespostaCorreta();
    } else {
      mensagemResposta = 'Resposta errada';
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
              color: Color(0xFFE58E57),
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4)),
        ],
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('O que significa a especificidade das enzimas em relação aos substratos?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('As enzimas podem atuar em qualquer substrato',
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
            title: Text('As enzimas só atuam em um tipo específico de substrato',
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
            title: Text('As enzimas são indiferentes aos substratos',
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
          RadioListTile(
            title: Text('As enzimas podem inativar diferentes substratos simultaneamente',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 4,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Cor de fundo personalizada
            ),
            onPressed: verificarResposta,
            child: Text('Verificar resposta',
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
    if (respostaSelecionada == 3) {
      mensagemResposta = 'Correta Resposta';
      widget.onRespostaCorreta();
    } else {
      mensagemResposta = 'Resposta Incorreta';
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
              color: Color(0xFFE58E57),
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4)),
        ],
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
              'Como a temperatura extrema pode afetar as enzimas?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Melhorar sua atividade',
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
            title: Text(
                'Não tem efeito sobre as enzimas',
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
            title: Text('Desnaturar e inativar as enzimas',
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
          RadioListTile(
            title: Text('Estabilizar as enzimas',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 4,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Cor de fundo personalizada
            ),
            onPressed: verificarResposta,
            child: Text('Verificar Resposta',
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

class PerguntaComAlternativas04 extends StatefulWidget {
  final VoidCallback onRespostaCorreta;

  PerguntaComAlternativas04({required this.onRespostaCorreta});

  @override
  _PerguntaComAlternativas04State createState() =>
      _PerguntaComAlternativas04State();
}

class _PerguntaComAlternativas04State extends State<PerguntaComAlternativas04> {
  int respostaSelecionada = 0;
  String mensagemResposta = '';

  void verificarResposta() {
    if (respostaSelecionada == 4) {
      mensagemResposta = 'Correta Resposta';
      widget.onRespostaCorreta();
    } else {
      mensagemResposta = 'Resposta Incorreta';
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
              color: Color(0xFFE58E57),
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4)),
        ],
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
              'O que são cofatores e coenzimas em relação às enzimas?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Substratos específicos',
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
            title: Text('Produtos finais da catálise',
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
            title: Text('Moléculas reguladoras',
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
          RadioListTile(
            title: Text('Moléculas auxiliares essenciais para a atividade enzimática',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify),
            value: 4,
            groupValue: respostaSelecionada,
            onChanged: (value) {
              setState(() {
                respostaSelecionada = value as int;
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Cor de fundo personalizada
            ),
            onPressed: verificarResposta,
            child: Text('Verificar Resposta',
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
