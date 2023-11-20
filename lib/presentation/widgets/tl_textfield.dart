// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/tl_label.dart';

class TlTextField extends StatefulWidget {
  final String label;
  final String text;
  final String? hint;
  final String? subtitle;
  final void Function(String value) onChanged;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets? padding;
  final EdgeInsets? paddingLabel;
  final bool autofocus;
  final int? minLines;
  final int? maxLines;
  final TextEditingController? controller;

  const TlTextField({
    super.key,
    required this.label,
    required this.text,
    required this.onChanged,
    this.validator,
    this.hint,
    this.subtitle,
    this.padding,
    this.paddingLabel,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.sentences,
    this.focusNode,
    this.inputFormatters,
    this.autofocus = false,
    this.minLines,
    this.maxLines, this.controller,
  });

  @override
  State<TlTextField> createState() => _TlTextFieldState();
}

class _TlTextFieldState extends State<TlTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    if (_controller.text != widget.text) {
      _controller.text = widget.text;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TlLabel(
            text: widget.label,
            padding: widget.paddingLabel,
          ),
          if (widget.subtitle != null && widget.subtitle!.isNotEmpty)
            _TlSubtitle(subtitle: widget.subtitle!),
          TextFormField(
            autofocus: widget.autofocus,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: context.appTheme?.appTheme.textMain,
                  fontWeight: FontWeight.normal,
                ),
            controller: _controller,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            textCapitalization: widget.textCapitalization,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            validator: widget.validator,
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              hintText: widget.hint ?? '',
            ),
            minLines: widget.minLines,
            maxLines: widget.maxLines,
          ),
        ],
      ),
    );
  }
}

class _TlSubtitle extends StatelessWidget {
  final String subtitle;

  const _TlSubtitle({required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.pb4,
      child: Text(
        subtitle,
        style: ThemeProvider.labelSmall.copyWith(color: context.appTheme?.appTheme.textOptional),
      ),
    );
  }
}
