#!/bin/bash

cd ./objects
BuildDFT ./templates
cd ..
mkdir -p "~/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/TDS_inca_cosmogony/objects"
mkdir -p "~/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/TDS_inca_cosmogony/graphics"
cp -r ./objects/* "~/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/TDS_inca_cosmogony/objects"
cp -r ./graphics/* "~/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/TDS_inca_cosmogony/graphics"
cp ./info.txt "~/.local/share/Steam/steamapps/common/Dwarf Fortress/mods/TDS_inca_cosmogony/graphics"
rm -rf "~/.local/share/Steam/steamapps/common/Dwarf Fortress/data/installed_mods/TDS_inca_cosmogony*"
