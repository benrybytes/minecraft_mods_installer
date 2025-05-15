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
MRPACK_PATH="$MODS_DIR/Better%20MC%20%5BFABRIC%5D%20-%20BMC2%20v26.5.mrpack"
EXTRACT_DIR="$MODS_DIR/better_mc_unpack"

mkdir -p "$MODS_DIR"

declare -a arr=(
"https://cdn.modrinth.com/data/P7dR8mSH/versions/PB9Kjpo3/fabric-api-0.92.5%2B1.20.1.jar" 
"https://cdn.modrinth.com/data/AANobbMI/versions/OihdIimA/sodium-fabric-0.5.13%2Bmc1.20.1.jar"
"https://cdn.modrinth.com/data/mOgUt4GM/versions/lEkperf6/modmenu-7.2.2.jar"
"https://cdn.modrinth.com/data/uXXizFIs/versions/unerR5MN/ferritecore-6.0.1-fabric.jar"
"https://cdn.modrinth.com/data/gvQqBUqZ/versions/vuuAe7ZA/lithium-fabric-mc1.20.1-0.11.3.jar"
"https://cdn.modrinth.com/data/NNAgCjsB/versions/xuiHEnFJ/entityculling-fabric-1.7.4-mc1.20.1.jar"
"https://cdn.modrinth.com/data/5ZwdcRci/versions/6QvRWWbF/ImmediatelyFast-Fabric-1.5.0%2B1.20.4.jar"
"https://cdn.modrinth.com/data/nmDcB62a/versions/srmUM7tY/modernfix-fabric-5.21.0%2Bmc1.20.1.jar"
"https://cdn.modrinth.com/data/g96Z4WVZ/versions/5kAwHDZz/BadOptimizations-2.2.2-1.20.1.jar"
# "https://cdn.modrinth.com/data/shFhR8Vx/versions/Ur9uoHH5/Better%20MC%20%5BFABRIC%5D%20-%20BMC2%20v26.5.mrpack"
)

for i in "${arr[@]}"
do
	wget -P "$MODS_DIR" "$i"
	filename=$(echo "$i" | awk -F/ '{print $NF}')
	# chmod 777 "$MODS_DIR/$filename"
	# or do whatever with individual element of the array
done

# # === STEP 1: Unzip the .mrpack ===
# unzip -o "$MRPACK_PATH" -d "$HOME_FOUND" || {
#     echo "Failed to unzip $HOME_FOUND"
#     exit 1
# }
#
# chmod 777 "$MINECRAFT_DIR/modrinth.index.json"
#
# grep "https" "$MINECRAFT_DIR/modrinth.index.json" | while read -r URL; do
#     # Remove surrounding quotes (e.g., "https://...") → https://...
#     parsed_url="${URL%\"}"
#     parsed_url="${parsed_url#\"}"
#
#     # Download to MODS_DIR
#     wget -P "$MODS_DIR" "$parsed_url"
#
#     # Get filename from URL
#     filename=$(basename "$parsed_url")
#     
#     # Set permissions
#     chmod 777 "$MODS_DIR/$filename"
# done
#
