#!/bin/sh

MOD_DIR="TDS_inca_cosmogony"

cd ./objects
rm -f *.txt
echo "Building templates..."
BuildDFT ./templates
cd ..
echo "Cleaning up old version files..."
rm -rf "$HOME/.local/share/Steam/steam/apps/common/Dwarf Fortress/mods/$MOD_DIR"
mkdir -p "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/objects"
mkdir -p "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/graphics"
echo "Copying new files..."
cp -r ./objects/* "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/objects"
cp -r ./graphics/* "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/graphics"
cp ./info.txt "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/$MOD_DIR/"
echo "Removing old installation..."
rm -rf "$HOME/.local/share/Steam/steamapps/common/Dwarf Fortress/data/installed_mods/$MOD_DIR"*
rm -rf "$HOME/.local/share/Bay 12 Games/Dwarf Fortress/data/installed_mods/$MOD_DIR"*
echo "done."
