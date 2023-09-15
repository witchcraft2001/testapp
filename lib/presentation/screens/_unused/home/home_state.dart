// Project imports:
import 'package:terralinkapp/domain/home_screen_feed.dart';

sealed class HomeState {}

class InitState extends HomeState {}

class LoadingState extends HomeState {}

class ShowState extends HomeState {
  final HomeScreenFeed feed;

  ShowState(this.feed);
}
