import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final radius = constraints.maxWidth / 2;
            return Center(
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.red,
                      size: radius / 3,
                    ),
                    Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.red,
                      size: radius / 2,
                    ),
                    SizedBox(height: radius / 10),
                    Text(
                      'Alerta de Pedestre! ATENÇÃO!',
                      style: TextStyle(
                        fontSize: radius / 10,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: radius / 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Cancelar'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onPrimary: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
