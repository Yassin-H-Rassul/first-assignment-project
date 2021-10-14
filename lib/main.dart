import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './custom_app_bar.dart';
import './worker_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wassta Application',
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[900],
              ),
            ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.cyan[900],
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _pictures = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg'
  ];

  final List<String> workerDescription = const [
    'موستەفا احمەد حاجی',
    'ژمارەی مۆبایل: ٠٧٥٠٣٣٣٣٣٣٣',
    'پیشە: جامچی',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const Drawer(),
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 167,
          ),
          // CarouselSlider(
          //   items: _pictures.map((imagePath) {
          //     return Container(
          //       margin: const EdgeInsets.symmetric(horizontal: 4),
          //       height: 300,
          //       width: 600,
          //       child: Image.asset(
          //         imagePath,
          //         fit: BoxFit.cover,
          //       ),
          //     );
          //   }).toList(),
          //   options: CarouselOptions(
          //     aspectRatio: 16 / 9,
          //   ),
          // ),
          WorkerItem(workerDescription),
        ],
      ),
      // const Center(
      //   child: Text('hello'),
      // ),
    );
  }
}
