#/usr/bin/python3
import logging

from starlette.applications import Starlette
from starlette.responses import JSONResponse
from starlette.routing import Route

log = logging.getLogger("testapp")

async def homepage(request):
    return JSONResponse({'hello': 'world'})


app = Starlette(debug=True, routes=[
    Route('/', homepage),
])
