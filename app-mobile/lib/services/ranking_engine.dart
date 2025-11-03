import '../models/media_item.dart';

class RankingEngine {
  List<MediaItem> rank(List<MediaItem> items) {
    final ranked = [...items]
      ..sort((a, b) => b.qualityScore.compareTo(a.qualityScore));
    return ranked;
  }
}