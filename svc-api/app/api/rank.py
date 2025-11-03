from fastapi import APIRouter


router = APIRouter()


@router.get("/projects/{project_id}/rank")
def rank_project(project_id: str):
    # return an empty ranking list for now
    return {"items": []}