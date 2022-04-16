import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Skillbox Flutter - Module 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              items: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Local image',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/images/mememe.svg',
                      height: 100,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Network image',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    SvgPicture.network(
                      'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/mememe.svg',
                      height: 100,
                    ),
                  ],
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
