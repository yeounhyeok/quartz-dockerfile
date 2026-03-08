# Quartz Docker

Dockerized version of [Quartz](https://github.com/jackyzha0/quartz), a fast, elegant digital garden built with Next.js and Preact.
Quartz의 Docker 버전으로, Next.js와 Preact로 만든 빠르고 우아한 디지털 정원입니다.

## Prerequisites
전제 조건 (필요한 것들)

- Docker
- Docker Compose

## Installation
설치하기

1. Clone or download this repository:
   이 저장소를 복제하거나 다운로드하세요:

```bash
git clone <your-repo-url>
cd quartz
```

2. Create a `content` directory and add your markdown files:
   `content` 디렉토리를 만들고 마크다운 파일을 추가하세요:

```bash
mkdir content
# Copy your .md files into the content directory
```

3. Build and start the container:
   컨테이너를 빌드하고 시작하세요:

```bash
docker compose up -d
```

The application will be available at `http://localhost:8080`
애플리케이션은 `http://localhost:8080`에서 사용할 수 있습니다.

## Configuration
설정하기

### Volumes
볼륨 설정

The `docker-compose.yml` mounts your local `content` directory into the container:
`docker-compose.yml`이 로컬 `content` 디렉토리를 컨테이너 안에 연결합니다:

```yaml
volumes:
  - ./content:/usr/src/app/content:ro
```

Place your markdown files in the `content` directory relative to `docker-compose.yml`.
마크다운 파일들을 `docker-compose.yml`이 있는 폴더 내의 `content` 디렉토리에 넣으세요.

### Port
포트 설정

Default port is `8080`. To change it, edit `docker-compose.yml`:
기본 포트는 `8080`입니다. 변경하려면 `docker-compose.yml`을 수정하세요:

```yaml
ports:
  - "YOUR_PORT:80"
```

## Usage
사용 방법

Once the container is running, Quartz will automatically:
컨테이너가 실행 중이면 Quartz는 자동으로:

1. Clone the Quartz repository
   Quartz 저장소를 복제합니다
2. Install npm dependencies  
   npm 의존성을 설치합니다
3. Build and serve your content at `http://localhost:8080`
   콘텐츠를 빌드하고 `http://localhost:8080`에서 제공합니다

### View Logs
로그 보기

```bash
docker compose logs -f
```

### Stop the Container
컨테이너 중지하기

```bash
docker compose down
```

### Rebuild
다시 빌드하기

```bash
docker compose build --no-cache
docker compose up -d
```

## Dockerfile
Dockerfile 설명

The Dockerfile:
Dockerfile의 역할:
- Uses `node:22-bookworm-slim` for Node.js 22+ compatibility
  Node.js 22+ 호환성을 위해 `node:22-bookworm-slim` 이미지를 사용합니다
- Clones the official Quartz repository
  공식 Quartz 저장소를 복제합니다
- Installs dependencies and serves on port 80 (mapped via Docker Compose)
  의존성을 설치하고 포트 80에서 서빙합니다 (Docker Compose를 통해 매핑됨)

## Tips
팁!

- Place your markdown files in the `content` directory
  마크다운 파일들을 `content` 디렉토리에 넣으세요
- Quartz will serve them as a static site
  Quartz는 이들을 정적 사이트로 제공합니다
- The content directory is mounted as read-only for safety
  안전을 위해 content 디렉토리는 읽기 전용으로 연결됩니다
- Changes to content files require a container restart
  콘텐츠 파일 변경 후에는 컨테이너를 다시 시작해야 합니다

## License
라이선스

This Docker setup is for the [Quartz](https://github.com/jackyzha0/quartz) project. Please refer to the original project's license.
이 Docker 설정은 [Quartz](https://github.com/jackyzha0/quartz) 프로젝트용입니다. 원본 프로젝트의 라이선스를 참고하세요.

## Support

For issues with Quartz itself, visit [github.com/jackyzha0/quartz](https://github.com/jackyzha0/quartz)
