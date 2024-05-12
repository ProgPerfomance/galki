import 'package:flutter/material.dart';

class ReferalInfoView extends StatelessWidget {
  const ReferalInfoView({super.key});

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
    'Реферальная программа',
    style: TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w800,
    ),
    ),),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/referal_banner.png',width: MediaQuery.of(context).size.width,fit: BoxFit.fitWidth,),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Text('Для развития нашего приложения мы используем систему поощрений за привлечение новых пользователей. Каждый друг, который зарегистрировался по вашему приглашению, принесет вам процент от своей подписки на приложение.',
                 style: TextStyle(
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ), ),
                  SizedBox(height: 24,),
                  Divider(
                    color: Color(0xff444444),height: 0.5,
                  ),
                  SizedBox(height: 24,),
                  Container(
                    width: MediaQuery.of(context).size.width -32,
                    decoration: BoxDecoration(
                      color: Color(0xff2A2A2A),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Важно понимать, что деньги не появляются из воздуха, словно в какой-то пирамиде.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
