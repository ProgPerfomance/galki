import 'package:flutter/material.dart';
import 'package:galki/presentation/auth/login_view.dart';
import 'package:galki/presentation/main/bonuses/bonuses_view.dart';
import 'package:galki/presentation/main/home/challenge_users.dart';
import 'package:galki/presentation/main/home/home_screen_view.dart';
import 'package:galki/presentation/main/home/open_challenge_view.dart';
import 'package:galki/presentation/main/home_view.dart';
import 'package:galki/presentation/main/in_progress/in_progress_view.dart';
import 'package:galki/presentation/main/my_checklist/my_checklist_view.dart';
import 'package:galki/presentation/main/my_checklist/open_checklist_view.dart';
import 'package:galki/presentation/main/profile/edit_safety_view.dart';
import 'package:galki/presentation/main/profile/my_profile_view.dart';
import 'package:galki/presentation/main/profile/other_profile_view.dart';
import 'package:galki/presentation/onboarding/onboarding_one_view.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
