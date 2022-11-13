import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'package:swiper/data.dart';

class swiper extends StatefulWidget {
  @override
  State<swiper> createState() => _swiperState();
}

class _swiperState extends State<swiper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 44,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'Solar System',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 24,
                            color: Color.fromARGB(255, 255, 219, 254),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                    onChanged: (value) {},
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Image.asset('assets/drop_down_icon.png'),
                    ),
                    underline: SizedBox(),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              child: Swiper(
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.CUSTOM,
                  pagination: SwiperPagination(builder: DotSwiperPaginationBuilder()),
                  customLayoutOption: new CustomLayoutOption(
      startIndex: -1,
      stateCount: 3
  ).addRotate([
    -45.0/180,
    0.0,
    45.0/180
  ]).addTranslate([
    new Offset(-370.0, -40.0),
    new Offset(0.0, 0.0),
    new Offset(370.0, -40.0)
  ]),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: <Widget>[
                         Column(
                          children:<Widget> [
                          
                          SizedBox(height:100
                          ,width: 100,),
                          Card(
                            
                            elevation: 8,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)
                            ),
                                  
                          
                              
                                          
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                SizedBox(height: 100
                                ,width: 100,),
                                Text(planets[index].name,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 44,
                                              color: const Color(0xff47455f),
                                              fontWeight: FontWeight.w900,),
                                              textAlign: TextAlign.left),
                                              Text( 'Solar System',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 23,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(height:100,
                                          width: 100,),
                              ]),
                            ),
                          )
                        ]
                        ),
          Image.asset(planets[index].iconImage),
          ],

                    );
                  }),
            )
          ],
        )), //adjusts the content of the app according to the screen
      ),
    );
  }
}
