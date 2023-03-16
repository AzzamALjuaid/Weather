import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/getLocation.dart';
import 'package:weather/weatherData.dart';

var dayInfo = DateTime.now();
var dateFormat = DateFormat('EEEE, d MM, yyyy').format(dayInfo);

class MyHomePage extends StatelessWidget {
  var client = WeatherData();
  var data;

  info() async{
    var position = await GetPosition();
    data = await client.getData(position.latitude, position.longitude);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
        future: info(),
        builder: ((context, snapshot){
          return Container(
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
                        '${data?.cityName}',
                        style: TextStyle(color:Colors.white.withOpacity(0.9),
                            fontSize: 55,
                            fontFamily: 'Kanit'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        dateFormat,
                        style: TextStyle(color:Colors.white.withOpacity(0.9),
                            fontSize: 20,
                            fontFamily: 'Lobster'),
                      ),
                      Image.network(
                          'https:${data?.icon}',
                        width: size.width * 0.38,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        '${data?.condition}',
                        style: TextStyle(color:Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w300 ,
                            fontFamily: 'Lobster'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.temp}°',
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
                                  '${data?.wind} Km/h',
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
                              '${data?.humidity}',
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
                              '${data?.wind_dir}',
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
                          '${data?.gust} Kp/h',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Kanit',
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Pressure',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'Kanit',
                              fontSize: 18),
                        ),
                        Text(
                          '${data?.pressure} hpa',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Kanit',
                              fontSize: 20),
                        ),

                      ],
                    ),
                    ),
                    Expanded(child: Column(
                      children: [
                        Text(
                          'UV',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'Kanit',
                              fontSize: 18),
                        ),
                        Text(
                          '${data?.uv}',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Kanit',
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Precipitation',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'Kanit',
                              fontSize: 18),
                        ),
                        Text(
                          '${data?.pricipe} mm',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Kanit',
                              fontSize: 20),
                        ),
                      ],
                    ),
                    ),
                    Expanded(child: Column(
                      children: [
                        Text(
                          'Wind',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'Kanit',
                              fontSize: 18),
                        ),
                        Text(
                          '${data?.wind} Km/h',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Kanit',
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Last Update',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'Kanit',
                              fontSize: 18),
                        ),
                        Text(
                          '${data?.last_update}',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Kanit',
                              fontSize: 15),
                        ),
                      ],
                    ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),)
    );
  }
}
