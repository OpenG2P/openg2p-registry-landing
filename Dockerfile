FROM nginx:latest

# Copy the HTML file with the placeholder
COPY ./html/sr-landing.html /usr/share/nginx/html

# Copy the entrypoint script
COPY entrypoint.sh /docker-entrypoint.d/50-landing-entrypoint.sh

# Set environment variable for testing (can be overridden in deployment)
ENV SR_ADMIN_URL="https://admin.explore.openg2p.org"
ENV SR_REPORTING_URL="https://reporting.explore.openg2p.org"
ENV SR_LOGGING_URL="https://reporting.explore.openg2p.org"
ENV SR_MINIO_URL="https://minio.explore.openg2p.org"
ENV SR_ODK_URL="https://odk.explore.openg2p.org"
ENV SR_KAFKA_URL="https://kafka.explore.openg2p.org"
ENV SR_SUPERSET_URL="https://kafka.explore.openg2p.org"
ENV SR_KEYCLOAK_ACCOUNT_CONSOLE_URL="https://keycloak.openg2p.org/realms/public/account"
ENV SR_VERSION="develop"
ENV SR_APP_VERSION="develop"
