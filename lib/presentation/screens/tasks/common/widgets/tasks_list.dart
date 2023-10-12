// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_empty_data.dart';

class TasksList extends StatelessWidget {
  final List<Widget> children;
  final VoidCallback onRefresh;
  final void Function(int)? onChangePage;

  const TasksList({
    super.key,
    required this.children,
    required this.onChangePage,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) {
      return TlEmptyData(
        asset: TlAssets.imageNoDocuments,
        message: S.current.tasksEmptyList,
        buttonTitle: S.current.btnRetry,
        onRefresh: () async => onRefresh,
        onPressed: onRefresh,
      );
    }

    return PageView(
      onPageChanged: onChangePage,
      children: children,
    );
  }
}
