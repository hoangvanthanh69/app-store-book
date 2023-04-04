import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../manager/auth_manager.dart';

class ProfileScreen extends StatelessWidget {
   const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: const Text('Thông tin',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        titleSpacing: 10,
        backgroundColor: Color.fromARGB(255, 54, 72, 66),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: const Color(0X800C9869),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        radius: 30,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/avt.png'),
                          radius: 25,
                        )
                      ),
                      SizedBox(width: 10),
                      Text("Chào bạn",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ]
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            const Text('Tài khoản',
              style: TextStyle(
                color: Color(0XFF0C9869),
                fontWeight: FontWeight.w800,
                fontSize: 22
              ),
            ),

            const SizedBox(height: 8),
            Card(
              elevation: 4,
              child: TextButton(
                onPressed: () {},
                child: Row(children: const [
                  Icon(Icons.person_outline, color: Colors.black),
                  SizedBox(width: 5),
                  Text('Thông tin cá nhân', style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                  ))
                ])
              ),
            ),

            Card(
              elevation: 4,
              child: TextButton(
                onPressed: () {},
                child: Row(children: const [
                  Icon(Icons.border_color_outlined, color: Colors.black),
                  SizedBox(width: 5),
                  Text('Đổi mật khẩu', style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                  ))
                ])
              ),
            ),
            Card(
              elevation: 4,
              child: TextButton(
                onPressed: () {},
                child: Row(children: const [
                  Icon(Icons.settings, color: Colors.black),
                  SizedBox(width: 5),
                  Text('Cài đặt', style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                  ))
                ])
              ),
            ),

            Card(
              elevation: 4,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                    .pushReplacementNamed('/');
                    context.read<AuthManager>().logout();
                },
                child: Row(children: const [
                  Icon(Icons.exit_to_app_outlined, color: Colors.black),
                  SizedBox(width: 5),
                  Text('Đăng xuất', style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                  ))
                ])
              ),
            )
          ]
        ),
      ),
    );
  }
}