import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OpenCheckListView extends StatelessWidget {
  const OpenCheckListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 333,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/open_my_list.png',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 333,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 52),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff0000001).withOpacity(0.1),
                          ),
                          child: const Center(
                            child: Icon(CupertinoIcons.back,size: 20,color: Colors.white,),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff0000001).withOpacity(0.1),
                              border: Border.all(color: const Color(0xffFFE2E5),width: 2),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/flash.svg'),
                                const SizedBox(width: 8,),
                                const Text('0/3',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff0000001).withOpacity(0.1),
                            ),
                            child:  Center(
                              child: SvgPicture.asset('assets/icons/edit2.svg'),
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff0000001).withOpacity(0.1),
                            ),
                            child:  Center(
                              child: SvgPicture.asset('assets/icons/delete2.svg'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 24,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                 MyChecklistCard(name: 'Покататься на коньках'),
                  MyChecklistCard(name: 'Поиграть в хоккей'),
                  MyChecklistCard(name: 'Слепить снеговика'),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(0),
        onPressed: (){},
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xffFF6197),
              Color(0xffF83758)],
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: SvgPicture.asset('assets/icons/floating_add.svg'),
          ),
        ),
      ),
    );
  }
}


class MyChecklistCard extends StatelessWidget {
  final String name;
  const MyChecklistCard({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:3.5),
      child: Container(
        width: MediaQuery.of(context).size.width-32,
        decoration: BoxDecoration(
          color: const Color(0xff2A2A2A),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/check_marker.svg'),
              const SizedBox(width: 12,),
               Text(name,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
