import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLiquidSwipe extends StatefulWidget {
  const MyLiquidSwipe({super.key});

  @override
  State<MyLiquidSwipe> createState() => _MyLiquidSwipeState();
}

class _MyLiquidSwipeState extends State<MyLiquidSwipe> {
  final controller = LiquidController();
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 189, 229, 227),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PAGE 1',
              style: GoogleFonts.permanentMarker(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            TextButton(
              onPressed: () {
                controller.jumpToPage(page: 3);
              },
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 161, 122, 235),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PAGE 2',
              style: GoogleFonts.permanentMarker(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            TextButton(
              onPressed: () {
                controller.animateToPage(page: 3);
              },
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 216, 158, 81),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PAGE 3',
              style: GoogleFonts.permanentMarker(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            TextButton(
              onPressed: () {
                controller.jumpToPage(page: 3);
              },
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 227, 107, 107),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PAGE 4',
              style: GoogleFonts.permanentMarker(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            TextButton(
              onPressed: () {
                controller.jumpToPage(page: 3);
              },
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          liquidController: controller,
          fullTransitionValue: 600,
          //initialPage: 1,
          slideIconWidget: const Icon(Icons.arrow_back_ios, size: 20),
          positionSlideIcon: 0.7, //position on vertical axis(0 to 1)
          enableLoop: true,
          waveType: WaveType.liquidReveal,
          ignoreUserGestureWhileAnimating: false,
          disableUserGesture: false,
          enableSideReveal: true,
          onPageChangeCallback: (activePageIndex) {
            print('Page Changed');
            print(activePageIndex);
          },
          // slidePercentCallback: (slidePercentHorizontal, slidePercentVertical) {
          //   print('slidePercentCallBack called');
          // },
          currentUpdateTypeCallback: (updateType) {
            print(updateType);
          },
        ),
      ),
    );
  }
}
