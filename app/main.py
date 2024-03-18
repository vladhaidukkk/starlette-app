from starlette.applications import Starlette
from starlette.requests import Request
from starlette.responses import HTMLResponse
from starlette.routing import Route


async def index(request: Request):
    return HTMLResponse("Hello world!")


app = Starlette(routes=[Route("/", index)])
