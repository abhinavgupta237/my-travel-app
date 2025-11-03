import '../models/media_item.dart';

class QualityScorer {
  Future<List<MediaItem>> score(List<MediaItem> items) async {
    return items
        .map((m) => MediaItem(
              id: m.id,
              uri: m.uri,
              type: m.type,
              qualityScore: 0.8,
              engagementScore: m.engagementScore,
            ))
        .toList();
  }
}