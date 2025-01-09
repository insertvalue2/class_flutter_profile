// 버튼 만들어 보기
import 'package:flutter/material.dart';

////////////////////////////////////
// 상태가 있는 위젯을 만들어 보자.
// 1. StatefulWidget 위젯을 상속 받았다.
// 두 개의 클래스가 한 묶임 이다.
class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
} // end of ProfileTab

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 멤버 변수
  // TabController는 TabBar 와 TabBarView 를 동기화 하는 컨트롤러 입니다.
  TabController? _tabController;

  // 단 한번 호출이 되는 메서드 이다.
  @override
  void initState() {
    super.initState();
    print('프로필 탭 내부 클래스 init 호출 했다.');
    // length 는 탭의 개수를 의미한다.
    // vsync 는 자연스러운 애니메이션 전환을 위해서 TickerProvider 를
    // 활용한다.
    _tabController = TabController(length: 2, vsync: this);
  }

  // build 메서는 기본적으로 그림을 그릴때 호출이 된다.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, // 열(컬럼) 사이의 간격을 10으로 설정
            mainAxisSpacing: 10, // 행(로우) 사이의 간격 설정
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            // 이미지를 불러와야 한다.
            return Image.network('https://picsum.photos/id/${index}/200/200');
          },
          itemCount: 40,
        ),
        // 꾸며 주세요.
        Container(
          width: 50,
          height: 100,
        ),
      ],
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      // 중간 매개체로 연결
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.directions_car),
        ),
        Tab(
          icon: Icon(Icons.directions_train),
        ),
      ],
    );
  }
} // end _ProfileTabState
