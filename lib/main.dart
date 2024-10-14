import 'package:burgan_branches_app/branches_page.dart';
import 'package:burgan_branches_app/details_page.dart';
import 'package:burgan_branches_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'home_page.dart';
import 'dart:async';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/branches_page',
        builder: (context, state) => BranchesPage(),
      ),
      GoRoute(
        path: '/details_page',
        builder: (context, state) => DetailsPage(branch: state.extra as BankBranch,),
      ),
    ],
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a time-consuming task (e.g., loading data) for the splash screen.
    // Replace this with your actual data loading logic.
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).replace("/home");//.go('/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/Splash.png"),
          ],
        ),
      ),
    );
  }
}
