import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galki/presentation/main/profile/widgets/edit_avatar.dart';
import 'package:galki/presentation/widgets/custom_textfield_widget.dart';

TextEditingController _firstNameController = TextEditingController();
TextEditingController _lastNameController = TextEditingController();
TextEditingController _descriptionNameController = TextEditingController();
FocusNode _focusNode = FocusNode();
class EditProfileMainView extends StatelessWidget {
  const EditProfileMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _focusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xff19191A),
        appBar: AppBar(
          backgroundColor: const Color(0xff19191A),
          centerTitle: true,
          title: const Text('Редактирование',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text(
              'Готово',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffF83758),
              ),
            )),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SvgPicture.asset(
                        'assets/icons/not_avatar_profile.svg')),
                const SizedBox(
                  height: 18,
                ),
                const EditAvatar(),
                const SizedBox(height: 24,),
                const Text('Имя',
                style: TextStyle(
                  fontSize:12,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                const SizedBox(height: 8,),
                CustomTextFieldWidget(controller: _firstNameController, text: 'Иван', password: false),
                const SizedBox(height: 12,),
                const Text('Фамилия',
                  style: TextStyle(
                    fontSize:12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),),
                const SizedBox(height: 8,),
                CustomTextFieldWidget(controller: _lastNameController, text: 'Иванов', password: false),
                const SizedBox(height: 8,),
                const Text('Можно использовать как свою реальную фамилию, так и ваш псевдоним.',
                style: TextStyle(
                  color: Color(0xff939393),
                  fontSize: 12,
                ),),
                const SizedBox(height: 18,),
                const Text('О себе',
                  style: TextStyle(
                    fontSize:12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),),
                const SizedBox(height: 8,),
                TextField(
                  focusNode: _focusNode,
                  maxLines: 5,
                  minLines: 3,
                  controller: _descriptionNameController,
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(
                      color: Color(
                        0xFFCBCBCB,
                      ),
                      fontSize: 12,
                    ),
                    hintText: 'Расскажите о себе',
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      borderSide: const BorderSide(
                        color: Color(0xffF83758),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12,),
                const Text('Любые подробности, например: возраст, род занятий или город.',  style: TextStyle(
                  color: Color(0xff939393),
                  fontSize: 12,
                ),),
                const Text('Пример: 23 года, дизайнер из Санкт-Петербурга.',  style: TextStyle(
                  color: Color(0xff939393),
                  fontSize: 12,
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
