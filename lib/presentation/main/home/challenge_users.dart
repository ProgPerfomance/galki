import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:galki/presentation/main/profile/other_profile_view.dart';

class ChallengeUsersView extends StatelessWidget {
  const ChallengeUsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      appBar: AppBar(
        backgroundColor: const Color(0xff19191A),
        iconTheme: const IconThemeData(
          color: Color(0xffF83758),
        ),
        title: const Text(
          'Выполняют челлендж',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Container(
                height: 44,
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/search.svg'),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Поиск',
                      style: TextStyle(
                        color: Color(0xff939393),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const ProgressUserCard(),
              const ProgressUserCard(),
              const ProgressUserCard(),
              const ProgressUserCard(),
              const ProgressUserCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressUserCard extends StatelessWidget {
  const ProgressUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtherProfileView()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/not_avatar_profile.svg',
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Андрей Митрошин',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Выполняет с 15.02.2024',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Color(0xff939393),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SvgPicture.asset(
              'assets/icons/progress.svg',
              width: 22,
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}
