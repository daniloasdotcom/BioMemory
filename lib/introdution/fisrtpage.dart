
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botões com Rolagem Horizontal'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 20), // Espaço à esquerda

            ParallelogramButton('Botão 1'),
            SizedBox(width: 20), // Espaço entre botões
            ParallelogramButton('Botão 2'),
            SizedBox(width: 20), // Espaço entre botões
            ParallelogramButton('Botão 3'),

            SizedBox(width: 20), // Espaço à direita
          ],
        ),
      ),
    );
  }
}

class ParallelogramButton extends StatelessWidget {
  final String text;

  ParallelogramButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // Largura do botão
      height: 60, // Altura do botão
      child: CustomPaint(
        painter: ParallelogramPainter(),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ParallelogramPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width - 40, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}