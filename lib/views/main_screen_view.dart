import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:soccer_app/views/developer_view/developer_view.dart';
import 'package:soccer_app/views/home_view/home_view.dart';
import 'package:soccer_app/views/results_view/result_view.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({
    super.key,
  });

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  // * Controller
  final _persisTabController = PersistentTabController(initialIndex: 0);

  @override
  void dispose() {
    super.dispose();
    _persisTabController.dispose();
  }

  List<PersistentTabConfig> get _navBarsTab {
    return [
      PersistentTabConfig(
        screen: const HomeView(),
        item: ItemConfig(
          iconSize: 18,
          activeForegroundColor: Colors.deepPurpleAccent,
          title: 'Home',
          inactiveIcon: const Icon(Icons.home),
          icon: const Icon(Icons.home),
        ),
      ),
      PersistentTabConfig(
        screen: const ResultView(),
        item: ItemConfig(
          iconSize: 18,
          title: 'Results',
          activeForegroundColor: Colors.deepPurpleAccent,
          inactiveIcon: const Icon(Icons.sports_soccer),
          icon: const Icon(Icons.sports_soccer),
        ),
      ),
      PersistentTabConfig(
        screen: const DeveloperView(),
        item: ItemConfig(
          iconSize: 18,
          activeForegroundColor: Colors.deepPurpleAccent,
          title: 'Developer',
          inactiveIcon: const Icon(Icons.developer_mode),
          icon: const Icon(Icons.developer_mode),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 60,
      tabs: _navBarsTab,
      navBarBuilder: (navBarConfig) => Style7BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
