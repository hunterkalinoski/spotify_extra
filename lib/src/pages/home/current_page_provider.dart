import 'package:hooks_riverpod/hooks_riverpod.dart';

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
