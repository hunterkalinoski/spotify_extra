// import 'package:flutter_test/flutter_test.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:spotify_extra/src/app.dart';
// import 'package:spotify_extra/src/pages/home/home.dart';

// todo: commented out right now because I don't know how to test these things, also I may refactor code that this tests
void main() {
  /*
  group('page view', () {
    testWidgets('should update the currentPage state when switching pages', (tester) async {
      // todo: learn how to test this.  Manually get the pageController and call animateToPage
      // todo: also change the expect statements
      // todo: maybe have to create a mock pageController ???
      /* 
      await tester.pumpWidget(const MyApp());

      // get inital state
      final ref = tester.element<ConsumerStatefulElement>(find.byType(Home));
      final originalCurrentPageState = ref.read(currentPageProvider);

      // simulate swipe (switching page)
      await tester.dragFrom(Offset.zero, const Offset(-100, 0)); //swipe right (to second page)
      await tester.pumpAndSettle(const Duration(seconds: 1)); // wait for animation to finish

      // verify the state got updated
      final newCurrentPageState = ref.read(currentPageProvider);
      expect(originalCurrentPageState, isNot(newCurrentPageState));
      expect(originalCurrentPageState, equals(0));
      expect(newCurrentPageState, equals(1));
      */
    });
  });

  group('bottom navigation bar', () {
    testWidgets('should change pages when clicking an inactive item', (tester) async {
      // simulate clicking an inactive item
      // verify current page changes
      expect(true, true);
    });

    testWidgets('should change active item when the currentPage state changes', (tester) async {
      // simulate page change
      // verify the active item changed
      expect(true, true);
    });
  });
}


// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


/*
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:spotify_extra/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

*/
*/
}
