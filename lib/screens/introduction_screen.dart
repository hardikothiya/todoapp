import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class IntroDuctionPage extends StatelessWidget {
  bool isFirstLaunch = false;

  @override
  Widget build(BuildContext context) {
    Future<SharedPreferences> prefs = SharedPreferences.getInstance();

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: " Welcome to Day Planner",
          body: " One step solution for all your task list ",
          image: Lottie.network(
              'https://assets4.lottiefiles.com/packages/lf20_jy1bgnpp.json'),
          decoration: const PageDecoration(
            imageFlex: 5,
            bodyFlex: 2,
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: " Get ready for your Day",
          body: " Lets start with all the energy and complete the day",
          image: Lottie.network(
              'https://assets8.lottiefiles.com/datafiles/6G5dmUbkeNJcrRq/data.json'),
          decoration: const PageDecoration(
            imageFlex: 5,
            bodyFlex: 2,
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "Manage your Day well",
          body: "Complete all your tasks and have a desiplined life",
          image: Lottie.network(
              'https://assets4.lottiefiles.com/private_files/lf30_gdvhysw2.json'),
          footer: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            child: const Text("Let's Go !"),
          ),
          decoration: const PageDecoration(
            imageFlex: 5,
            bodyFlex: 2,
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
      ],
      showSkipButton: true,
      showDoneButton: false,
      showNextButton: false,
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.orangeAccent),
      ),
      onSkip: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
        );
      },
    );
  }
}
