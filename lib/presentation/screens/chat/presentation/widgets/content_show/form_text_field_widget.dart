// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/domain/form_message.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class FormTextFieldWidget extends StatelessWidget {
  final FormMessage form;
  final String id;
  final String title;
  final String? subtitle;
  final ValueChanged<String> onChanged;

  final TextEditingController controller = TextEditingController();

  FormTextFieldWidget({super.key, required this.form, required this.id, required this.title, this.subtitle, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: ThemeProvider.labelLarge.copyWith(color: AppColors.textSignatures),
        ),
        subtitle != null
            ? Text(
                subtitle!,
                style: ThemeProvider.labelSmall.copyWith(color: AppColors.textOptional),
              )
            : Container(),
        const SizedBox(height: 4.0,),
        TextField(
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: context.appTheme?.appTheme.textMain),
          controller: controller,
          onChanged: onChanged,
        ),
        const SizedBox(height: 12.0,),
      ],
    );
  }
}
