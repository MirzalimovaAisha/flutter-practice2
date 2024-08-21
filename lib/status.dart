import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/img2.jpg'),
              const SizedBox(height: 10,),
              const Text('최근 업데이트 : 7월 15일 19:14', style: TextStyle(fontSize: 11),),
              const SizedBox(height: 30,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3
                    ),
                  ]
                ),
                child: const Column(
                  children: [
                    Text('211km', style: TextStyle(color: Colors.red, fontSize: 35),),
                    Text('주행가능거리', style: TextStyle(fontSize: 12),)
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('시동/잠금 상태', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.power_settings_new_outlined, color: Colors.grey[400],),
                            Text('꺼짐', style: TextStyle(color: Colors.grey[400]),)
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 40,
                          color: Colors.grey[400],
                        ),
                        Column(
                          children: [
                            Icon(Icons.lock_outline, color: Colors.grey[400],),
                            Text('잠김', style: TextStyle(color: Colors.grey[400]),)
                          ],
                        ),
                      ],
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
