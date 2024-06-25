# Build stage
FROM dart:3.2.5 AS build

WORKDIR /app
COPY . .

RUN dart pub get
RUN jaspr build

# Final image stage
FROM busybox:1.36.1-glibc

# Copy the built application and assets from the build stage
COPY --from=build /app/build/jaspr /app

# Expose port 8080 for the application
EXPOSE 8080

# Run the application
CMD ["/app/app"]