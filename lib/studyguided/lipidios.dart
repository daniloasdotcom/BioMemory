import 'package:app_bioquimica/flashcards/constantes.dart';
import 'package:app_bioquimica/pages/home.page.dart';
import 'package:flutter/material.dart';

class Lipidios extends StatefulWidget {
  @override
  State<Lipidios> createState() => _LipidiosState();
}

class _LipidiosState extends State<Lipidios> {
  final ScrollController _scrollController = ScrollController();

  double screenHeight = 0.0; // Altura da tela atual

  bool showSection2 = false; // Variável para controlar a exibição da Seção 2
  bool showSection3 = false; // Variável para controlar a exibição da Seção 3
  bool showSection4 = false; // Variável para controlar a exibição da Seção 4
  bool showSection5 = false; // Variável para controlar a exibição da Seção 5
  bool showSection6 = false; // Variável para controlar a exibição da Seção 5

  bool respostaCorreta = false;
  bool mostrarBotaoProximaSecao02 = false;
  bool mostrarBotaoProximaSecao03 = false;
  bool mostrarBotaoProximaSecao04 = false;
  bool mostrarBotaoProximaSecao05 = false;
  bool mostrarBotaoProximaSecao06 = false;

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
    }

    _scrollController.animateTo(
      targetPosition,
      duration: Duration(seconds: 2),
      curve: Curves.easeInOut,
    );
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

  void _mostrarBotaoProximaSecao05() {
    setState(() {
      mostrarBotaoProximaSecao05 = true;
    });
  }

  void _mostrarBotaoProximaSecao06() {
    setState(() {
      mostrarBotaoProximaSecao06 = true;
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
            const Text("Lipídios",
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
                          'O grupo de moléculas orgânicas chamadas de lipídios possui papéis cruciais nos seres vivos. Neste estudo dirigido, exploraremos os diferentes tipos de lipídios, suas funções e sua importância na bioquímica. ',
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
                          child: Image.asset('assets/images/lipidios/oils.jpg',
                              fit: BoxFit.cover, width: double.infinity),
                        ),
                      ),
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
                        Text(
                            'Uma característica comum entre as móleculas lipídicas é o fato delas serem insolúveis em água, porém sóluveis em solventes orgânicos devido a suas caracterítica apolar.',
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
                            'Tal insolubilidade em água é um fator importante para que os lipídios exerçam funções fundamentais como componentes da membrana celular e também como solvente de vitaminas lipossolúveis como é o caso das vitaminas A, D, E e K.',
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
                            _mostrarBotaoProximaSecao03();
                            rolarTelaUmPouco();
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        if (mostrarBotaoProximaSecao03)
                          Column(
                            children: [
                              Container(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Exatamente, os Lipídios são insolúveis em água. Esta é uma característica fundamental dos lipídios; eles não se misturam bem com a água devido à sua natureza hidrofóbica.',
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
                                          'Tente, por exemplo, misturar água com óleo. Aposto que eles não se misturaram. Isso ocorre por que óleo e gorduras são ricos em lipídios.',
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
                                              'assets/images/lipidios/oil_water.jpg',
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
                        Text(
                            'Já mencionamos que existem vários tipos de lipídios, cada um com características distintas e funções. Por exemplo, os fosfolipídios são essenciais na formação das membranas celulares.',
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
                        Text(
                            'O metabolismo de lipídios que contém ácidos graxo envolve a quebra (catabolismo) de ácidos graxos para a produção de energia e a síntese (anabolismo) de lipídios quando necessário.',
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
                            _mostrarBotaoProximaSecao06();
                            rolarTelaUmPouco();
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        if (mostrarBotaoProximaSecao06)
                          Column(
                            children: [
                              Container(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Exatamente! A beta-oxidação é o processo pelo qual os ácidos graxos provenientes de móleculas lipídicas são quebrados na mitocôndria a cada 2 carbonos para gerar energia na forma de ATP.',
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
              if (showSection6)
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
                  child: Center(
                    child: Text('Parabéns!!\n\nVocê chegou a fim desta lição!!\n\nFique de olho nas notificações do Professor para atualizar seu Aplicativo e aproveitar das novas lições que estão por vir!',
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
              'Qual das seguintes afirmações descreve corretamente a solubilidade dos lipídios em água?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Lipídios são solúveis em água',
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
            title: Text('Lipídios são insolúveis em água.',
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
                'A solubilidade de lipídios em água varia dependendo do tipo de lipídio.',
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
          Text('Qual é uma das funções principais dos triglicerídeos?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Construção de membranas celulares',
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
            title: Text('Armazenamento de energia',
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
            title: Text('Transporte de oxigênio',
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
    if (respostaSelecionada == 2) {
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
              'Olhe para a figura acima. Qual é uma característica distintiva dos fosfolipídios?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('São solúveis em água',
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
                'Possuem duas caudas hidrofóbicas e uma cabeça hidrofílica',
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
            title: Text('São a principal fonte de energia',
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
              'Qual das três opções a seguir você acredita ser o processo pelo qual os ácidos graxos são quebrados para produzir energia?',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 14,
                height: 1.5,
              ),
              textAlign: TextAlign.justify),
          RadioListTile(
            title: Text('Glicólise',
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
            title: Text('Lipogênese',
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
            title: Text('Beta-oxidação',
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
