import '../models/media_item.dart';

class PhotoImporter {
  Future<List<MediaItem>> import(String folderPath) async {
    // stub: return dummy items
    return List.generate(
        10,
        (i) => MediaItem(
              id: 'img$i',
              uri: '/tmp/img$i.jpg',
              type: 'photo',
            ));
  }
}