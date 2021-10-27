#!/usr/bin/env bash

err() {
  echo >&2 "$(tput bold; tput setaf 1)[-] ERROR: ${*}$(tput sgr0)"

  exit 1337
}

warn() {
  echo >&2 "$(tput bold; tput setaf 1)[!] WARNING: ${*}$(tput sgr0)"
}

msg() {
  echo "$(tput bold; tput setaf 2)[+] ${*}$(tput sgr0)"
}

check_root_priv() {
        if [ "$(id -u)" -ne 0 ]; then
                err "You must be root"
        fi
}

install_files() {
  install /tmp/python-color-scripts/python-colorscript /usr/bin/ -m 775 -o root -g root
  install -D /tmp/python-color-scripts/art.json /etc/python-colorscript/art.json -m 644 -o root -g root
  install -D /tmp/python-color-scripts/_python-colorscript /usr/share/zsh/functions/Completion/Unix/_python-colorscript -m 644 -o root -g root
}

verify_install() {
  MAIN_SCRIPT=/usr/bin/python-colorscript
  ART_FILE=/etc/python-colorscript/art.json

  if ! [ -f "$MAIN_SCRIPT" ]; then
    err "Failed to install, $MAIN_SCRIPT failed to install"
  fi

  if ! [ -f "$ART_FILE" ]; then
    err "Failed to install, $ART_FILE failed to install"
  fi
}

main() {
  check_root_priv
  msg "Downloading source code"
  git clone https://github.com/stautonico/python-color-scripts /tmp/python-color-scripts 2> /dev/null

  msg "Installing files"
  install_files
  /usr/bin/env pip install requests

  msg "Removing temporary files"
  rm -r /tmp/python-color-scripts

  msg "Verifying install"
  verify_install

  msg "Successfully installed!"

}

main
