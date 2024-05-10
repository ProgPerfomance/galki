import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Ред.',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffF83758),
                  ),),
                  const Text('Мой профиль',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),),
                  SvgPicture.asset('assets/icons/notification.svg'),
                ],
              ),
              Center(child: SvgPicture.asset('assets/icons/not_avatar_profile.svg')),
              const SizedBox(height: 12,),
              const Text('Иван Иванов',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: Colors.white,
              ),),
              const Text('name@email.com • ID 123456',style: TextStyle(
                color: Color(0xff939393),
              )),
              const SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/comment_profile.svg'),
                  const Text(' 23 года, дизайнер из Санкт-Петербурга.',style: TextStyle(
                    color: Color(0xff939393),
                  ),),
                ],
              ),
              const SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width-32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff2A2A2A),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/change_avatar.svg'),
                      const SizedBox(width: 4,),
                      const Text('Изменить фотографию',
                      style: TextStyle(
                        color: Color(0xffF83758),
                      ),),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              Row(
                children: [
                  Container(
                    height: 177,
                    width: MediaQuery.of(context).size.width / 2 -20,
                    decoration: BoxDecoration(
                      color: const Color(0xff2A2A2A),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Column(
                    children: [
                      Container(
                        height: 85,
                        width: MediaQuery.of(context).size.width / 2 -20,
                        decoration: BoxDecoration(
                          color: const Color(0xff2A2A2A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            const Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('15330',
                                  style: TextStyle(
                                    color: Colors.white,fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),),
                                  Text('монеты',
                                  style: TextStyle(
                                    color: Color(0xff939393),
                                    fontSize: 12,
                                  ),)
                                ],
                              ),
                            ),
                            Positioned(right: 12,top: 12,child: SvgPicture.asset('assets/icons/info.svg'),),//
                            Positioned(left: 12,bottom: 18,child: SvgPicture.asset('assets/icons/coins.svg'),),//coins.svg
                          ],
                        ),
                      ),
                      const SizedBox(height: 7,),
                      Container(
                        height: 85,
                        width: MediaQuery.of(context).size.width / 2 -20,
                        decoration: BoxDecoration(
                          color: const Color(0xff2A2A2A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            const Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('12343',
                                    style: TextStyle(
                                      color: Colors.white,fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                  Text('рефералов',
                                    style: TextStyle(
                                      color: Color(0xff939393),
                                      fontSize: 12,
                                    ),)
                                ],
                              ),
                            ),
                            Positioned(right: 12,top: 12,child: SvgPicture.asset('assets/icons/info.svg'),),//
                            Positioned(left: 12,bottom: 18,child: SvgPicture.asset('assets/icons/referals.svg'),),//coins.svg
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/info.svg'),
                  SizedBox(width: 8,
                  ),
                  Text('Почему подписка - это важно?',  style: TextStyle(
                      color: Color(0xff939393),
          fontSize: 14,
        ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
