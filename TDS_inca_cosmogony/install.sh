#!/bin/sh

MOD_DIR="TDS_inca_cosmogony"

cd ./objects
BuildDFT ./templates
cd ..
rm -rf "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR"
mkdir -p "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/objects"
mkdir -p "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/graphics"
cp -r ./objects/* "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/objects"
cp -r ./graphics/* "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/graphics"
cp ./info.txt "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/"
rm -rf "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/data/installed_mods/$MOD_DIR"*
