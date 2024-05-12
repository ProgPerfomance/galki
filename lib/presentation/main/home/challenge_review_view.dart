import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChallengeReviewView extends StatelessWidget {
  const ChallengeReviewView({super.key});

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
          'Эмоции игроков о челлендже',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          SvgPicture.asset('assets/icons/add_review.svg'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    color: const Color(0xff2A2A2A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      '15 февраля',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff939393),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: const BoxDecoration(
                  color: Color(0xff2A2A2A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/ava1.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Арина Воронина',
                                style: TextStyle(
                                  color: Color(0xff939393),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Всем привет. Мне очень понравилось выполнять этот челлендж. Это круто, что мы можем не выходя из дома развлекать себя всякими кулинарными челленджами)',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Positioned(
                        bottom: 1,
                        right: 1,
                        child: Text(
                          '12:12',
                          style: TextStyle(
                            color: Color(0xff939393),
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Center(
                child: Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    color: const Color(0xff2A2A2A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Сегодня',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff939393),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: const BoxDecoration(
                  color: Color(0xff2A2A2A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/ava1.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Арина Воронина',
                                style: TextStyle(
                                  color: Color(0xff939393),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Решила попробовать)) Затянуло))))',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Positioned(
                        bottom: 1,
                        right: 1,
                        child: Text(
                          '12:12',
                          style: TextStyle(
                            color: Color(0xff939393),
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
