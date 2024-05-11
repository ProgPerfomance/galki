import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:galki/presentation/main/my_checklist/open_checklist_view.dart';

class MyChecklistView extends StatelessWidget {
  const MyChecklistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 333,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/my_checklist_banner_n.png',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 333,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black.withOpacity(0.01), Colors.black],
              )),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Мои списки',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Наполняй свой список разнообразными задачами, которые у тебя постоянно в голове.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8F9098),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 2 - 20,
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: const Color(0xffF83758),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/add.svg'),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Создать\nновый список',
                            style: TextStyle(
                              color: Color(0xff939393),
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OpenCheckListView()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.width / 2 - 20,
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff2A2A2A),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/my_list_card.png',
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Планы на зимние каникулы',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
