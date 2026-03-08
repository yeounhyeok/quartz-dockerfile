# Quartz Docker 🪴

**Quartz v4**를 도커로 감싸 어디서든 쉽게 띄울 수 있게 만든 버전입니다.

(A containerized version of Quartz v4 for easy deployment.)

## 🚀 Quick Start (빠른 시작)

1. **복제 (Clone)**
```bash
git clone <your-repo-url>
cd quartz-docker
mkdir content

```


2. **콘텐츠 추가 (Add Content)**
`content/` 폴더에 마크다운 파일들을 넣으세요. `index.md`는 필수입니다.
(Place your Markdown files in `content/`. `index.md` is required.)
3. **실행 (Run)**
```bash
docker compose up -d

```


접속 주소: `http://localhost:8080`

---

## ⚙️ Configuration (설정)

### 볼륨 (Volumes)

로컬의 `content` 폴더가 컨테이너와 연결됩니다.

(Mounts your local `content` folder to the container.)

```yaml
volumes:
  - ./content:/usr/src/app/content:ro

```

### 포트 (Port)

기본은 `8080`입니다. 변경하려면 `docker-compose.yml`을 수정하세요.

(Default is `8080`. Change it in `docker-compose.yml` if needed.)

---

## 🛠 Features (특징)

* **Node.js 22+**: 최신 사양 완벽 지원 (Fully compatible)
* **Debian Slim**: 리눅스 표준 명령어 호환성 확보 (Ensures GNU command compatibility)
* **Auto-Build**: 컨테이너 시작 시 최신 Quartz 소스를 자동으로 가져와 빌드 (Automatically clones and builds on start)

