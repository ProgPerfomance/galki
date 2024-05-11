import 'package:flutter/material.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(child: PageView(
            children: [

            ],
          ),width: MediaQuery.of(context).size.width,height: 333,),
        ],
      ),
    );
  }
}
