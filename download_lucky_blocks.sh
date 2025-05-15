#!/bin/bash
OSTYPE="$(uname)"

if [[ "$OSTYPE" == "Darwin" ]]; then
	HOME_FOUND="$HOME/Library/Application Support"
	MINECRAFT_DIR="$HOME_FOUND/minecraft"
elif [[ "$OSTYPE" == "Linux" ]]; then
	HOME_FOUND="$HOME"
	MINECRAFT_DIR="$HOME_FOUND/.minecraft"
fi

MODS_DIR="$MINECRAFT_DIR/mods"
ADDONS_DIR="$MINECRAFT_DIR/addons"
MRPACK_PATH="$MODS_DIR/Better%20MC%20%5BFABRIC%5D%20-%20BMC2%20v26.5.mrpack"
EXTRACT_DIR="$MODS_DIR/better_mc_unpack"

mkdir -p "$MODS_DIR"

# declare -a arr=(
# 	"https://cdn.modrinth.com/data/rfMJRd3C/versions/9b1NuJHE/lucky_block-fabric-0.1.4%2B1.21.1.jar"
# 	"https://cdn.modrinth.com/data/P7dR8mSH/versions/73Q31My7/fabric-api-0.116.0%2B1.21.1.jar"
# 	"https://cdn.modrinth.com/data/gvQqBUqZ/versions/MM5BBBOK/lithium-fabric-0.15.0%2Bmc1.21.1.jar"
# 	"https://cdn.modrinth.com/data/mOgUt4GM/versions/YIfqIJ8q/modmenu-11.0.3.jar"
# 	"https://cdn.modrinth.com/data/uXXizFIs/versions/bwKMSBhn/ferritecore-7.0.2-hotfix-fabric.jar"
# 	"https://cdn.modrinth.com/data/1eAoo2KR/versions/equv2TRU/yet_another_config_lib_v3-3.6.6%2B1.21.1-fabric.jar"
# 	"https://cdn.modrinth.com/data/w7ThoJFB/versions/mGFci27z/Zoomify-2.14.2%2B1.21.1.jar"
# 	"https://cdn.modrinth.com/data/AANobbMI/versions/u1OEbNKx/sodium-fabric-0.6.13%2Bmc1.21.1.jar"
# 	"https://cdn.modrinth.com/data/lhGA9TYQ/versions/Wto0RchG/architectury-13.0.8-fabric.jar"
# 	"https://cdn.modrinth.com/data/Ha28R6CL/versions/iqWDz8qt/fabric-language-kotlin-1.13.3%2Bkotlin.2.1.21.jar"
# )
# declare -a arr=(
# "https://cdn.modrinth.com/data/FwSEI02w/versions/gc1BzGSL/classic-lucky-blocks-0.jar"
# "https://cdn.modrinth.com/data/P7dR8mSH/versions/ocg4hG3t/fabric-api-0.100.8%2B1.20.6.jar"
# "https://cdn.modrinth.com/data/gvQqBUqZ/versions/5a3sPIH2/lithium-fabric-mc1.20.6-0.12.5.jar"
# "https://cdn.modrinth.com/data/uXXizFIs/versions/i9RcCdZv/ferritecore-6.1.1-fabric.jar"
# # "https://cdn.modrinth.com/data/uCdwusMi/versions/1nexV1Jx/DistantHorizons-neoforge-fabric-2.3.2-b-1.20.6.jar"
# # "https://cdn.modrinth.com/data/vE2FN5qn/versions/rdaGu1EJ/letmedespawn-1.3.2.jar"
#
# # client
# "https://cdn.modrinth.com/data/sk9rgfiA/versions/b7VDEGTG/embeddium-fabric-0.3.20%2Bmc1.20.6.jar"
# "https://cdn.modrinth.com/data/mOgUt4GM/versions/HLa8flfl/modmenu-10.0.0.jar"
# "https://cdn.modrinth.com/data/NNAgCjsB/versions/WiyavApn/entityculling-fabric-1.7.4-mc1.20.6.jar"
# "https://cdn.modrinth.com/data/DynYZEae/versions/6P3px0Js/exordium-fabric-1.4.1-mc1.20.6.jar"
# )
#
declare -a arr=(
# server
"https://cdn.modrinth.com/data/derP0ten/versions/MpLmiqo6/MutantMonsters-v21.1.0-1.21.1-Fabric.jar"
"https://cdn.modrinth.com/data/ohNO6lps/versions/NqVx7ywO/ForgeConfigAPIPort-v21.1.3-1.21.1-Fabric.jar"
"https://cdn.modrinth.com/data/QAGBst4M/versions/oYPPpKUB/PuzzlesLib-v21.1.36-1.21.1-Fabric.jar"
"https://cdn.modrinth.com/data/P7dR8mSH/versions/73Q31My7/fabric-api-0.116.0%2B1.21.1.jar"
"https://cdn.modrinth.com/data/gvQqBUqZ/versions/MM5BBBOK/lithium-fabric-0.15.0%2Bmc1.21.1.jar"

# client
"https://cdn.modrinth.com/data/AANobbMI/versions/u1OEbNKx/sodium-fabric-0.6.13%2Bmc1.21.1.jar"
"https://cdn.modrinth.com/data/w7ThoJFB/versions/mGFci27z/Zoomify-2.14.2%2B1.21.1.jar"
"https://cdn.modrinth.com/data/Ha28R6CL/versions/iqWDz8qt/fabric-language-kotlin-1.13.3%2Bkotlin.2.1.21.jar"
"https://cdn.modrinth.com/data/mOgUt4GM/versions/YIfqIJ8q/modmenu-11.0.3.jar"
"https://cdn.modrinth.com/data/1eAoo2KR/versions/equv2TRU/yet_another_config_lib_v3-3.6.6%2B1.21.1-fabric.jar"
)

for i in "${arr[@]}"
do
	wget -N -P "$MODS_DIR" "$i"
	filename=$(echo "$i" | awk -F/ '{print $NF}')
done

# mkdir -p "$ADDONS_DIR"
# mkdir -p "$ADDONS_DIR/lucky"
# mkdir -p "$ADDONS_DIR/lucky/lucky_block_test"
#
# declare -a arr=(
#   "https://cdn.modrinth.com/data/U31IIGjY/versions/EGNCKG9o/modern-lucky-block-0.1.0%2B1.21.1.zip"
# )
#
# for i in "${arr[@]}"
# do
#     # Extract and decode the filename
#     encoded_filename=$(basename "${i%%\?*}")
#     decoded_filename=$(printf '%b' "${encoded_filename//%/\\x}")
#
#     filepath="$ADDONS_DIR/lucky/lucky_block_test/$decoded_filename"
#
#     # Only download if it doesn't already exist
#     if [[ ! -f "$filepath" ]]; then
#         wget -O "$filepath" "$i"
#     else
#         echo "$decoded_filename already exists, skipping download."
#     fi
#
#     # Unzip it
#     unzip -o "$filepath" -d "$ADDONS_DIR"
#
#     # Optional cleanup
#     rm "$filepath"
# done
#
