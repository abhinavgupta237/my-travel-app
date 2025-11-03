class QualityScorer:
    def score(self, image_bytes: bytes) -> float:
        return 0.82


class EngagementPredictor:
    def predict(self, features: dict) -> float:
        return 0.66