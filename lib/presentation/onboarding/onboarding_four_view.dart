import 'package:flutter/material.dart';
import 'package:galki/presentation/auth/login_view.dart';
import 'package:galki/presentation/onboarding/pointer_widget.dart';

class OnboardingFourView extends StatelessWidget {
  const OnboardingFourView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/onb_4.png',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PointerIndicator(index: 3),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Пробуй для себя что-то новенькое через нас',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Ещё, у нас ты можешь открыть для себя много нового в жизни: то, что ещё не ел на ужин; новые упражнения в спорте; здоровый образ жизни и др.',
                  style: TextStyle(fontSize: 12, color: Color(0xff939393)),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginView()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width - 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffF83758),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          'Продолжить',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
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
