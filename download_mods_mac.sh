declare -a arr=("https://cdn.modrinth.com/data/ohNO6lps/versions/NqVx7ywO/ForgeConfigAPIPort-v21.1.3-1.21.1-Fabric.jar" 
"https://cdn.modrinth.com/data/oPwMsrcf/versions/ij0ut27J/FTBQuestsOptimizer-fabric-3.0.0-1.21.1.jar"
"https://cdn.modrinth.com/data/lhGA9TYQ/versions/Wto0RchG/architectury-13.0.8-fabric.jar" 
"https://cdn.modrinth.com/data/lRwTUnD7/versions/MK0cseik/rctmod-fabric-1.21.1-0.13.9-beta.jar"
"https://cdn.modrinth.com/data/CBfM2yw7/versions/9OEAzYUj/rctapi-fabric-1.21.1-0.10.6-beta.jar"
"https://cdn.modrinth.com/data/ZLu8WiYO/versions/uv7WzSTQ/cobblemonridingfabric-1.3.3.jar"
"https://cdn.modrinth.com/data/AANobbMI/versions/EoNKHoLH/sodium-fabric-0.6.5%2Bmc1.21.1.jar"
"https://cdn.modrinth.com/data/P7dR8mSH/versions/biIRIp2X/fabric-api-0.114.0%2B1.21.1.jar"
"https://cdn.modrinth.com/data/gvQqBUqZ/versions/GGl8GkvX/lithium-fabric-0.14.5%2Bmc1.21.1.jar"
"https://cdn.modrinth.com/data/MdwFAVRL/versions/qQkr9Wdi/Cobblemon-fabric-1.6.0%2B1.21.1.jar"
"https://cdn.modrinth.com/data/LPuJjiQz/versions/7Vq83ds8/cobblemon-spawn-notification-1.6-fabric-1.0.0.jar"
"https://cdn.modrinth.com/data/kZgRPg5R/versions/qXdpIng5/cobblemon_quests-%5B1.21.1%5D-fabric-1.1.12.jar"
"https://cdn.modrinth.com/data/WwDbGW1s/versions/6hqbntui/cobblemon-armors-1.3.0%2B1.6.0.jar"
"https://cdn.modrinth.com/data/s7N7AsqL/versions/oLuOcHz2/cobbledollars-fabric-2.0.0-BETA1%2B1.21.1.jar"
"https://mediafilez.forgecdn.net/files/6083/250/ftb-quests-fabric-2101.1.2.jar"
"https://mediafilez.forgecdn.net/files/6016/744/ftb-library-fabric-2101.1.7.jar"
"https://mediafilez.forgecdn.net/files/5882/218/ftb-teams-fabric-2101.1.1.jar"
"https://cdn.modrinth.com/data/8BmcQJ2H/versions/zupl9zNX/geckolib-fabric-1.21.1-4.7.3.jar")

for i in "${arr[@]}"
do
   curl --create-dirs --output-dir ~/Library/"Application Support"/minecraft/mods -O "$i"
   # or do whatever with individual element of the array
done

