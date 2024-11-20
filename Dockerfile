# 베이스 이미지를 Node.js로 설정
FROM node:16-alpine

# 앱 디렉토리를 설정
WORKDIR /app

# package.json과 package-lock.json 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 프로젝트 소스 복사
COPY . .

# 개발 서버 실행
CMD ["npm", "start"]

# 컨테이너에서 사용할 포트 노출
EXPOSE 3000