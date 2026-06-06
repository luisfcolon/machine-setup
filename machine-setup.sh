#!/usr/bin/env bash

pushd() {
  command pushd $@ > /dev/null
}

popd() {
  command popd $@ > /dev/null
}

declare -a root_folders=(
  "Workspace"
)

declare -a workspace_folders=(
  "projects"
  "repos"
  "docs"
  "playground"
)

declare -a project_folders=(
  "python"
  "ruby"
  "golang"
  "rust"
  "javascript"
  "shell"
  "tutorials"
)

if ! command -v brew > /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install --cask \
  docker \
  postman \
  iterm2 \
  caffeine \
  dropbox \
  firefox \
  brave-browser \
  google-chrome \
  slack \
  spotify \
  alfred \
  claude \
  claude-code \
  codex \
  chatgpt \
  espanso \
  openoffice \
  macdown \
  cyberduck \
  visual-studio-code \
  vlc \
  ngrok

brew install \
  dos2unix \
  git \
  node \
  vim \
  awscli \
  jq \
  jo \
  imagemagick \
  openssl \
  redis \
  ssh-copy-id \
  wget \
  htop \
  aircrack-ng \
  coreutils \
  elasticsearch \
  go \
  rbenv \
  ruby-build \
  yarn \
  pnpm \
  sass/sass/sass \
  gpg \
  ack \
  ripgrep \
  p7zip \
  yq \
  pyenv \
  uv \
  flyway \
  tree \
  pipenv \
  tmux \
  parallel \
  watchman \
  gh \
  tfenv

npm install -g gulp-cli

pushd $HOME
for folder in "${root_folders[@]}"
do
  if [[ ! -d $folder ]]; then
    mkdir $folder
  fi
done
popd $HOME

pushd $HOME/Workspace
for folder in "${workspace_folders[@]}"
do
  if [[ ! -d $folder ]]; then
    mkdir $folder
  fi
done
popd

pushd $HOME/Workspace/projects
for folder in "${project_folders[@]}"
do
  if [[ ! -d $folder ]]
  then
    mkdir $folder
  fi
done
popd

unset -f pushd
unset -f popd
