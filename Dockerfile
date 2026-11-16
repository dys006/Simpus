# --- Stage 1: Build ---
FROM gradle:8.10-jdk21 AS builder
WORKDIR /app
COPY . .
RUN gradle installDist --no-daemon

# --- Stage 2: Runtime ---
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=builder /app/build/install/Simpus /app
ENTRYPOINT ["/app/bin/Simpus"]