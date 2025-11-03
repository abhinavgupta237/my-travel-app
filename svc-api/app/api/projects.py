from fastapi import APIRouter
from app.schemas import ProjectCreate


router = APIRouter()


@router.post("/projects")
def create_project(project: ProjectCreate):
    return {"project_id": "p1", "status": "processing"}