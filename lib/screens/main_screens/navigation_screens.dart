import 'package:flutter/material.dart';
import 'package:book_store/styles/export_styles.dart';
import 'export_nav_screens.dart';

class NavScreens extends StatefulWidget {
  const NavScreens({Key? key}) : super(key: key);

  @override
  _NavScreensState createState() => _NavScreensState();
}

class _NavScreensState extends State<NavScreens> {
  final GlobalKey<ScaffoldState> _dashBoardkey = GlobalKey();
  late PageController _pageController;
  int _tappedIndex = 0;
  int _pagedIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: _dashBoardkey,
      backgroundColor: BookFanColors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (pageTabbed) {
          pageTabbed = _pagedIndex;
        },
        children: const [
          HomeScreen(),
          CategoriesScreen(),
          HomeScreen(),
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _tappedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _tappedIndex,
      onTap: (int? tappedState) {
        setState(() {
          _tappedIndex = tappedState!;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: BookFanColors.gray,
          ),
          label: '',
          activeIcon: Icon(
            Icons.home_outlined,
            color: BookFanColors.burgundy,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bar_chart_outlined,
            color: BookFanColors.gray,
          ),
          label: '',
          activeIcon: Icon(
            Icons.bar_chart_outlined,
            color: BookFanColors.burgundy,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: BookFanColors.gray,
          ),
          label: '',
          activeIcon: Icon(
            Icons.shopping_bag_outlined,
            color: BookFanColors.burgundy,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark_outline,
            color: BookFanColors.gray,
          ),
          label: '',
          activeIcon: Icon(
            Icons.bookmark_outline,
            color: BookFanColors.burgundy,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.verified_user_outlined,
            color: BookFanColors.gray,
          ),
          label: '',
          activeIcon: Icon(
            Icons.verified_user_outlined,
            color: BookFanColors.burgundy,
          ),
        ),
      ],
    );
  }
}
