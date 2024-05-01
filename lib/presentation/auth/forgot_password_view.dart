import 'package:flutter/material.dart';

import '../widgets/custom_textfield_widget.dart';
import 'otp_view.dart';

TextEditingController _emailController = TextEditingController();

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32,),
              const Text('Восстановление пароля',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),),
              const SizedBox(height: 4,),
              const Text('В целях безопасности мы отправим на Вашу почту  код для восстановления',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff939393),
                ),),
              const SizedBox(height: 32,),
              const Text(
                'Электронная почта',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextFieldWidget(
                  controller: _emailController,
                  text: 'name@email.com',
                  password: false),
               SizedBox(
                height: MediaQuery.of(context).size.width /2.3,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const OTPView()));
                },
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffF83758),
                  ),
                  child: const Center(
                    child: Text('Продолжить',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
