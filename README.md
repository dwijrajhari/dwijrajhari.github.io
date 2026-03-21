# dwijrajhari.github.io

Minimal plaintext-style site built with [Jekyll](https://jekyllrb.com/).

## Local preview

```bash
bundle install
bundle exec jekyll serve
```

Open <http://localhost:4000>.

## Docker

```bash
docker compose up --build
```

Serves on **http://localhost:4000** (LiveReload on **35729**). On each start the container runs `bundle install` so gems match Linux under the bind mount (avoids a macOS `Gemfile.lock` vs image mismatch).

If Compose is **already running**, you don’t need another `docker compose run`. Edit files locally; Jekyll reloads from the bind mount. To run a one-off build inside the running container:

```bash
docker compose exec jekyll bundle exec jekyll build
```

After changing **Dockerfile** or **Gemfile**, rebuild: `docker compose up --build`.
