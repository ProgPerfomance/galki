import 'package:flutter/material.dart';

class DocumentView extends StatelessWidget {
  const DocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19191A),
      appBar: AppBar(
        title: Text('Оферта',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),),
        centerTitle: true,
        backgroundColor: const Color(0xff19191A),
        iconTheme: const IconThemeData(
          color: Color(0xffF83758),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/document_banner.png',
            width: MediaQuery.of(context).size.width,fit: BoxFit.fitWidth,),
            SizedBox(height: 12,),
            Text(''),
          ],
        ),
      ),
    );
  }
}
