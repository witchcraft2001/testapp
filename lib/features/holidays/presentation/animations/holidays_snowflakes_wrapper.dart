// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/features/holidays/domain/entities/app_snowflake_entity.dart';
import 'package:terralinkapp/features/holidays/presentation/cubits/holidays_snowflakes_cubit.dart';

class HolidaysSnowflakesWrapper extends StatelessWidget {
  final Widget child;
  final bool withStarted;

  const HolidaysSnowflakesWrapper({
    super.key,
    required this.child,
    this.withStarted = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HolidaysSnowflakesCubit()..init(context, withStarted: withStarted),
      child: Stack(
        children: [
          child,
          BlocBuilder<HolidaysSnowflakesCubit, List<AppSnowflakeEntity>>(
            builder: (_, state) => Stack(
              children: state
                  .map((snowflake) => AnimatedPositioned(
                        top: snowflake.top,
                        left: snowflake.left,
                        duration: Duration(seconds: snowflake.duration!),
                        curve: Curves.linear,
                        child: Container(
                          width: snowflake.size,
                          height: snowflake.size,
                          decoration: BoxDecoration(
                            borderRadius: TlDecoration.brBase,
                            color: Colors.white,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
