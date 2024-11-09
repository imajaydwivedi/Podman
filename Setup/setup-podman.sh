sudo apt update

# podman cli
sudo apt install podman
# podman desktop (gui)
flatpak install flathub io.podman_desktop.PodmanDesktop

podman info

podman version

# get linux host release
lsb_release -a

# Troubleshoot Nginx issue
sudo systemctl start nginx.service
# nginx logs
journalctl -xeu nginx.service

podman machine init
podman machine list
podman machine start

podman run hello-world


(base) saanvi@ryzen9:~/GitHub/Podman$ podman machine start
Starting machine "podman-machine-default"
Error: unable to start host networking: "could not find \"gvproxy\" in one of {[/usr/local/libexec/podman /usr/local/lib/podman /usr/libexec/podman /usr/lib/podman] {<nil>}}.  
To resolve this error, set the helper_binaries_dir key in the `[engine]` section of containers.conf to the directory containing your helper binaries."

(base) saanvi@ryzen9:~/GitHub/Podman$ 

find / -name gvproxy 2>/dev/null

(base) saanvi@ryzen9:~/Downloads$ ls -ltr /usr/local/bin/podman-remote-static-linux_amd64 
-rwxr-xr-x 1 1001 tcpdump 46154207 Nov  7 00:48 /usr/local/bin/podman-remote-static-linux_amd64

