function actualizar
     apt update && apt -y full-upgrade && apt-get -y autoremove;
end
