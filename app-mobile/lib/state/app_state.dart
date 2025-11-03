import '../models/media_item.dart';

class AppState {
  final List<MediaItem> media;
  final bool loading;
  const AppState({this.media = const [], this.loading = false});
}