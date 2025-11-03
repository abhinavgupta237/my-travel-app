from pydantic import BaseModel


class ProjectCreate(BaseModel):
    name: str
    items: list[dict]


class ReelRequest(BaseModel):
    project_id: str
    music: str = "default"