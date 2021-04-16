# README

gitbook docker构建环境，踩了半天坑，最后这篇文章拯救了自己。

https://zhuanlan.zhihu.com/p/343053359

## 使用方法

### 构建镜像

```bash
git clone https://github.com/yougar0/gitbook-docker.git
cd gitbook-docker
docker build -t gitbook .
```

### 命令

```bash
# init
docker run --rm -v "$PWD:/book" -p 127.0.0.1:4000:4000 gitbook gitbook init
# serve
docker run --rm -v "$PWD:/book" -p 127.0.0.1:4000:4000 gitbook gitbook serve
# build
docker run --rm -v "$PWD:/book" -p 127.0.0.1:4000:4000 gitbook gitbook build
# pdf
docker run --rm -v "$PWD:/book" -p 127.0.0.1:4000:4000 gitbook gitbook pdf .
```
