git submodule update --init &&
node-sass vados_bass.sass public/css/main.css &&
CSS=public/css/main.css &&
if [[ ! -f "$CSS" ]]; then
    git submodule update --init &&
    node-sass vados_bass.sass public/css/main.css
fi &&
BINARY=target/release/vados_bass &&
if [[ ! -f "$BINARY" ]]; then
    cargo build --release
fi &&
target/release/vados_bass