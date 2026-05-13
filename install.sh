apt update &&
    apt install curl gpg dbus lsb-release -y &&
    curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg &&
    echo "deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/cloudflare-client.list &&
    apt update &&
    apt install cloudflare-warp -y &&
    apt clean &&
    rm -rf /var/lib/apt/lists/*
