import 'package:flutter/material.dart';
import 'package:galki/presentation/onboarding/onboarding_four_view.dart';
import 'package:galki/presentation/onboarding/pointer_widget.dart';

class OnboardingThreeView extends StatelessWidget {
  const OnboardingThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/onb_3.png',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PointerIndicator(index: 2),
                const SizedBox(height: 18,),
                const Text('Запускай собственные процессы в приложении',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),),
                const SizedBox(height: 18,),
                const Text('Так же, здесь ты сможешь выполнять и свои задачи, создавая собственный список. А мы в свою очередь не дадим тебе забыть о них!',
                  style: TextStyle(fontSize: 12,
                      color: Color(0xff939393)),),
                const SizedBox(height: 24,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingFourView()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width -48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffF83758),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text('Продолжить',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
