// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_practical/screen/dashboard/dashboard.screen.dart';
import 'package:flutter_practical/screen/list/item_list.screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static String routName = "/";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late AnimationController animation;
  late Animation<double> _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.5, end: 1.0).animate(animation);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animation.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animation.forward();
      }
    });
    animation.forward();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(DashboardScreen.routName);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _fadeInFadeOut,
              child: Image.asset(
                'assets/icons/flutter.png',
                height: 128,
              ),
            ),
            Text(
              'Welcome To Flutter',
              style: Theme.of(context)
                  .textTheme
                  .headline6, // Apply body text style
            ),
          ],
        ),
      ),
    );
  }
}
