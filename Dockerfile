FROM fischerscode/flutter:3.24.3 AS build

# Activate the jaspr cli.
RUN dart pub global activate jaspr_cli

WORKDIR /app
# Copy all files into the current image.
COPY . .


# Resolve app dependencies.
RUN rm -f pubspec_overrides.yaml
RUN rm -f pubspec.lock
RUN rm -rf .dart_tool
RUN rm -rf build

RUN dart pub get

# Build project
RUN dart pub global run jaspr_cli:jaspr build --verbose

# Start the server.
EXPOSE 8080
CMD ["/app/build/jaspr/app"]