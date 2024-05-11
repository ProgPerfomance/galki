import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_screen_view.dart';

class OpenChallengeView extends StatelessWidget {
  const OpenChallengeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const HomeBanner(
                    image: 'assets/home1_banner.png',
                    title: 'ТОП-25 из фастфуд кухни',
                    subTitle:
                    'Список популярных и взрывных фастфуд-блюд из разных уголков мира прямо в твоём телефоне.'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 52),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff0000001).withOpacity(0.1),
                          ),
                          child: const Center(
                            child: Icon(CupertinoIcons.back,size: 20,color: Colors.white,),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff0000001).withOpacity(0.1),
                              border: Border.all(color: const Color(0xffFFE2E5),width: 2),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/flash.svg'),
                                const SizedBox(width: 8,),
                                const Text('0/24',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff0000001).withOpacity(0.1),
                            ),
                            child:  Center(
                              child: SvgPicture.asset('assets/icons/chat.svg'),
                            ),
                          ),
                          const SizedBox(width: 8,),

                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 24,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OpenChallengeCard(name: 'Пицца',active: false,),
                  OpenChallengeCard(name: 'Гамбургер',active: false,),
                  OpenChallengeCard(name: 'Донер-кебаб',active: true,),
                  OpenChallengeCard(name: 'Азиатская лапша WOK',active: true,),
                  OpenChallengeCard(name: 'Суп Фо-Бо',active: true,),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}


class OpenChallengeCard extends StatelessWidget {
  final String name;
  final bool active;
  const OpenChallengeCard({super.key,required this.name,required this.active});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:3.5),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width-32,
            decoration: BoxDecoration(
              color: active == true ? const Color(0xff2A2A2A) :const Color(0xffFFE2E5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/check_marker.svg',color: active == false ?const Color(0xffF83758) : Colors.white,),
                  const SizedBox(width: 12,),
                  Text(name,
                    style:  TextStyle(
                      fontSize: 15,
                      color: active==true ? Colors.white:Colors.black,
                      fontWeight: FontWeight.w400,
                    ),)
                ],
              ),
            ),
          ),
          Positioned(child: SvgPicture.asset('assets/icons/info.svg',color: Color(0xffD4D6DD),height: 15,width: 15,), right: 8,top: 8,),
        ],
      ),
    );
  }
}
