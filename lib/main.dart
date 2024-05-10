import 'package:flutter/material.dart';
import 'package:galki/presentation/main/bonuses/bonuses_view.dart';
import 'package:galki/presentation/main/profile/edit_safety_view.dart';
import 'package:galki/presentation/main/profile/my_profile_view.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfileView(),
    );
  }
}
