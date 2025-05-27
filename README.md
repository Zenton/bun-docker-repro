Example of a weird bunx issue with tailwindcss cli (happens with v4 and v3).
When run from a mac (haven't tested others), doing a docker build for linux/amd64 breaks when using tailwindcss with bunx, but npx works fine and bunx works fine on linux/arm64.

# Run

```bash
$ ./run.sh
```

# Problematic output

The bunx version on linux/amd64 platform fails with:

```
> [4/4] RUN bun install --frozen-lockfile && bun run with-bunx:
0.114 bun install v1.2.14 (6a363a38)
0.171 Resolving dependencies
3.052 Resolved, downloaded and extracted [256]
3.077
3.078 + @tailwindcss/cli@4.1.7
3.078 + tailwindcss@4.1.7
3.078
3.079 44 packages installed [2.97s]
3.079
3.079 Blocked 2 postinstalls. Run `bun pm untrusted` for details.
3.116 $ bunx --bun @tailwindcss/cli -i ./input.css --minify
3.243 Resolving dependencies
4.280 Resolved, downloaded and extracted [156]
4.313 Saved lockfile
5.286 ≈ tailwindcss v4.1.7
5.286
5.377 Error: Cannot apply unknown utility class: px-6
5.384 error: script "with-bunx" exited with code 1
```

# Full output (so you don't have to run)

```
> ./run.sh

Passing - bun and npx on arm64 (when run from mac haven't tested other systems)
---- NPM -----
[+] Building 11.9s (9/9) FINISHED                                                                                                                                                                                                                                                                         docker:desktop-linux
 => [internal] load build definition from Dockerfile.npm                                                                                                                                                                                                                                                                  0.0s
 => => transferring dockerfile: 165B                                                                                                                                                                                                                                                                                      0.0s
 => [internal] load metadata for docker.io/library/node:24-alpine                                                                                                                                                                                                                                                         1.6s
 => [internal] load .dockerignore                                                                                                                                                                                                                                                                                         0.0s
 => => transferring context: 2B                                                                                                                                                                                                                                                                                           0.0s
 => [1/4] FROM docker.io/library/node:24-alpine@sha256:dfea0736e82fef246aba86b2082a5e86c4825470302692b841d097dd61253b79                                                                                                                                                                                                   5.5s
 => => resolve docker.io/library/node:24-alpine@sha256:dfea0736e82fef246aba86b2082a5e86c4825470302692b841d097dd61253b79                                                                                                                                                                                                   0.0s
 => => sha256:dfea0736e82fef246aba86b2082a5e86c4825470302692b841d097dd61253b79 3.87kB / 3.87kB                                                                                                                                                                                                                            0.0s
 => => sha256:7077740d4b2abd2ce623d223f4870aa1a4d1bd1585118f53f670ea10b4103a0f 1.72kB / 1.72kB                                                                                                                                                                                                                            0.0s
 => => sha256:ee24441d1d02a63fa236920f6b5f4d356bc800a2fe0d82e5a2175a5b58f24d76 6.22kB / 6.22kB                                                                                                                                                                                                                            0.0s
 => => sha256:3348e7e29aec1753dfde74c5b0951c92f950f584ccbb799f64b0ae4cd4f82bdf 52.12MB / 52.12MB                                                                                                                                                                                                                          4.5s
 => => sha256:1c273f105929485e1cd2b1205b36cfa85a15f038891080a25fa790961e616416 1.26MB / 1.26MB                                                                                                                                                                                                                            1.1s
 => => sha256:b8976d264c6dd1c3137db68b9c5346a510cd02df1d2dbee034bad5a0a8cb6d18 444B / 444B                                                                                                                                                                                                                                1.1s
 => => extracting sha256:3348e7e29aec1753dfde74c5b0951c92f950f584ccbb799f64b0ae4cd4f82bdf                                                                                                                                                                                                                                 0.9s
 => => extracting sha256:1c273f105929485e1cd2b1205b36cfa85a15f038891080a25fa790961e616416                                                                                                                                                                                                                                 0.0s
 => => extracting sha256:b8976d264c6dd1c3137db68b9c5346a510cd02df1d2dbee034bad5a0a8cb6d18                                                                                                                                                                                                                                 0.0s
 => [internal] load build context                                                                                                                                                                                                                                                                                         0.0s
 => => transferring context: 2.34kB                                                                                                                                                                                                                                                                                       0.0s
 => [2/4] WORKDIR /build                                                                                                                                                                                                                                                                                                  0.1s
 => [3/4] COPY . /build                                                                                                                                                                                                                                                                                                   0.0s
 => [4/4] RUN npm install && npm run with-npx                                                                                                                                                                                                                                                                             4.5s
 => exporting to image                                                                                                                                                                                                                                                                                                    0.1s
 => => exporting layers                                                                                                                                                                                                                                                                                                   0.1s
 => => writing image sha256:439bd2f84c3f55c0eaaffe5e079bc074c3524ac03bda03199c42f46abf6c9617                                                                                                                                                                                                                              0.0s
 => => naming to docker.io/library/weirdtest                                                                                                                                                                                                                                                                              0.0s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/ucizun1sfnj9ymltupwp4ygd0

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview
---- Bun -----
[+] Building 7.4s (9/9) FINISHED                                                                                                                                                                                                                                                                          docker:desktop-linux
 => [internal] load build definition from Dockerfile.bun                                                                                                                                                                                                                                                                  0.0s
 => => transferring dockerfile: 184B                                                                                                                                                                                                                                                                                      0.0s
 => [internal] load metadata for docker.io/oven/bun:latest                                                                                                                                                                                                                                                                1.7s
 => [internal] load .dockerignore                                                                                                                                                                                                                                                                                         0.0s
 => => transferring context: 2B                                                                                                                                                                                                                                                                                           0.0s
 => [1/4] FROM docker.io/oven/bun:latest@sha256:5a4b539bfd3d93bb61e7c18321e0d8726eee930ef8076ffd06930ac7baa24c15                                                                                                                                                                                                          0.0s
 => [internal] load build context                                                                                                                                                                                                                                                                                         0.0s
 => => transferring context: 1.48kB                                                                                                                                                                                                                                                                                       0.0s
 => CACHED [2/4] WORKDIR /build                                                                                                                                                                                                                                                                                           0.0s
 => [3/4] COPY . /build                                                                                                                                                                                                                                                                                                   0.0s
 => [4/4] RUN bun install --frozen-lockfile && bun run with-npx                                                                                                                                                                                                                                                           5.5s
 => exporting to image                                                                                                                                                                                                                                                                                                    0.1s
 => => exporting layers                                                                                                                                                                                                                                                                                                   0.1s
 => => writing image sha256:9cdc36112d9fdf02ee542c3c0e9bc5b97583574b6ccde53b9a11008f449d2d1a                                                                                                                                                                                                                              0.0s
 => => naming to docker.io/library/weirdtest                                                                                                                                                                                                                                                                              0.0s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/05zstfp8nhbsfzcjtzx2sw3lj

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview
Passing npm but not bun on amd64 (when run from mac haven't tested other systems)
---- NPM -----
[+] Building 9.5s (9/9) FINISHED                                                                                                                                                                                                                                                                          docker:desktop-linux
 => [internal] load build definition from Dockerfile.npm                                                                                                                                                                                                                                                                  0.0s
 => => transferring dockerfile: 165B                                                                                                                                                                                                                                                                                      0.0s
 => [internal] load metadata for docker.io/library/node:24-alpine                                                                                                                                                                                                                                                         0.4s
 => [internal] load .dockerignore                                                                                                                                                                                                                                                                                         0.0s
 => => transferring context: 2B                                                                                                                                                                                                                                                                                           0.0s
 => [1/4] FROM docker.io/library/node:24-alpine@sha256:dfea0736e82fef246aba86b2082a5e86c4825470302692b841d097dd61253b79                                                                                                                                                                                                   0.0s
 => [internal] load build context                                                                                                                                                                                                                                                                                         0.0s
 => => transferring context: 1.48kB                                                                                                                                                                                                                                                                                       0.0s
 => CACHED [2/4] WORKDIR /build                                                                                                                                                                                                                                                                                           0.0s
 => [3/4] COPY . /build                                                                                                                                                                                                                                                                                                   0.0s
 => [4/4] RUN npm install && npm run with-npx                                                                                                                                                                                                                                                                             8.9s
 => exporting to image                                                                                                                                                                                                                                                                                                    0.1s
 => => exporting layers                                                                                                                                                                                                                                                                                                   0.1s
 => => writing image sha256:33b505b551db159dafe7e00d6eabb87f95fe3f5d7bc2150f8ab00aa96260f4d8                                                                                                                                                                                                                              0.0s
 => => naming to docker.io/library/weirdtest                                                                                                                                                                                                                                                                              0.0s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/sgbo9thcyhjrrchpnq08ohv1i

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview
---- Bun -----
[+] Building 6.6s (8/8) FINISHED                                                                                                                                                                                                                                                                          docker:desktop-linux
 => [internal] load build definition from Dockerfile.bun                                                                                                                                                                                                                                                                  0.0s
 => => transferring dockerfile: 184B                                                                                                                                                                                                                                                                                      0.0s
 => [internal] load metadata for docker.io/oven/bun:latest                                                                                                                                                                                                                                                                0.9s
 => [internal] load .dockerignore                                                                                                                                                                                                                                                                                         0.0s
 => => transferring context: 2B                                                                                                                                                                                                                                                                                           0.0s
 => [1/4] FROM docker.io/oven/bun:latest@sha256:5a4b539bfd3d93bb61e7c18321e0d8726eee930ef8076ffd06930ac7baa24c15                                                                                                                                                                                                          0.0s
 => [internal] load build context                                                                                                                                                                                                                                                                                         0.0s
 => => transferring context: 1.48kB                                                                                                                                                                                                                                                                                       0.0s
 => CACHED [2/4] WORKDIR /build                                                                                                                                                                                                                                                                                           0.0s
 => [3/4] COPY . /build                                                                                                                                                                                                                                                                                                   0.0s
 => ERROR [4/4] RUN bun install --frozen-lockfile && bun run with-npx                                                                                                                                                                                                                                                     5.6s
------
 > [4/4] RUN bun install --frozen-lockfile && bun run with-npx:
0.112 bun install v1.2.14 (6a363a38)
0.169 Resolving dependencies
2.106 Resolved, downloaded and extracted [256]
2.127
2.127 + @tailwindcss/cli@4.1.7
2.127 + tailwindcss@4.1.7
2.127
2.129 44 packages installed [2.02s]
2.129
2.129 Blocked 2 postinstalls. Run `bun pm untrusted` for details.
2.166 $ bun x @tailwindcss/cli -i ./input.css --minify
2.289 Resolving dependencies
4.458 Resolved, downloaded and extracted [156]
4.496 Saved lockfile
5.486 ≈ tailwindcss v4.1.7
5.486
5.578 Error: Cannot apply unknown utility class: px-6
5.587 error: script "with-npx" exited with code 1
------
Dockerfile.bun:6
--------------------
   4 |
   5 |     COPY . /build
   6 | >>> RUN bun install --frozen-lockfile && bun run with-npx
   7 |
--------------------
ERROR: failed to solve: process "/bin/sh -c bun install --frozen-lockfile && bun run with-npx" did not complete successfully: exit code: 1

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/khrcelbj5rhfo9jtl80y8lf73
```
