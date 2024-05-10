import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditThemeView extends StatelessWidget {
  const EditThemeView({super.key});

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
          'Тема интерфейса',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(width: 0.5, color: const Color(0xff9B9B9B))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Системная',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SvgPicture.asset('assets/icons/lock.svg'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffFFE2E5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Светлая',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SvgPicture.asset('assets/icons/lock.svg'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(width: 0.5, color: const Color(0xff9B9B9B))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Тёмная',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SvgPicture.asset('assets/icons/lock.svg'),
                    ],
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
