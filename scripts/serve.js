#!/usr/bin/env node
/**
 * Minimal zero-dependency static file server for local development.
 *
 * Usage:
 *   npm run serve
 *   PORT=9000 npm run serve
 *
 * Then open http://localhost:8000 (or the PORT you chose).
 */
import { createServer } from 'node:http';
import { createReadStream, statSync } from 'node:fs';
import { extname, resolve, sep } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(fileURLToPath(new URL('..', import.meta.url)));
const port = Number(process.env.PORT) || 8000;

const MIME_TYPES = {
    '.html': 'text/html; charset=utf-8',
    '.js': 'text/javascript; charset=utf-8',
    '.mjs': 'text/javascript; charset=utf-8',
    '.css': 'text/css; charset=utf-8',
    '.json': 'application/json; charset=utf-8',
    '.pl': 'text/plain; charset=utf-8',
    '.txt': 'text/plain; charset=utf-8',
    '.wasm': 'application/wasm',
    '.svg': 'image/svg+xml',
    '.png': 'image/png',
    '.jpg': 'image/jpeg',
    '.jpeg': 'image/jpeg',
    '.ico': 'image/x-icon',
};

function send(res, status, body, contentType = 'text/plain; charset=utf-8') {
    res.writeHead(status, { 'Content-Type': contentType });
    res.end(body);
}

const server = createServer((req, res) => {
    const url = new URL(req.url || '/', `http://${req.headers.host || 'localhost'}`);
    let pathname = decodeURIComponent(url.pathname);

    if (pathname === '/') pathname = '/index.html';

    const filePath = resolve(root, `.${pathname}`);

    // Prevent path traversal outside the project directory.
    if (filePath !== root && !filePath.startsWith(root + sep)) {
        send(res, 403, 'Forbidden');
        return;
    }

    let stats;
    try {
        stats = statSync(filePath);
    } catch {
        send(res, 404, `Not found: ${pathname}`);
        return;
    }

    if (stats.isDirectory()) {
        res.writeHead(302, { Location: `${pathname.replace(/\/$/, '')}/index.html` });
        res.end();
        return;
    }

    const contentType = MIME_TYPES[extname(filePath).toLowerCase()] || 'application/octet-stream';
    res.writeHead(200, {
        'Content-Type': contentType,
        'Content-Length': stats.size,
        'Cache-Control': 'no-cache',
    });
    createReadStream(filePath).pipe(res);
});

server.listen(port, () => {
    console.log(`Serving ${root}`);
    console.log(`Open http://localhost:${port}`);
});
