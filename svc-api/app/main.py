from fastapi import FastAPI
from app.api import projects, rank, reels, analytics
from app.middleware import LoggingMiddleware

app = FastAPI(title="TravelPhoto API", version="0.1")
app.include_router(projects.router, prefix="/v1")
app.include_router(rank.router, prefix="/v1")
app.include_router(reels.router, prefix="/v1")
app.include_router(analytics.router, prefix="/v1")
app.add_middleware(LoggingMiddleware)

@app.get("/health")
def health():
    return {"ok": True}