CSS=public/css/main.min.css &&
  if [[ ! -f "$CSS" ]]; then
    git submodule update --init &&
      node-sass vados_bass.sass target/main.css &&
      mkdir -p public/css &&
      css-minify -f target/main.css -o public/css/
  fi &&
  BINARY=target/release/vados_bass &&
  if [[ ! -f "$BINARY" ]]; then
    rustup default stable &&
      cargo build --release
  fi &&
  target/release/vados_bass
