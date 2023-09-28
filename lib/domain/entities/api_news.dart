// Project imports:
import 'package:terralinkapp/domain/entities/api_region.dart';
import 'package:terralinkapp/domain/entities/api_story.dart';

class ApiNews {
  final String id;
  final String title;
  final String subtitle;
  final ApiNewsType type;
  final bool published;
  final String? icon;
  final String link;
  final String tag;
  final String backgroundColor;
  final String fontColor;
  final int sortId;
  final List<ApiStory> stories;
  final ApiRegion? region;

  const ApiNews({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.published,
    required this.icon,
    required this.link,
    required this.tag,
    required this.backgroundColor,
    required this.fontColor,
    required this.sortId,
    required this.stories,
    required this.region,
  });
}

enum ApiNewsType { link, story }
