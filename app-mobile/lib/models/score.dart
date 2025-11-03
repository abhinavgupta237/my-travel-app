class Score {
  final String id;
  final double qualityScore;
  final double engagementScore;
  const Score({
    required this.id,
    this.qualityScore = 0,
    this.engagementScore = 0,
  });
}