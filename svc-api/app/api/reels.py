from fastapi import APIRouter
from app.schemas import ReelRequest


router = APIRouter()


@router.post("/reels")
def create_reel(req: ReelRequest):
    # stub: return dummy reel URL
    return {"reel_id": "r1", "url": "http://localhost:8002/out.mp4"}