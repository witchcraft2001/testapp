// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';
import 'package:terralinkapp/features/region/domain/entities/api_region.dart';

class ApiNews {
  final String id;
  final String title;
  final String subtitle;
  final ApiNewsType type;
  final bool published;
  final String link;
  final String tag;
  final String fontColor;
  final int sortId;
  final List<MediaContent> stories;
  final String? icon;
  final Color? backgroundColor;
  final ApiRegion? region;

  const ApiNews({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.published,
    required this.link,
    required this.tag,
    required this.fontColor,
    required this.sortId,
    required this.stories,
    this.icon,
    this.region,
    this.backgroundColor,
  });
}

enum ApiNewsType { link, story }
