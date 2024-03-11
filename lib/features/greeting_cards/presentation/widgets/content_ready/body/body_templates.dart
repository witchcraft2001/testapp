part of '../../../greeting_cards_screen.dart';

class _BodyTemplates extends StatelessWidget {
  final GreetingCardsReadyData data;

  const _BodyTemplates({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme!.colors;

    return Container(
      height: TlSizes.greetingsTemplateSize,
      margin: TlSpaces.ph24v16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.templates.length,
        itemBuilder: (context, index) {
          final template = data.templates[index];

          final isSelected = template.id == data.selected?.id;
          final borderColor = isSelected ? colors.primary : colors.brAndIcons;

          return Container(
            width: TlSizes.greetingsTemplateSize,
            margin: TlSpaces.pr16,
            child: GestureDetector(
              onTap: isSelected
                  ? null
                  : () => context.bloc<GreetingCardsCubit>().selectTemplate(template),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: template.backgroundColor ?? colors.bgMenu,
                  image: template.image != null
                      ? DecorationImage(
                          image: CachedNetworkImageProvider(template.image!),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          filterQuality: FilterQuality.medium,
                        )
                      : null,
                  borderRadius: TlDecoration.brS,
                  border: Border.all(color: borderColor),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
