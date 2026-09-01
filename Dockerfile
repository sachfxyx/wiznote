FROM wiznote/wizserver:latest

# 自动识别xapp目录下版本文件夹并重命名，不再硬编码0.1.90
RUN cd /wiz/app/wizserver/web/prod/xapp && \
    APP_DIR=$(ls -d */ | head -1) && \
    mv "$APP_DIR" 0.1.107

COPY xapp /wiz/app/wizserver/web/prod/xapp/0.1.107
COPY NodeRSA.js /wiz/app/wizserver/
COPY index.html /wiz/app/wizserver/web/prod/
