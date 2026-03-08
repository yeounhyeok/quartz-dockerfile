# BusyBox 호환성 문제를 피하기 위해 Debian 기반 이미지 사용
FROM node:22-bookworm-slim

# 필수 도구 설치 (Debian은 apt-get 사용)
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

# 1. Quartz 레포지토리 직접 클론
RUN git clone https://github.com/jackyzha0/quartz.git .

# 2. 의존성 설치
RUN npm install

# 3. Quartz 실행에 필요한 포트 개방
EXPOSE 80

# 4. 서빙 커맨드
CMD ["npx", "quartz", "build", "--serve", "--port", "80"]