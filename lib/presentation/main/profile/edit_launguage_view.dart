import 'package:flutter/material.dart';

class EditLaunguageView extends StatelessWidget {
  const EditLaunguageView({super.key});

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
          'Язык интерфейса',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffFFE2E5),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Системный',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const LaunguageCard(title: 'Russian', header: 'Русский'),
              const SizedBox(
                height: 8,
              ),
              const LaunguageCard(title: 'English', header: 'Английский'),
              const SizedBox(
                height: 8,
              ),
              const LaunguageCard(title: '中文', header: 'Китайский'),
            ],
          ),
        ),
      ),
    );
  }
}

class LaunguageCard extends StatelessWidget {
  final String header;
  final String title;
  const LaunguageCard({super.key, required this.title, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 0.5, color: const Color(0xff9B9B9B))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff939393),
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
