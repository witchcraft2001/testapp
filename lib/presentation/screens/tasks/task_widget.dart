// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:pull_to_refresh/pull_to_refresh.dart';

// Project imports:
import 'package:terralinkapp/domain/task.dart';
import 'package:terralinkapp/domain/task_action.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/app_button.dart';
import 'package:terralinkapp/presentation/widgets/letter_avatar.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';

class TaskWidget extends StatefulWidget {
  final Task task;
  final VoidCallback onRefresh;
  final Function(Task task, TaskAction action, String? decision) onSetResult;

  const TaskWidget({super.key, required this.task, required this.onSetResult, required this.onRefresh});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> with TickerProviderStateMixin {
  TaskAction? selectedAction;
  late AnimationController _controller;
  late Animation<double> _animation;
  String? decision;
  final ScrollController _scrollController = ScrollController();
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 200), vsync: this, value: 1, lowerBound: 0, upperBound: 1);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed || status == AnimationStatus.dismissed) {
        widget.onSetResult(widget.task, selectedAction!, decision);
      }
    });
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: ScaleTransition(
        scale: _animation,
        child: SmartRefresher(
          enablePullDown: true,
          controller: _refreshController,
          onRefresh: widget.onRefresh,
          child: ListView(
            controller: _scrollController,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TlCard(child: _getTaskContent(context)),
              ),
              selectedAction != null ? _getActionForm(context) : _getButtonsRow(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getButtonsRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: Row(
        children: widget.task.actions
            .map((e) => Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: widget.task.actions.indexOf(e) != widget.task.actions.length - 1 ? 10.0 : 0),
                    child: AppButton(
                      title: e.title,
                      type: e.id.toLowerCase() == 'approve' ? Type.success : Type.primary,
                      onPressed: () {
                        setState(() {
                          selectedAction = e;
                          Future.delayed(const Duration(milliseconds: 100)).then((value) => _scrollController.animateTo(
                                _scrollController.position.maxScrollExtent,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeOut,
                              ));
                        });
                      },
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _getTaskContent(BuildContext context) {
    final List<Widget> list = List.empty(growable: true);
    list.add(_getTaskTitle(context));
    final exclude = List.of(['payer', 'initiator']);
    for (final block in widget.task.blocks) {
      final dataList = block.data.where((element) => !exclude.contains(element.id.toLowerCase())).toList();
      dataList.sort((a, b) => a.sort.compareTo(b.sort));
      for (var element in dataList) {
        list.add(_getTitle(context, element.title));
        list.add(_getValue(context, element.value, element.id.toLowerCase() == 'budgetleftafterrequestcostcentercurrency'));
        list.add(const SizedBox(
          height: 10.0,
        ));
      }
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list,
      ),
    );
  }

  Widget _getTitle(BuildContext context, String text) {
    return Text(
      text,
      style: ThemeProvider.labelMedium.copyWith(color: context.appTheme?.appTheme.textSignatures),
    );
  }

  Widget _getValue(BuildContext context, String text, bool isPrimaryColor) {
    return Text(
      text,
      style: ThemeProvider.bodyMedium.copyWith(color: isPrimaryColor ? context.appTheme?.appTheme.primary : context.appTheme?.appTheme.textMain),
    );
  }

  Widget _getTaskTitle(BuildContext context) {
    final payer = widget.task.blocks.firstOrNull?.data.firstWhere((element) => element.id.toLowerCase() == "payer");
    final initiator = widget.task.blocks.firstOrNull?.data.firstWhere((element) => element.id.toLowerCase() == "initiator");
    final initials = payer?.value.toUpperCase().split(' ').take(2).where((element) => element.isNotEmpty).map((e) => e.substring(0, 1)).join();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        initials != null
            ? Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: LetterAvatar(initials),
              )
            : Container(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            payer != null ? _getBlock(context, payer.title, payer.value) : Container(),
            payer != null || initiator != null
                ? const SizedBox(
                    height: 10,
                  )
                : Container(),
            initiator != null ? _getBlock(context, initiator.title, initiator.value) : Container(),
          ],
        ),
      ],
    );
  }

  Widget _getBlock(BuildContext context, String title, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_getTitle(context, title), _getValue(context, value, false)],
    );
  }

  Widget _getActionForm(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: TlCard(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.current.decisionComment,
                style: ThemeProvider.bodySmall.copyWith(color: context.appTheme?.appTheme.textSignatures),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFieldFocus(
                controller: controller,
                onFocusChanged: (focused) {
                  if (focused) {
                    Future.delayed(const Duration(milliseconds: 600)).whenComplete(() {
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    });
                  }
                },
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: AppButton(
                        title: selectedAction?.title,
                        type: selectedAction?.id.toLowerCase() == 'approve' ? Type.success : Type.primary,
                        onPressed: () {
                          setState(() {
                            decision = controller.text;
                            _controller.reverse();
                          });
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    child: AppButton(
                      title: S.current.btnCancel,
                      type: Type.secondary,
                      onPressed: () {
                        setState(() {
                          selectedAction = null;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldFocus extends StatefulWidget {
  final TextEditingController controller;
  final Function(bool) onFocusChanged;

  const TextFieldFocus({super.key, required this.controller, required this.onFocusChanged});

  @override
  State<TextFieldFocus> createState() => _TextFieldFocusState();
}

class _TextFieldFocusState extends State<TextFieldFocus> {
  final FocusNode _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    widget.onFocusChanged(_focus.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: context.appTheme?.appTheme.textMain),
      controller: widget.controller,
      onTap: _onFocusChange,
      focusNode: _focus,
    );
  }
}
