import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/media_item.dart';
import '../services/photo_importer.dart';
import '../services/dedup_engine.dart';
import '../services/quality_scorer.dart';
import '../services/ranking_engine.dart';
import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());
  final importer = PhotoImporter();
  final deduper = DedupEngine();
  final scorer  = QualityScorer();
  final ranker  = RankingEngine();

  Future<void> importAndRank(String folderPath) async {
    emit(const AppState(loading: true));
    final items = await importer.import(folderPath);
    final unique = deduper.dedup(items);
    final scored = await scorer.score(unique);
    final ranked = ranker.rank(scored);
    emit(AppState(media: ranked, loading: false));
  }
}