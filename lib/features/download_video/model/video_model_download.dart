import 'package:json_annotation/json_annotation.dart';
part 'video_model_download.g.dart';

@JsonSerializable()
class VideoDownloadModel {
  String? title;
  String? source;
  String? thumbnail;
  List<VideoQuality>? video;
  VideoDownloadModel(this.source, this.thumbnail, this.title, this.video);
  factory VideoDownloadModel.fromJson(Map<String, dynamic> json) =>
      _$VideoDownloadModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoDownloadModelToJson(this);
}

@JsonSerializable()
class VideoQuality {
  String? url;
  String? quality;
  VideoQuality(this.quality, this.url);
  factory VideoQuality.fromJson(Map<String, dynamic> json) =>
      _$VideoQualityFromJson(json);

  Map<String, dynamic> toJson() => _$VideoQualityToJson(this);
}
