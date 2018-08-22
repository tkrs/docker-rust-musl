FROM ekidd/rust-musl-builder:1.28.0

RUN rustup update \
 && rustup install nightly \
 && rustup component add rustfmt-preview --toolchain=nightly \
 && rustup component add clippy-preview --toolchain=nightly \
 && rustup show \
 && cargo --version \
 && cargo +nightly clippy --version \
 && cargo +nightly fmt --version
