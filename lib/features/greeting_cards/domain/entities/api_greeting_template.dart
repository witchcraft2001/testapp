// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';
import 'package:terralinkapp/features/region/domain/entities/api_region.dart';

class ApiGreetingTemplate {
  final String id;
  final String title;
  final ApiGreetingTemplateAccess access;
  final String fontColor;
  final int sortId;
  final List<MediaContent> groups;
  final Color? backgroundColor;
  final ApiRegion? region;
  final String? image;
  final bool isPublished, isAppeal, isSignature;

  const ApiGreetingTemplate({
    required this.id,
    required this.title,
    required this.access,
    required this.isPublished,
    required this.fontColor,
    required this.sortId,
    required this.groups,
    this.region,
    this.backgroundColor,
    this.image,
    this.isAppeal = false,
    this.isSignature = false,
  });
}

enum ApiGreetingTemplateAccess { open, limited }
