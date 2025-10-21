#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y build-essential \
	autoconf \
	automake \
	ca-certificates \
	coreutils \
	curl \
	git \
	make \
	libbz2-dev \
	libffi-dev \
	libgl1-mesa-dev \
	libglu1-mesa-dev \
	libgmp-dev \
	libgtk-3-0 \
	liblzma-dev \
	libncurses-dev \
	libncursesw5-dev \
	libpng-dev \
	libreadline-dev \
	libsqlite3-dev \
	libssh-dev \
	libssl-dev \
	libusb-1.0-0 \
	libwebkit2gtk-4.1-0 \
	libwxgtk3.2-dev \
	libwxgtk-webview3.2-dev \
	libxml2-dev \
	libxml2-utils \
	libxmlsec1-dev \
	libyaml-dev \
	libzstd-dev \
	openjdk-11-jdk \
	tk-dev \
	unixodbc-dev \
	xsltproc \
	xz-utils \
	zlib1g-dev \
	fop \
	m4 \
	unzip

# homebrew
if ! type brew >/dev/null; then
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.bashrc
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

	brew install gcc
fi

# fish shell
if ! type fish >/dev/null; then
	brew install fish

	echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.config/fish/config.fish

	command -v fish | sudo tee -a /etc/shells

	sudo chsh -s "$(command -v fish)" "${USER}"
fi

# asdf
if ! type asdf >/dev/null; then
	cat >>~/.config/fish/config.fish <<EOF
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end

set --erase _asdf_shims
EOF
fi

# directories
mkdir ~/bin
mkdir -p ~/dev/me/
mkdir -p ~/dev/prima/
mkdir -p ~/dev/src/

# keymapp
if [ ! -s /etc/udev/rules.d/50-zsa.rules ]; then
	sudo touch /etc/udev/rules.d/50-zsa.rules

	sudo tee -a /etc/udev/rules.d/50-zsa.rules >/dev/null <<EOT
# Rules for Oryx web flashing and live training
KERNEL=="hidraw*", ATTRS{idVendor}=="16c0", MODE="0664", GROUP="plugdev"
KERNEL=="hidraw*", ATTRS{idVendor}=="3297", MODE="0664", GROUP="plugdev"

# Legacy rules for live training over webusb (Not needed for firmware v21+)
# Rule for all ZSA keyboards
SUBSYSTEM=="usb", ATTR{idVendor}=="3297", GROUP="plugdev"
# Rule for the Moonlander
SUBSYSTEM=="usb", ATTR{idVendor}=="3297", ATTR{idProduct}=="1969", GROUP="plugdev"
# Rule for the Ergodox EZ
SUBSYSTEM=="usb", ATTR{idVendor}=="feed", ATTR{idProduct}=="1307", GROUP="plugdev"
# Rule for the Planck EZ
SUBSYSTEM=="usb", ATTR{idVendor}=="feed", ATTR{idProduct}=="6060", GROUP="plugdev"

# Wally Flashing rules for the Ergodox EZ
ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789B]?", ENV{ID_MM_DEVICE_IGNORE}="1"
ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789A]?", ENV{MTP_NO_PROBE}="1"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789ABCD]?", MODE:="0666"
KERNEL=="ttyACM*", ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="04[789B]?", MODE:="0666"

# Keymapp / Wally Flashing rules for the Moonlander and Planck EZ
SUBSYSTEMS=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="df11", MODE:="0666", SYMLINK+="stm32_dfu"
# Keymapp Flashing rules for the Voyager
SUBSYSTEMS=="usb", ATTRS{idVendor}=="3297", MODE:="0666", SYMLINK+="ignition_dfu"
EOT

	sudo groupadd plugdev
	sudo usermod -aG plugdev $USER
fi

if [ ! -f ~/bin/keymapp ]; then
	curl -o ~/Downloads/keymapp.tar.gz https://oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/keymapp-latest.tar.gz
	tar -xvzf ~/Downloads/keymapp.tar.gz -C ~/Downloads/
	mv ~/Downloads/keymapp ~/bin/
	chmod +x ~/bin/keymapp
fi
