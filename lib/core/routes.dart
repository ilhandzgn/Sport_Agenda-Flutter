// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/widgets.dart';
import 'package:flutter_app/screens/like_screen.dart';
import 'package:flutter_app/screens/news_screen.dart';
import 'package:flutter_app/screens/photo_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:flutter_app/screens/search_screen.dart';
import 'package:flutter_app/screens/sport_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/photo',
      builder: (context, state) => PhotoScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/like',
      builder: (context, state) => const LikeScreen(),
    ),
    GoRoute(
      path: '/sport',
      builder: (context, state) => const SportScreen(),
    ),
    GoRoute(
      path: '/news',
      builder: (context, state) => NewsScreen(),
    ),
  ],
);
