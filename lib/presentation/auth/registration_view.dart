import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:galki/presentation/auth/otp_view.dart';
import 'package:galki/presentation/widgets/custom_textfield_widget.dart';

TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmPasswordController = TextEditingController();
TextEditingController _friendIdController = TextEditingController();

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Регистрация',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Создайте аккаунт, чтобы приступить к челленджам',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff939393),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Имя',
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
                  controller: _nameController, text: 'Иван', password: false),
              const SizedBox(
                height: 18,
              ),
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
                  controller: _nameController,
                  text: 'name@email.com',
                  password: false),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Пароль',
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
                  controller: _nameController,
                  text: 'Password',
                  password: false),
              const SizedBox(
                height: 18,
              ),
              CustomTextFieldWidget(
                  controller: _nameController,
                  text: 'Password',
                  password: false),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'ID друга, который вас пригласил',
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
                  controller: _nameController,
                  text: 'Введите ID',
                  password: false),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: const Color(0xff9B9B9B), width: 1.5),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'У меня нет ID друга, я нашёл это приложение\nсамостоятельно.',
                    style: TextStyle(
                      color: Color(0xff9B9B9B),
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: const Color(0xff9B9B9B), width: 1.5),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: RichText(
                      softWrap: true,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: 'Я подтверждаю своё согласие с ',
                              style: TextStyle(
                                  color: Color(
                                      0xff939393)) //themeData.textTheme.displayMedium,
                              ),
                          TextSpan(
                            text: 'Условиями испольования, ',
                            style: const TextStyle(
                              color: Color(0xffF83758),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // launchUrl(Uri.parse(
                                //     'https://sport-w.com/wp-content/uploads/CS_7.80808383.001-01.97.pdf'));
                              },
                          ),
                          TextSpan(
                            text: 'Политикой конфиденциальности',
                            style: const TextStyle(
                              color: Color(0xffF83758),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // launchUrl(Uri.parse(
                                //     'https://sport-w.com/wp-content/uploads/CS_7.80808383.001-01.97.pdf'));
                              },
                          ),
                          const TextSpan(
                              text: ' и ',
                              style: TextStyle(color: Color(0xff939393))),
                          TextSpan(
                            text: 'офертой',
                            style: const TextStyle(
                              color: Color(0xffF83758),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // launchUrl(Uri.parse(
                                //     'https://sport-w.com/wp-content/uploads/UA_7.80808383.001-01.99.pdf'));
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 24),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> OTPView()));
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
      ),
    );
  }
}
