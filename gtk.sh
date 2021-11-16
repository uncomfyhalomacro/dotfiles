#!/bin/sh
gnome_schema="org.gnome.desktop.interface"

gsettings set "$gnome_schema" gtk-theme "Adwaita-dark"
gsettings set "$gnome_schema" icon-theme "Papirus-Dark"
gsettings set "$gnome_schema" cursor-theme "Adwaita"
gsettings set "$gnome_schema" font-name "LiterationMono Nerd Font 10"

