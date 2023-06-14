FROM alpine:latest

# Change Timezone
ENV TZ=Asia/Baku

RUN apk update && apk add -U tzdata \
    && apk add curl \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone
