import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galki/presentation/onboarding/onboarding_two_view.dart';
import 'package:galki/presentation/onboarding/pointer_widget.dart';

class OnboardingOneView extends StatelessWidget {
  const OnboardingOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/onb_1.png',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PointerIndicator(index: 0),
                const SizedBox(height: 18,),
                Container(
                  width: MediaQuery.of(context).size.width -48,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFE2E5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('Русский',style: TextStyle(
                      color: Color(0xff1F2024),
                    ),),
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  width: MediaQuery.of(context).size.width -48,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff9B9B9B),width: 0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('English',style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  width: MediaQuery.of(context).size.width -48,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff9B9B9B),width: 0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('中文',style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
                const SizedBox(height: 24,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OnboardingTwoView()));
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
