import os

# Configuration for ML inference service
USE_CLOUD_INFERENCE = os.getenv("USE_CLOUD_INFERENCE", "false").lower() == "true"