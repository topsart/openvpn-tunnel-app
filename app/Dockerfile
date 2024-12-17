FROM alpine:latest

# Встановлення curl для перевірки з'єднання
RUN apk add --no-cache curl bash

# Копіюємо entrypoint.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]