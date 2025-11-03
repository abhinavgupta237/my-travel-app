from fastapi import APIRouter
from pydantic import BaseModel


router = APIRouter()


class Event(BaseModel):
    user_id: str
    event: str
    ts: int
    meta: dict | None = None


@router.post("/analytics/events")
def track_event(event: Event):
    # stub: accept event
    return {"ok": True}