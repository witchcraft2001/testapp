// Project imports:
import 'package:terralinkapp/domain/chat_feed.dart';
import 'event_feed_item.dart';
import 'new_employee.dart';
import 'poll_feed_item.dart';

class HomeScreenFeed {
  final List<NewEmployee> newEmployees;
  final List<PollFeedItem> polls;
  final List<EventFeedItem> events;
  final List<ChatFeed> newMessages;

  HomeScreenFeed(this.newEmployees, this.polls, this.events, this.newMessages);
}
