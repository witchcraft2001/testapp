// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/domain/new_employee.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/avatar.dart';
import 'package:terralinkapp/presentation/widgets/ellipse_item.dart';

class EmployeesWidget extends StatelessWidget {
  final List<NewEmployee> items;
  final VoidCallback? onPressed;

  const EmployeesWidget({super.key, required this.items, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final border = RoundedRectangleBorder(
      side: BorderSide.none,
      borderRadius: TlDecoration.brBase,
    );

    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        height: 122,
        width: 251,
        child: Card(
          shadowColor: context.appTheme?.appTheme.shadow,
          color: context.appTheme?.appTheme.specialColorMenu,
          elevation: 6.0,
          margin: const EdgeInsets.all(1.0),
          shape: border,
          child: InkWell(
            onTap: onPressed,
            customBorder: border,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 10.0, right: 12.0, bottom: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      EllipseItem(
                        color: context.appTheme?.appTheme.predictors3 ?? AppColors.predictors3,
                        child: SvgPicture.asset('assets/images/ic_user_tag_16.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          S.of(context).meetTitle,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: context.appTheme?.appTheme.predictors3),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: _getEmployeesAvatars(context, items),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _getEmployeesAvatars(BuildContext context, List<NewEmployee> items) {
    var list = List<Widget>.of([], growable: true);
    items.take(3).forEach((element) {
      var padding = switch (list.length) { < 2 => 11.0, _ => 7.0 };
      list.add(Padding(
        padding: EdgeInsets.only(right: padding),
        child: Avatar(avatarUrl: element.avatarUrl, size: AvatarSize.m),
      ));
    });
    if (items.length > 3) {
      list.add(EllipseItem(
        color: context.appTheme?.appTheme.primary ?? AppColors.primary,
        size: 20.0,
        padding: const EdgeInsets.only(right: 2.0),
        child: Center(
          child: Text(
            "+${items.length - 3}",
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: context.appTheme?.appTheme.textOnPrimary),
          ),
        ),
      ));
    }

    return list;
  }
}
