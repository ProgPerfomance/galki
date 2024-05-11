import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galki/presentation/main/bonuses/bonuses_view.dart';
import 'package:galki/presentation/main/in_progress/in_progress_view.dart';
import 'package:galki/presentation/main/my_checklist/my_checklist_view.dart';
import 'package:galki/presentation/main/profile/my_profile_view.dart';

List<Widget> screens = [
  const SizedBox(),
  const MyChecklistView(),
  const InProgressView(),
  const BonusesView(),
  const MyProfileView(),
];
int _selectIndex = 4;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screens[_selectIndex],
          Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                // color: Colors.black,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 80),
                      painter: BNBCustomPainter(),
                    ),
                    Center(
                      heightFactor: 0.6,
                      child: FloatingActionButton(
                        backgroundColor: _selectIndex ==10 ? Colors.white.withOpacity(0) :const Color(0xffF83758),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(99))),
                        onPressed: () {
                          _selectIndex = 2;
                          setState(() {});
                        },
                        child: SvgPicture.asset("assets/clock.svg",),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                _selectIndex = 0;
                                setState(() {});
                              },
                              icon: SvgPicture.asset("assets/home.svg",color: _selectIndex ==0 ? Color(0xffF83758) : Color(0xff939393),)),
                          IconButton(
                              onPressed: () {
                                _selectIndex = 1;
                                setState(() {});
                              },
                              icon: SvgPicture.asset("assets/list.svg",color: _selectIndex ==1 ? Color(0xffF83758) : Color(0xff939393),)),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.20),
                          IconButton(
                              onPressed: () {
                                _selectIndex = 3;
                                setState(() {});
                              },
                              icon: SvgPicture.asset("assets/bonus.svg",color: _selectIndex ==3 ? Color(0xffF83758) : Color(0xff939393),)),
                          IconButton(
                              onPressed: () {
                                _selectIndex = 4;
                                setState(() {});
                              },
                              icon: SvgPicture.asset("assets/profile.svg",color: _selectIndex ==4 ? Color(0xffF83758) : Color(0xff939393),)),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      // ..color = Colors.black
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.lineTo(size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.42, 60);
    path.arcToPoint(Offset(size.width * 0.60, 60));
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.65, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    // canvas.drawShadow(path, Colors.deepOrange, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
