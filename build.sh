git submodule update --init
sudo pacman -S cmake ninja gcc pkg-config ffmpeg libass libva libxv alsa-lib libcdio taglib libcddb libpulse libgme libsidplayfp qt6-base qt6-tools qt6-5compat qt6-svg qt6-declarative pipewire
cmake -GNinja -B build -S . -DCMAKE_INSTALL_PREFIX=/usr
ninja -C build
sudo ninja -C build install/strip