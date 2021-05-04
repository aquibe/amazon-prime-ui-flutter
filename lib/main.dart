import 'package:flutter/material.dart';

Color bg = Color(0xFF0F181E),
    text = Color(0xFF999999),
    blue = Color(0xff1184AC);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: bg,
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: PrimeAppBar(),
              ),
              Expanded(
                flex: 1,
                child: PrimeNavBar(),
              ),
              PrimeBanner(),
              Expanded(
                flex: 1,
                child: PrimeHeading('Watch next TV and Movies'),
              ),
              Expanded(
                flex: 1,
                child: Videos1(),
              ),
              Expanded(
                flex: 1,
                child: PrimeHeading('Recomended Movies'),
              ),
              Expanded(
                flex: 1,
                child: Videos2(),
              ),
              SizedBox(
                height: 20.0,
              ),
              PrimeBottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Image.asset('images/logo.jpeg'),
    );
  }
}

class PrimeNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Text(
            'TV Shows',
            style: TextStyle(
              color: text,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Text(
            'Movies',
            style: TextStyle(
              color: text,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Text(
            'Kids',
            style: TextStyle(
              color: text,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}

class PrimeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        './images/banner.jpeg',
      ),
    );
  }
}

class PrimeHeading extends StatelessWidget {
  String h;
  PrimeHeading(this.h);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20.0,
        bottom: 10.0,
      ),
      alignment: Alignment.bottomLeft,
      child: Text(
        h,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
        ),
      ),
    );
  }
}

class Videos1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Image.asset('./images/f3.jpeg'),
            SizedBox(
              width: 20,
            ),
            Image.asset('./images/f4.jpeg'),
            SizedBox(
              width: 20,
            ),
            Image.asset('./images/s2.jpeg'),
            SizedBox(
              width: 20,
            ),
            Image.asset('./images/f1.jpeg'),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class Videos2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Image.asset('./images/f2.jpeg'),
            SizedBox(
              width: 20,
            ),
            Image.asset('./images/f1.jpeg'),
            SizedBox(
              width: 20,
            ),
            Image.asset('./images/f4.jpeg'),
            SizedBox(
              width: 20,
            ),
            Image.asset('./images/f1.jpeg'),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class PrimeBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        right: 10.0,
      ),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(
                Icons.home_sharp,
                color: blue,
                size: 40.0,
              ),
              Text(
                'Home',
                style: TextStyle(
                  color: blue,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.search,
                color: text,
                size: 40.0,
              ),
              Text(
                'Find',
                style: TextStyle(
                  color: text,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.file_download,
                color: text,
                size: 40.0,
              ),
              Text(
                'Downloads',
                style: TextStyle(
                  color: text,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.person_pin,
                color: text,
                size: 40.0,
              ),
              Text(
                'MyStuff',
                style: TextStyle(
                  color: text,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
