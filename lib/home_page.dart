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
              padding: EdgeInsets.only(top: 30),
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
                    'Taif',
                    style: TextStyle(color:Colors.white.withOpacity(0.9),
                        fontSize: 40,
                        fontFamily: 'Kanit'),
                  ),
              SizedBox(
                height: 10,
              ),
              Text(
                'monday 14 03 2023 ',
                style: TextStyle(color:Colors.white.withOpacity(0.9),
                    fontSize: 20,
                    fontFamily: 'Lobster'),
              ),
               Image.asset(
                   'assets/icons/sun.png',
               width: size.width * 0.4,
               ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sunny',
                    style: TextStyle(color:Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w300 ,
                        fontFamily: 'Lobster'),
                  ),
              SizedBox(
                height: 5,
                ),
                  Text(
                    '30°',
                    style: TextStyle(color:Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500 ,
                        fontFamily: 'Lobster'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                    Expanded(
                        child: Column(children: [
                      Image.asset('assets/icons/wind.png',
                      width: size.width * 0.18
                        ,),
                      Text(
                        '15.5 Km/h',
                      style: TextStyle(
                        color: Colors.white,
                          fontFamily: 'Lobster',
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Wind',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontFamily: 'Lobster',
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                    )
                    ),
                      Expanded(child: Column(children: [
                        Image.asset('assets/icons/clouds.png',
                          width: size.width * 0.18
                          ,),
                        Text(
                          '50',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lobster',
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Humidity',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontFamily: 'Lobster',
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                      )
                      ),
                      Expanded(child: Column(children: [
                        Image.asset('assets/icons/wind-flag.png',
                          width: size.width * 0.18
                          ,),
                        Text(
                          'NE',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lobster',
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Wind Direction',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontFamily: 'Lobster',
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                      )
                      ),
                  ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Text(
                      'Gust',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontFamily: 'Kanit',
                        fontSize: 18),
                    ),
                    Text(
                      '20.0 Km/h',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Kanit',
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Gust',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: 'Kanit',
                          fontSize: 18),
                    ),
                    Text(
                      '20.0 Km/h',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Kanit',
                          fontSize: 20),
                    ),

                  ],
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
