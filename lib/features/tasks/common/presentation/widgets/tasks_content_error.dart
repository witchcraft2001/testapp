// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_error_data.dart';

class TasksContentError extends StatelessWidget {
  final String message;
  final TlExceptionType type;
  final VoidCallback onPressed;

  const TasksContentError({
    super.key,
    required this.message,
    required this.onPressed,
    this.type = TlExceptionType.other,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TlAppBar(backgroundColor: Colors.transparent),
      body: TlErrorData(
        message: message,
        onPressed: onPressed,
        type: type,
      ),
    );
  }
}
