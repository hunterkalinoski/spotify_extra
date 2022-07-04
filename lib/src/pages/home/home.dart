import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../analyze/analyze_page.dart';
import '../global/global_page.dart';
import '../search/search_page.dart';
import '../user/user_page.dart';
import 'home_page_child_base.dart';

class CurrentPageNotifier extends StateNotifier<int> {
  CurrentPageNotifier() : super(0);

  void nextPage() {
    state++;
  }

  void previousPage() {
    state--;
  }

  int get pageNumber => state;
  set pageNumber(int pageNumber) => state = pageNumber;
}

final currentPageProvider = StateNotifierProvider<CurrentPageNotifier, int>((ref) {
  return CurrentPageNotifier();
});

/// this class contains the pageview and controller that allow navigation
class Home extends HookConsumerWidget {
  Home({super.key});
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentPage = ref.watch(currentPageProvider);

    void bottomNavigationBarItemClicked(int newPage) {
      pageController.animateToPage(newPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }

    void pageChanged(int index) {
      ref.read(currentPageProvider.notifier).pageNumber = index;
    }

    return Scaffold(
      body: PageView(
        onPageChanged: (int index) => pageChanged(index),
        controller: pageController,
        children: const <HomePageChildBase>[
          HomePageChildBase(child: AnalyzePage()),
          HomePageChildBase(child: UserPage()),
          HomePageChildBase(child: SearchPage()),
          HomePageChildBase(child: GlobalPage()),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData.dark().copyWith(
          canvasColor: const Color.fromARGB(255, 10, 10, 10),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          showUnselectedLabels: true,
          currentIndex: currentPage,
          onTap: bottomNavigationBarItemClicked,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined),
              activeIcon: Icon(Icons.star),
              label: 'analyze',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined),
              activeIcon: Icon(Icons.star),
              label: 'user',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined),
              activeIcon: Icon(Icons.star),
              label: 'search',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined),
              activeIcon: Icon(Icons.star),
              label: 'global',
              tooltip: '',
            ),
          ],
        ),
      ),
    );
  }
}
