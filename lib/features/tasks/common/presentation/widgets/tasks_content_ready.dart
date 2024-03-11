// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/search_field.dart';
import 'package:terralinkapp/features/tasks/common/domain/states/tasks_state_ready_data.dart';

class TasksContentReady<T> extends StatelessWidget {
  final TasksStateReadyData<T> data;
  final Function(String) onSearch;
  final Widget loader, content;
  final String hint;

  const TasksContentReady({
    super.key,
    required this.data,
    required this.onSearch,
    required this.loader,
    required this.content,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: _TasksAppBar(
          hint: hint,
          page: data.page,
          pages: data.tasks.length,
          search: data.search,
          onSearch: onSearch,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: data.isLoading ? loader : content,
    );
  }
}

class _TasksAppBar extends StatelessWidget {
  final int page, pages;
  final String search, hint;
  final void Function(String) onSearch;

  const _TasksAppBar({
    required this.page,
    required this.pages,
    required this.search,
    required this.hint,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.pv24,
      child: Row(
        children: [
          if (pages != 0)
            Text(
              '$page/$pages',
              style: context.appTheme?.text.w700s15cOptional,
            ),
          Flexible(
            child: SearchField(
              padding: TlSpaces.ph24,
              hint: hint,
              text: search,
              onChanged: onSearch,
            ),
          ),
        ],
      ),
    );
  }
}
