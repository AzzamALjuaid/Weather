import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: size.height * 0.75,
              width: size.width,
              margin: EdgeInsets.only(right: 9, left: 9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF4CA1AF),
                    Color(0xFFC4E0E5),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.1,0.80],
                )
              ),
              child: Column(
                children: [
                  Text(
                    'Constantine',
                    style: TextStyle(color:Colors.white,
                        fontSize: 35,
                        fontFamily: 'Kanit' ),
                  )
                ],
              ),
            )
          ],
        ),

      ),

    );
  }
}
