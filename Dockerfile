FROM rust:1.69-buster as builder

WORKDIR /app

# accept the build args
ARG DATABASE_URL

ENV DATABASE_URL=$DATABASE_URL

COPY . .

RUN cargo build --release

# production stage
FROM debian:buster-slim

WORKDIR /usr/local/bin

COPY --from=builder /app/target/release/rust-api .

CMD [ "./rust-api" ]