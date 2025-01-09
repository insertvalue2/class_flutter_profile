import 'package:flutter/material.dart';
import '../components/profile_buttons.dart';
import '../components/profile_count_info.dart';
import '../components/profile_header.dart';
import '../components/profile_tab.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('profile'),
        ),
        endDrawer: Container(
          width: 200,
          // double.infinity <-- 가능한 최대로 확장 하라
          //height: double.infinity,
          color: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            ProfileHeader(),
            const SizedBox(height: 20),
            ProfileCountInfo(),
            const SizedBox(height: 20),
            ProfileButtons(),
            // 탭바영역
            Expanded(child: ProfileTab())
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////
