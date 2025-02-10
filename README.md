Create the docker image with
```bash
docker build -t fastapi-with-uv-example .
```
Then, run it with
```bash
docker run -p 8000:80 -it fastapi-with-uv-example
```

This will allow you to access the app at `localhost:8000`.

To debug inside the container, run:
```bash
docker run -p 8000:80 -it fastapi-with-uv-example bash
```
This will overwrite the main executable with bash (so the app won't start).
We can then e.g. run `python` to debug inside the container, or a jupyter notebook with:
```bash
uv run jupyter lab --ip 0.0.0.0 -p 80 --allow-root --no-browser
```
Change 80 to whatever port you wrote in the docker run command above.
The Jupyter server will be available at `localhost:8000` or the port you mapped in the docker run command.
