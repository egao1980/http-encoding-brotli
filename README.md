# http-encoding-brotli

MIT. **`br`** Content-Encoding backend for [`http-protocol`](https://github.com/egao1980/http-protocol).

Depends on [`cl-stack-brotli`](https://github.com/egao1980/cl-stack-brotli) (native overlay). Soft for consumers — omit from `Accept-Encoding` when unavailable.

```bash
# siblings: http-protocol/ cl-stack-brotli/ http-encoding-brotli/
# natives: cl-stack-brotli/lib/<os>-<arch>/
qlot install
qlot exec ros -S . -e '(asdf:test-system "http-encoding-brotli")'
```
