import 'dart:math';

import 'package:extractor/extractor.dart';

import '../model/video_model_download.dart';

class VideoDownloadRepo {
  Future<VideoDownloadModel?> getVideo(String url) async {
    try {
      final response = await Extractor.getDirectLink(link: url);
      if (response != null) {
        return VideoDownloadModel.fromJson({
          "": response.title,
          "source": response.links!.first.href,
          "thumbnail": response.thumbnail,
          "video": [VideoQuality("720", response.links!.first.href)]
        });
      } else {
        return null;
      }
    } on Exception catch (e) {
      print("$e");
      // log("Exception $e" as num);
      return null;
    }
  }
}
