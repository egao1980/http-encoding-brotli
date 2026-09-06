# http-encoding-brotli

MIT. **`br`** Content-Encoding adapter for [`http-protocol`](https://github.com/egao1980/http-protocol).
Bytes go through [`compression-protocol`](https://github.com/egao1980/compression-protocol);
[`cl-stack-brotli`](https://github.com/egao1980/cl-stack-brotli) implements `:br`. Soft for
consumers — omit from `Accept-Encoding` when unavailable.

```bash
# CI: canned cl-repository test-system.yml. Deps from ghcr.io/egao1980/cl-systems.
# Local: (asdf:test-system "http-encoding-brotli")
```

## Publish

```bash
gh workflow run publish-checkout.yml -R egao1980/http-encoding-brotli
```
