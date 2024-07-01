// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model_download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoDownloadModel _$VideoDownloadModelFromJson(Map<String, dynamic> json) =>
    VideoDownloadModel(
      json['source'] as String?,
      json['thumbnail'] as String?,
      json['title'] as String?,
      (json['video'] as List<dynamic>?)
          ?.map((e) => VideoQuality.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideoDownloadModelToJson(VideoDownloadModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'source': instance.source,
      'thumbnail': instance.thumbnail,
      'video': instance.video,
    };

VideoQuality _$VideoQualityFromJson(Map<String, dynamic> json) => VideoQuality(
      json['quality'] as String?,
      json['url'] as String?,
    );

Map<String, dynamic> _$VideoQualityToJson(VideoQuality instance) =>
    <String, dynamic>{
      'url': instance.url,
      'quality': instance.quality,
    };
