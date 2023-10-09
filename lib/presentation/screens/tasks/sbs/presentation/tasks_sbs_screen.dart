// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';

class TasksSBSScreen extends StatelessWidget {
  const TasksSBSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TlAppBar(
        titleWidget: Text('SBS'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Text('SBS'),
          ),
        ],
      ),
    );
  }
}
