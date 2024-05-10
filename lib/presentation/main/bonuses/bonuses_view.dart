import 'package:flutter/material.dart';

class BonusesView extends StatelessWidget {
  const BonusesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Image.asset('assets/bonuses_image.png'),
              const SizedBox(height: 32,),
              const Text('Начни зарабатывать с нами уже сегодня!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,),
              const SizedBox(height: 18,),
              const Text('Помогай развивать проект, приглашая друзей и знакомых. Каждый, кто зарегистрируется по твоему ID, принесёт тебе процент от своей подписки на приложение на внутренний счёт.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xff939393),
              ),
              textAlign: TextAlign.center,),
              const SizedBox(height: 24,),
              Container(width: 218,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF83758),
              ),
                child: const Center(
                  child: Text('Подробнее',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
