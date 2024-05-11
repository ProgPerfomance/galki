import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtherProfileView extends StatelessWidget {
  const OtherProfileView({super.key});

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
          'Арина Воронина',
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
              const SizedBox(
                height: 8,
              ),
              Center(child: Image.asset('assets/test_ava.png')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/diamond.svg'),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Diamond Club',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/referals.svg',
                    color: const Color(0xff939393),
                  ),
                  const Text(
                    'Рефералы: 12 • ID 123456',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff939393),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  color: const Color(0xff2A2A2A),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/icons/comment_profile.svg'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '24 года, Project Manager из Москвы, владелец @beautyclub.',
                        style: TextStyle(
                          color: Color(0xff939393),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: Color(0xff8F9098),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: RichText(
                      softWrap: true,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: 'Пригласил в проект: ',
                              style: TextStyle(
                                  color: Colors
                                      .white) //themeData.textTheme.displayMedium,
                              ),
                          TextSpan(
                              text: 'Анастасия Давыдова',
                              style: const TextStyle(
                                color: Color(0xffF83758),
                              ),
                              recognizer: TapGestureRecognizer()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xff3AC0A0),
                    ),
                    child: Center(
                        child: SvgPicture.asset(
                            'assets/icons/complete_other.svg')),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: RichText(
                      softWrap: true,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: 'Закончила выполнение челленджа «',
                              style: TextStyle(
                                  color: Colors
                                      .white) //themeData.textTheme.displayMedium,
                              ),
                          TextSpan(
                              text: 'Блюда из разных континентов',
                              style: const TextStyle(
                                color: Color(0xffF83758),
                              ),
                              recognizer: TapGestureRecognizer()),
                          const TextSpan(
                              text: '»',
                              style: TextStyle(
                                  color: Colors
                                      .white) //themeData.textTheme.displayMedium,
                              ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: SvgPicture.asset(
                          'assets/icons/in_progress_profile.svg')),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: RichText(
                      softWrap: true,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: 'Начала выполнять челлендж «',
                              style: TextStyle(
                                  color: Colors
                                      .white) //themeData.textTheme.displayMedium,
                          ),
                          TextSpan(
                              text: '100 идей для путешествий',
                              style: const TextStyle(
                                color: Color(0xffF83758),
                              ),
                              recognizer: TapGestureRecognizer()),
                          const TextSpan(
                              text: '»',
                              style: TextStyle(
                                  color: Colors
                                      .white) //themeData.textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
