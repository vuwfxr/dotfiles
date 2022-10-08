#!/usr/bin/bash


# install omz
arch_install_omz () {
    echo ""
}

# install zsh
arch_install_zsh() {
   if ! pacman -Qi zsh > /dev/null 2>&1;
   then
        echo "Installing zsh"
        if ! sudo pacman -S zsh --quiet --noconfirm;
        then
            echo "Install zsh failed"
        else
            echo "Installed zsh"
        fi
    fi
}

os_like=$(grep "ID_LIKE" /etc/os-release | awk -F= '{ print $2 }')
echo "Your OS is $os_like-like sysytem!"

case "$os_like" in
    "arch")
        arch_install_zsh
    ;;
    "debain") echo TODO
    ;;
    *) echo "$os_like-like not support!"
        return 0
    ;;
esac

