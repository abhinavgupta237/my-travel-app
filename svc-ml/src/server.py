from fastapi import FastAPI, UploadFile
from .models import QualityScorer, EngagementPredictor


app = FastAPI()
qs, ep = QualityScorer(), EngagementPredictor()


@app.post("/quality")
async def quality(file: UploadFile):
    return {"quality": qs.score(await file.read())}


@app.post("/engagement")
async def engagement(features: dict):
    return {"engagement": ep.predict(features)}