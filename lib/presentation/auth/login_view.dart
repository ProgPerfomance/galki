import 'package:flutter/material.dart';
import 'package:galki/presentation/widgets/custom_textfield_widget.dart';

import 'otp_view.dart';

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController =TextEditingController();

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: Column(
        children: [
          Image.asset('assets/login_banner.png',fit: BoxFit.fitWidth,width: MediaQuery.of(context).size.width,),
          const SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Добро пожаловать!',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  color: Colors.white,
                ),),
                const SizedBox(height: 18,),
                CustomTextFieldWidget(controller: _emailController, text: 'Электронная почта', password: false),
                const SizedBox(height: 18,),
                CustomTextFieldWidget(controller: _passwordController, text: 'Пароль', password: false),
                const SizedBox(height: 18,),
                const Text('Забыли пароль?',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF83758),
                ),),
                const SizedBox(height: 18,),
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
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Нет аккаунта? ',
                    style: TextStyle(
                      color: Color(0xff939393)
                    ),),
                    Text('Зарегистрироваться'
                    ,style: TextStyle(
                        color: const Color(0xffF83758),
                      ),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
