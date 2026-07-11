FROM alpine:3.19
RUN apk update && apk add --no-cache \
curl \
bash \
ca-certificates \
tzdata \
openssl
ENV TZ=Asia/Tehran
UI-Xدانلود و نصب آخرین نسخه 3 #
RUN bash -c "$(curl -L
https://github.com/mhsanaei/3x-ui/raw/main/install.sh)" @ v3.0.2
WORKDIR /usr/local/x-ui
COPY start.sh /usr/local/x-ui/start.sh
RUN chmod +x /usr/local/x-ui/start.sh
اکسپوز پورت پنل مدیریتی #
EXPOSE 2053
اکسپوز پورت نمونه برای ترافیک و کانفیگها #
EXPOSE 8080
CMD ["/bin/sh", "start.sh"]
