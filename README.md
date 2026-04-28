# QRGen for the IMIQ Project

QRGen is a lightweight static QR code generator served with NGINX. The web UI lets you create a stylized QR code with a logo, preview it in the browser, and copy the generated image to the clipboard.

## Features

- Generates QR codes from text or URLs
- Uses `qr-code-styling` for a modern gradient and logo overlay
- Clipboard image copy support in compatible browsers
- Served as a static site via NGINX in Docker

## Run locally

### Using Docker Compose

Create `compose.override.yml`:

```yaml
services:
  qrgen:
    ports:
      - "5000:80"
```
Then run:

```bash
docker compose up -d
```

Then open:

```
http://localhost/qrgen/index.html
```

## Project structure

- `Dockerfile` - builds an NGINX image and copies the static site into `/usr/share/nginx/html`
- `compose.yml` - Docker Compose service definition for the app
- `html/qrgen.html` - main QR generator UI
- `html/logo.png` - logo image embedded in the QR code

