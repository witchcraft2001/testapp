part of '../../../greeting_cards_screen.dart';

class _BodyFields extends StatelessWidget {
  final GreetingCardsReadyData data;

  const _BodyFields({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.bloc<GreetingCardsCubit>();
    final template = data.selected!;

    final widgets = <Widget>[];

    if (template.isAppeal) {
      widgets.add(
        TlTextField(
          key: const Key('appeal'),
          label: S.current.greetingCardsAppeal,
          hint: S.current.validationRequired,
          text: data.appeal,
          textInputAction: TextInputAction.next,
          padding: TlSpaces.pb8,
          onChanged: bloc.changeAppeal,
        ),
      );
    }

    if (template.isSignature) {
      widgets.add(
        TlTextField(
          key: const Key('signature'),
          label: S.current.greetingCardsSignature,
          hint: S.current.greetingCardsSignatureHint,
          text: data.signature,
          textInputAction: TextInputAction.next,
          onChanged: bloc.changeSignature,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TlTextField(
          key: Key('subject-${template.id}'),
          label: S.current.greetingCardsSubject,
          hint: S.current.greetingCardsSubjectHint,
          text: data.subject,
          textInputAction: TextInputAction.next,
          padding: TlSpaces.pb8,
          onChanged: bloc.changeSubject,
        ),
        ...widgets,
      ],
    );
  }
}
