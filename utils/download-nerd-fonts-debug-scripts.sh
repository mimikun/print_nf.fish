#!/bin/bash

base_url="https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/bin/scripts/lib/"
scripts=(
    "i_all.sh"
    "i_cod.sh"
    "i_dev.sh"
    "i_fa.sh"
    "i_fae.sh"
    "i_iec.sh"
    "i_logos.sh"
    "i_material.sh"
    "i_md.sh"
    "i_oct.sh"
    "i_ple.sh"
    "i_pom.sh"
    "i_seti.sh"
    "i_weather.sh"
)

for script_name in "${scripts[@]}"; do
    download_url="$base_url$script_name"
    file_path="$script_name"

    echo "Download from $download_url"
    curl -sSL "$download_url" -o "$file_path"
done
