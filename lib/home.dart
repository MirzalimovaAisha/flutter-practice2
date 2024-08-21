import 'package:flutter/material.dart';
import 'package:practice5/control.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('name'),
              accountEmail: Text('Email'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img2.jpg'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img1.jpg'),
                )
              ],
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Messages'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ControlPage()));
        },
        child: const Icon(Icons.navigation),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(Icons.mic)),
                ),
              ),


            ],
          )),
    );
  }
}
