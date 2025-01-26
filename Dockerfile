FROM caddy
COPY Caddyfile /etc/caddy/Caddyfile
COPY sikademo.com.crt /etc/caddy/sikademo.com.crt
COPY sikademo.com.key /etc/caddy/sikademo.com.key
