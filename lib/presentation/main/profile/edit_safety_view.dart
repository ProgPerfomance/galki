import 'package:flutter/material.dart';

import '../../widgets/custom_textfield_widget.dart';

TextEditingController _oldPasswordController = TextEditingController();
TextEditingController _newPasswordController = TextEditingController();
TextEditingController _confirmPasswordController = TextEditingController();
TextEditingController _oldEmailController = TextEditingController();
TextEditingController _newEmailController = TextEditingController();

class EditSafetyView extends StatelessWidget {
  const EditSafetyView({super.key});

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
          'Безопасность аккаунта',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff2A2A2A),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Смена пароля',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff939393),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Текущий пароль',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFieldWidget(
                    controller: _oldPasswordController,
                    text: 'Введите Ваш текущий пароль',
                    password: false),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Новый пароль',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFieldWidget(
                    controller: _newPasswordController,
                    text: 'Введите Ваш новый пароль',
                    password: false),
                const SizedBox(
                  height: 18,
                ),
                CustomTextFieldWidget(
                    controller: _confirmPasswordController,
                    text: 'Подтвердите Ваш новый пароль',
                    password: false),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 32,
                  decoration: BoxDecoration(
                    color: const Color(0xffF83758),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Сохранить',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff2A2A2A),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Смена электронной почты',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff939393),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                const Text(
                  'Текущая электронная почта',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFieldWidget(
                    controller: _oldEmailController,
                    text: 'Введите Вашу электронную почту',
                    password: false),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Новая электронная почта',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFieldWidget(
                    controller: _newEmailController,
                    text: 'NewName@email.com',
                    password: false),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 32,
                  decoration: BoxDecoration(
                    color: const Color(0xffF83758),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Сохранить',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
