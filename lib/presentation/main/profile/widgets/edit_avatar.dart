import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditAvatar extends StatelessWidget {
  const EditAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff2A2A2A),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/change_avatar.svg'),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'Изменить фотографию',
              style: TextStyle(
                color: Color(0xffF83758),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
