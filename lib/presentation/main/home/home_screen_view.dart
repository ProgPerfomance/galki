import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:galki/presentation/main/home/challenge_users.dart';
import 'package:galki/presentation/main/home/open_challenge_view.dart';

PageController _pageController = PageController(initialPage: 0);
int _currentPage = 0;
int _selectedPage = 0;

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 370,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 370,
                    child: PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        HomeBanner(
                            image: 'assets/home1_banner.png',
                            title: 'Проводи своё время с интересом и эмоциями',
                            subTitle:
                                'Выполняй интересные и увлекательные челленджи, которые внесут краски в твою жизнь'),
                        HomeBanner(
                            image: 'assets/home2_banner.png',
                            title: 'Выполняй задания и соревнуйся с игроками',
                            subTitle:
                                'Соревнуйся с другими игроками в реальном времени и занимай первые места.'),
                        HomeBanner(
                            image: 'assets/home3_banner.png',
                            title: 'Пробуй для себя что-то новенькое через нас',
                            subTitle:
                                'С помощью множества наших челленджей открывай для себя что-то новенькое, погружайся и получай эмоции.'),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: _currentPage == 0
                                  ? const Color(0xffF83758)
                                  : const Color(0xffFFFFFF).withOpacity(0.2),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: _currentPage == 1
                                  ? const Color(0xffF83758)
                                  : const Color(0xffFFFFFF).withOpacity(0.2),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: _currentPage == 2
                                  ? const Color(0xffF83758)
                                  : const Color(0xffFFFFFF).withOpacity(0.2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Популярные челленджи',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xffF83758),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularCard(
                      title: '100 самых известных книг мира',
                      image: 'assets/new_book.png',
                      category: 'Книги'),
                  PopularCard(
                      title: '30 завтраков из яиц\n',
                      image: 'assets/new_book.png',
                      category: 'Еда'),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Container(
                    height: 39,
                    width: MediaQuery.of(context).size.width - 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xff2A2A2A),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _selectedPage =0;
                              setState(() {});
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3.38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: _selectedPage == 0
                                    ? const LinearGradient(colors: [
                                        Color(0xffFF6197),
                                        Color(0xffF83758)
                                      ])
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  'Все',
                                  style: TextStyle(
                                    color: _selectedPage == 0
                                        ? Colors.white
                                        : Color(0xff939393),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _selectedPage = 1;
                              setState(() {});
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3.38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: _selectedPage == 1
                                    ? const LinearGradient(colors: [
                                        Color(0xffFF6197),
                                        Color(0xffF83758)
                                      ])
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  'Категории',
                                  style: TextStyle(
                                    color: _selectedPage == 1
                                        ? Colors.white
                                        : Color(0xff939393),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _selectedPage = 2;
                              setState(() {});
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3.38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: _selectedPage == 2
                                    ? const LinearGradient(colors: [
                                        Color(0xffFF6197),
                                        Color(0xffF83758)
                                      ])
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  'Эмоции',
                                  style: TextStyle(
                                    color: _selectedPage == 2
                                        ? Colors.white
                                        : Color(0xff939393),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeBanner extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const HomeBanner(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 333,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(
                image,
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
              colors: [Colors.black.withOpacity(0.1), Colors.black],
            )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
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
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12)),
          ),
        )
      ],
    );
  }
}

class PopularCard extends StatelessWidget {
  final String image;
  final String title;
  final String category;
  const PopularCard(
      {super.key,
      required this.title,
      required this.image,
      required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.5),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>OpenChallengeView()));
        },
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xff2A2A2A),
          ),
          child: Column(
            children: [
              Image.asset(
                image,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff939393),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Color(0xff444444),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '2.4K выполняют',
                      style: TextStyle(fontSize: 12, color: Color(0xff939393)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ChallengeUsersView()));
                      },
                      child: SizedBox(
                        width: 38,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Image.asset(
                                'assets/ava1.png',
                                height: 18,
                                width: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 9.0),
                              child: Image.asset(
                                'assets/ava2.png',
                                height: 18,
                                width: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Image.asset(
                                'assets/ava3.png',
                                height: 18,
                                width: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
