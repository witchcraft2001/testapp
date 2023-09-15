// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/_unused/get_home_screen_feed_use_case.dart';
import 'package:terralinkapp/domain/chat_feed.dart';
import 'package:terralinkapp/domain/event_feed_item.dart';
import 'package:terralinkapp/domain/home_screen_feed.dart';
import 'package:terralinkapp/domain/new_employee.dart';
import 'package:terralinkapp/domain/poll_feed_item.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/screens/_unused/home/employees_widget.dart';
import 'package:terralinkapp/presentation/screens/_unused/home/event_widget.dart';
import 'package:terralinkapp/presentation/screens/_unused/home/home_cubit.dart';
import 'package:terralinkapp/presentation/screens/chats/chat_item.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/search_field.dart';
import 'home_state.dart';
import 'poll_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt<GetHomeScreenFeedUseCase>()),
      child: _getScreen(context),
    );
  }

  Widget _getScreen(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return _getWidgetByState(context, state);
      },
    );
  }

  Widget _getWidgetByState(BuildContext context, HomeState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingState() => const CenteredProgressIndicator(),
      ShowState(feed: var feed) => _getShowScreen(context, feed)
    };
  }

  Widget _getInitState(BuildContext context) {
    BlocProvider.of<HomeCubit>(context).onInit();

    return const CenteredProgressIndicator();
  }

  Widget _getShowScreen(BuildContext context, HomeScreenFeed feed) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: _getSearchField(context),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: context.appTheme?.appTheme.backgroundDashboardsForms,
          toolbarHeight: 72,
        ),
        SliverList.list(children: [
          _getEmployeesAndEvents(context, feed.newEmployees, feed.events),
          _getPolls(context, feed.polls),
          _getNewMessages(context, feed.newMessages),
        ]),
      ],
    );
  }

  Widget _getNewMessages(BuildContext context, List<ChatFeed> messages) {
    if (messages.isEmpty) {
      return Container();
    }
    final list = List<Widget>.of([], growable: true);
    list.add(Padding(
      padding: const EdgeInsets.only(left: 22.0, top: 8.0),
      child: Text(
        S.of(context).newMessagesTitle,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: context.appTheme?.appTheme.textOptional),
      ),
    ));
    for (var element in messages) {
      list.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 5.0),
        child: ChatItem(
          item: element,
          onPressed: (item) => Navigator.pushNamed(context, '/chats', arguments: item.id),
        ),
      ));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }

  Widget _getPolls(BuildContext context, List<PollFeedItem> polls) {
    if (polls.isEmpty) {
      return Container();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0, top: 8.0),
          child: Text(
            S.of(context).pollsTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: context.appTheme?.appTheme.textOptional),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
                child: SizedBox(
                  height: 142,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 21.0, right: 12.0, bottom: 8.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: polls.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return PollWidget(
                        item: polls[index],
                        onPressed: (item) => Navigator.pushNamed(context, '/polls', arguments: item.id),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _getEmployeesAndEvents(BuildContext context, List<NewEmployee> newEmployees, List<EventFeedItem> events) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: SizedBox(
              height: 130,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 21.0, right: 12.0, bottom: 8.0),
                scrollDirection: Axis.horizontal,
                itemCount: events.length + 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    if (newEmployees.isNotEmpty) {
                      return EmployeesWidget(
                        items: newEmployees,
                        onPressed: () => {Navigator.of(context).pushNamed('/meet')},
                      );
                    }

                    return Container();
                  } else {
                    return EventWidget(item: events[index - 1]);
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getSearchField(BuildContext context) {
    return SearchField(
      hint: S.current.searchMsgAndDocsHint,
      text: '',
      onChanged: (_) {},
    );
  }
}
