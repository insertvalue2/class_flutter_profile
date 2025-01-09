import 'package:flutter/material.dart';
// 보통 협업 --> 디자이너
// 전역 함수로 만들어 보자.

const MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF, // Base color: White
  <int, Color>{
    50: Color(0xFFFFFFFF), // 50% opacity
    100: Color(0xFFF9F9F9), // Lighter shade
    200: Color(0xFFF2F2F2),
    300: Color(0xFFE6E6E6),
    400: Color(0xFFD9D9D9),
    500: Color(0xCCCCCC), // Mid-light gray
    600: Color(0xB3B3B3), // Darker gray
    700: Color(0x999999), // Darker shade
    800: Color(0x808080), // Even darker shade
    900: Color(0x666666), // Very dark gray
  },
);

// 전역 함수
ThemeData theme() {
  // 앱 전반적인 테마(색상, 글꼴, 위젯 스타일등)를 정의하는 클래스
  // 입니다. --> 일관된 디자인을 유지하기 위해 사용한다.
  return ThemeData(
    // 앱의 기본 색상 팔레트를 설정하는 속성입니다.
    primarySwatch: primaryWhite,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
