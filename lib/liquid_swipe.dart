import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLiquidSwipe extends StatefulWidget {
  const MyLiquidSwipe({super.key});

  @override
  State<MyLiquidSwipe> createState() => _MyLiquidSwipeState();
}

class _MyLiquidSwipeState extends State<MyLiquidSwipe> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: const Color.fromARGB(255, 85, 230, 222),
        child: Center(
          child: Text(
            'PAGE 1',
            style: GoogleFonts.permanentMarker(
              fontSize: 25,
            ),
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 161, 122, 235),
        child: Center(
          child: Text(
            'PAGE 2',
            style: GoogleFonts.permanentMarker(
              fontSize: 25,
            ),
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 216, 158, 81),
        child: Center(
          child: Text(
            'PAGE 3',
            style: GoogleFonts.permanentMarker(
              fontSize: 25,
            ),
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 227, 107, 107),
        child: Center(
          child: Text(
            'PAGE 4',
            style: GoogleFonts.permanentMarker(
              fontSize: 25,
            ),
          ),
        ),
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
        ),
      ),
    );
  }
}
