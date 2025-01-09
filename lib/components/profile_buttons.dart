import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  InkWell _buildFollowButton() {
    return InkWell(
      onTap: () {
        print('버튼 클릭!~!');
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          'Follow',
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(),
        ),
      ),
    );
  }

  InkWell _buildMessageButton() {
    // InkWell: 터치 이벤트(탭, 더블 탭)를 감지하고 시각적 피드백도 제공 합니다.
    // 터치 하고자하는 영역을 감싸서 만들 수 있다.
    return InkWell(
      onTap: () {
        print('버튼 클릭!~!');
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          'Message',
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(),
        ),
      ),
    );
  }
}
