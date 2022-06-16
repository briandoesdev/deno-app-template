if ! command -v unzip &> /dev/null
then
    echo "unzip could not be found, installing now..."

    # https://github.com/denoland/deno_install#unzip-is-required
    apt-get install unzip -y
fi

# setup for deno
mkdir /var/opt/.deno
chown -R vagrant:vagrant /var/opt/.deno

# install latest Deno
curl -fsSL https://deno.land/x/install/install.sh | DENO_INSTALL=/var/opt/.deno sh
exit