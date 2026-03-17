proxy_set_header Host $host;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header X-Forwarded-Proto $scheme;

# failover:
proxy_intercept_errors on;
proxy_connect_timeout 2s;
proxy_read_timeout 5s;
proxy_send_timeout 5s;
