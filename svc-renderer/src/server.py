from fastapi import FastAPI
from pydantic import BaseModel
from .ffmpeg_wrapper import assemble_clips


app = FastAPI()


class ReelRequest(BaseModel):
    clips: list[str]
    music: str


@app.post("/reel")
def reel(req: ReelRequest):
    out = "/tmp/out.mp4"
    assemble_clips(req.clips, req.music, out)
    return {"url": f"file://{out}"}


@app.get("/health")
def health():
    return {"status": "ok"}