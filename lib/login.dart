import 'package:flutter/material.dart';
import 'package:practice5/car_registration.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'email',
                      // hintStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'password',
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        )),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const CarRegistrationPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[900],
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
