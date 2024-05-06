part of '../update_screen.dart';

class _InfoEntity extends StatelessWidget {
  final int index;
  final String entity;

  const _InfoEntity({
    required this.index,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Padding(
      padding: TlSpaces.pb16,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: TlSpaces.sp24,
            child: Text(
              '$index.',
              style: theme?.text.w700s16cSignatures,
            ),
          ),
          Flexible(
            child: Text(
              entity,
              style: theme?.text.w700s16cSignatures,
            ),
          ),
        ],
      ),
    );
  }
}
