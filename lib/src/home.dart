import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'analyze_page.dart';
import 'global_page.dart';
import 'home_page_base.dart';
import 'shazam_page.dart';
import 'user_page.dart';

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

// ignore: always_specify_types
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
        children: const <Widget>[
          HomePageBase(child: UserPage()),
          HomePageBase(child: AnalyzePage()),
          HomePageBase(child: ShazamPage()),
          HomePageBase(child: GlobalPage()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        showUnselectedLabels: true,
        currentIndex: currentPage,
        onTap: bottomNavigationBarItemClicked,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            activeIcon: Icon(Icons.star),
            label: 'user',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            activeIcon: Icon(Icons.star),
            label: 'analyze',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            activeIcon: Icon(Icons.star),
            label: 'shazam',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            activeIcon: Icon(Icons.star),
            label: 'global',
          ),
        ],
      ),
    );
  }
}
