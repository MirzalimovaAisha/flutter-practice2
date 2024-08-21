import 'package:flutter/material.dart';
import 'package:practice5/bottom_navigation_bar.dart';

class CarRegistrationPage extends StatelessWidget {
  const CarRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '차량 등록',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '※ 본인 명의 차량의 자동차 등록 원부를 조회합니다.',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                  SizedBox(height: 50,),
                  Text('차량 번호', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '차량 번호',
                      hintStyle: TextStyle(fontSize: 14)
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('소유자의 명칭', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '소유자의 명칭 입력',
                        hintStyle: TextStyle(fontSize: 14)
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('법인등록번호', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '법인등록번호 입력',
                        hintStyle: TextStyle(fontSize: 14)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNavigationBarExample()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[900],
                    foregroundColor: Colors.white
                  ),
                  child: const Text('등록')
              ),
            )
          ],
        ),
      ),
    );
  }
}
