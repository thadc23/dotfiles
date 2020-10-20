#! /bin/bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install wget zsh zsh-completions zsh-git-prompt
brew install kube-ps1
brew install kubernetes-cli kubectx kubernetes-helm kubeseal
brew install romkatv/powerlevel10k/powerlevel10k
brew install rbenv
brew install direnv
brew install cloudfoundry/tap/cf-cli@7
brew install cloudfoundry/tap/bosh-cli
brew install helm
brew install mveritym/homebrew-mel/kubedecode
brew install certstrap
brew install k3d
brew install k9s
brew install python3
brew install git
brew install hashicorp/tap/vault
brew install jenkins-x/jx/jx
brew tap homebrew/cask-fonts
brew cask install docker font-awesome-terminal-fonts
