// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/generated/l10n.dart';

class TasksContentReadyList extends StatelessWidget {
  final List<Widget> children;
  final VoidCallback onRefresh;
  final void Function(int)? onChangePage;
  final String search;

  const TasksContentReadyList({
    super.key,
    required this.children,
    required this.onChangePage,
    required this.onRefresh,
    required this.search,
  });

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) {
      return TlEmptyData(
        asset: TlAssets.imageNoDocuments,
        message: search.isNotEmpty ? S.current.tasksEmptyListBySearch : S.current.tasksEmptyList,
        buttonTitle: S.current.btnRetry,
        onRefresh: () async => onRefresh(),
        onPressed: onRefresh,
      );
    }

    return PageView(
      onPageChanged: onChangePage,
      children: children,
    );
  }
}
