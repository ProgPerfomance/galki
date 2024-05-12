import 'package:flutter/material.dart';
import 'package:galki/presentation/main/home_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff19191A),
        iconTheme: const IconThemeData(
          color: Color(0xffF83758),
        ),
      ),
      backgroundColor: const Color(0xff19191A),
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text('Введите код подтверждения',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),),
            ),
            const SizedBox(height: 4,),
            const Center(
              child: Text('Код был отправлен вам на почту\nname@email.com',
              textAlign: TextAlign.center,style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff939393),
                ),),
            ),
            const SizedBox(height: 32,),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Form(
                  child: PinCodeTextField(
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    appContext: context,
                    length: 4,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 4) {
                        return null;
                        // return 'Введите код из смс-сообщения';
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      fieldHeight: 48,
                      fieldWidth: 48,
                      activeColor:const Color(0xff9B9B9B),
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(12),
                      activeFillColor: const Color(0xffF83758),
                      inactiveBorderWidth: 1.5,
                      activeBorderWidth: 1.5,
                      selectedBorderWidth: 1.5,
                      selectedColor:const Color(0xffF83758),
                      selectedFillColor: const Color(0xffF83758),
                      inactiveColor: const Color(0xff9B9B9B),
                      inactiveFillColor: Colors.white,

                    ),
                    cursorColor:  const Color(0xffF83758),
                    animationDuration: const Duration(milliseconds: 150),
                    keyboardType: TextInputType.number,
                    onCompleted: (v) {
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 72,),
            const Center(
              child: Text('Отправить новый код',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color:Color(0xffF83758),
              ),),
            ),
            const SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeView()));
                },
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffF83758),
                  ),
                  child: const Center(
                    child: Text('Подтвердить аккаунт',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
