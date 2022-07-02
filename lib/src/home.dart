import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'analyze_page.dart';
import 'global_page.dart';
import 'home_page_base.dart';
import 'shazam_page.dart';
import 'user_page.dart';

/// this class contains the pageview and controller that allow navigation
class Home extends HookConsumerWidget {
  Home({super.key});
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          HomePageBase(child: AnalyzePage()),
          HomePageBase(child: ShazamPage()),
          HomePageBase(child: UserPage()),
          HomePageBase(child: GlobalPage()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Text('Analyze'),
            activeIcon: Text('Active'),
            label: 'analyze',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Text('Shazam'),
            activeIcon: Text('Active'),
            label: 'shazam',
          ),
          BottomNavigationBarItem(
            icon: Text('User'),
            activeIcon: Text('Active'),
            label: 'user',
          ),
          BottomNavigationBarItem(
            icon: Text('Global'),
            activeIcon: Text('Active'),
            label: 'global',
          ),
        ],
      ),
    );
  }
}
