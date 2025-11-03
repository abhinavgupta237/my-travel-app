class MediaItem {
  final String id;
  final String uri;
  final String type; // photo|video
  final double qualityScore;
  final double engagementScore;
  MediaItem({
    required this.id,
    required this.uri,
    required this.type,
    this.qualityScore = 0,
    this.engagementScore = 0,
  });
}