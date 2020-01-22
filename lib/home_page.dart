import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:test_project/models/estates.dart';
import 'package:test_project/widgets/estate_carousel.dart';
import 'package:test_project/widgets/home_carousel.dart';
// import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentTab = 0;
  // int _current = 0;
  List imgList = [
    'assets/images/youngLandlord1.jpg',
    'assets/images/youngLandlord2.jpg',
    'assets/images/planToWinHome.jpg',
    'assets/images/lemonFriday.jpg',
  ];
  Widget slideShow  = Container(
    child: Carousel(
      boxFit: BoxFit.fill,
      images: [
        AssetImage('assets/images/youngLandlord1.jpg'),
        AssetImage('assets/images/youngLandlord2.jpg'),
        AssetImage('assets/images/planToWinHome.jpg'),
        AssetImage('assets/images/lemonFriday.jpg'),
      ],
      autoplay: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width/2,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Stack(
                children: <Widget>[
                  CarouselSlider(
                    height: 400.0,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    reverse: false,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    onPageChanged: (index){
                      // setState(() {
                      //   _current = index;
                      // });
                    },
                    items: imgList.map((imgUrl){
                      return Builder(
                        builder: (BuildContext context){
                          return Container(
                            width: MediaQuery.of(context).size.height/2,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(imgUrl),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10.0,),
            EstateCarousel(),
            HomeCarousel(),
            // SizedBox(height: 10.0,),
            EstateCarousel(),
            HomeCarousel(),
            
          ],
        )
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _currentTab,
      //   onTap: (int value){
      //     setState(() {
      //       _currentTab = value;
      //     });
      //   },
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         size: 20.0,
      //       ),
      //       title: Text('Home')
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         size: 20.0,
      //       ),
      //       title: Text('Estates')
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         size: 20.0,
      //       ),
      //       title: Text('Homes')
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.favorite,
      //         size: 20.0,
      //       ),
      //       title: Text('Favorite')
      //     ),
      //   ],
      // ),
    );
  }
}