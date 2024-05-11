import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

bool type = true;

class InProgressView extends StatefulWidget {
  const InProgressView({super.key});

  @override
  State<InProgressView> createState() => _InProgressViewState();
}

class _InProgressViewState extends State<InProgressView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width-32,
                height: 39,
                decoration: BoxDecoration(
                  color: const Color(0xff2A2A2A),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap:(){
                          type = false;
                          setState(() {

                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width /2-20,
                         decoration: type == false ?  BoxDecoration(
                           gradient: const LinearGradient(
                             colors: [Color(0xffFF6197),Color(0xffF83758)],
                           ),
                           borderRadius: BorderRadius.circular(12)
                         ) : BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                           color: const Color(0xff2A2A2A),
                         ),
                          child:  Center(
                            child: Text('В процессе',
                            style: TextStyle(fontSize: 12,color: type == false ? Colors.white  :const Color(0xff939393),fontWeight: FontWeight.w700),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                          type = true;
                          setState(() {

                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width /2-20,
                          decoration: type == true ?  BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xffFF6197),Color(0xffF83758)],
                              ),
                              borderRadius: BorderRadius.circular(12)
                          ) : BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xff2A2A2A),
                          ),
                          child:  Center(
                            child: Text('Выполнено',
                              style: TextStyle(fontSize: 12,color: type == true ? Colors.white  :const Color(0xff939393),fontWeight: FontWeight.w700),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24,),
            type == true ?  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height /3.7,),
                  SvgPicture.asset('assets/icons/not_found.svg'),
                  const SizedBox(height: 24,),
                  const Text('Оу... У вас ещё нет ни одного челленджа в процессе',textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff939393),
                  ),),
                  const SizedBox(height: 12,),
                  Container(
                    width: 218,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xffF83758),width: 1.5),
                    ),
                    child: const Center(
                      child: Text('Смотреть челленджи!',
                      style: TextStyle(
                        color: Color(0xffF83758),
                        fontSize: 12,
                      ),),
                    ),
                  )
                ],
              ):
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProgressCard(title: '100 идей для путешествий', image: 'assets/bus_image.png', category: 'Туризм'),
                  ProgressCard(title: 'Спорт в домашних условиях', image: 'assets/sport_image.png', category: 'Спорт')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressCard extends StatelessWidget {
  final String image;
  final String title;
  final String category;
  const ProgressCard({super.key,required this.title,required this.image,required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2-20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff2A2A2A),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(image,fit: BoxFit.fitWidth,),
              Positioned(right: 8,top: 8,child: SvgPicture.asset('assets/icons/progress.svg'),),
            ],
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff939393),
                  ),),
                const SizedBox(height: 8,),
                Text(title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),)
              ],
            ),
          ),
          const Divider(color: Color(0xff444444),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('2.4K выполняют',style: TextStyle(fontSize: 12,color: Color(0xff939393)),),
                SizedBox(
                  width: 38,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.asset('assets/ava1.png',height: 18,width: 18,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: Image.asset('assets/ava2.png',height: 18,width: 18,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Image.asset('assets/ava3.png',height: 18,width: 18,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
