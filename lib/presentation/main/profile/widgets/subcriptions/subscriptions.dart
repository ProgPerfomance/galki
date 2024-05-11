import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubscriptiosView extends StatelessWidget {
  const SubscriptiosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 246,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color(0xffF83758),
            Color(0xffFF6197),
          ]
        ),
        image: const DecorationImage(image: AssetImage('assets/background_sub.png')),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Подписка\nStandart Club',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white
                    ),),
                    Text('Активна до 21.03.2024',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 108,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/my_desc.svg'),
                          const SizedBox(width: 4,),
                          const Text('Ваша подписка',style: TextStyle(
                            color: Color(0xff1F2024),
                            fontSize: 10,
                          ),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/icons/medal_star.svg'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/all_inclusive_sub.svg'),
                    const SizedBox(width: 8,),
                    const Text('Достук к всем челленджам',style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/my_chalenges_sub.svg'),
                    const SizedBox(width: 8,),
                    const Text('Возможность создавать свои челленджи',style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/coins_sub.svg'),
                    const SizedBox(width: 8,),
                    const Text('Реферальные бонусы с Уровней: 1-2',style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),),
                  ],
                ),
              ],

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black.withOpacity(0.2),
              ),
              child: const Center(
                child: Text('Продлить до 21.03.2024',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//background: linear-gradient(257.32deg, #FF6197 0%, #F83758 100%);