cd /v2raybin
wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip 
cd /v2raybin/v2ray-v$VER-linux-64
chmod +x v2ray
chmod +x v2ctl

echo -e -n "$CONFIG_JSON1" > config.json
echo -e -n "$PORT" >> config.json
echo -e -n "$CONFIG_JSON2" >> config.json
echo -e -n "$UUID" >> config.json
echo -e -n "$CONFIG_JSON3" >> config.json
echo -e -n "$ALERT" >> config.json
echo -e -n "$CONFIG_JSON4" >> config.json
echo -e -n {\"path\": \"/ >> config.json
echo -e -n "$WSPATH" >> config.json
echo -e -n "$CONFIG_JSON5" >> config.json
cat config.json
./v2ray
