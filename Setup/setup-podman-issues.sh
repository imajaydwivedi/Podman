(base) saanvi@ryzen9:~/GitHub/Podman$ podman machine start
Starting machine "podman-machine-default"
Error: unable to start host networking: "could not find \"gvproxy\" in one of {[/usr/local/libexec/podman /usr/local/lib/podman /usr/libexec/podman /usr/lib/podman] {<nil>}}.  
To resolve this error, set the helper_binaries_dir key in the `[engine]` section of containers.conf to the directory containing your helper binaries."

Resolution => https://stackoverflow.com/a/73210319/4449743

Go to https://github.com/containers/gvisor-tap-vsock/releases and click on the newest one.

Under the Assets, download gvproxy-linux-amd64

Move it to /usr/libexec/podman under the name gvproxy.

(base) saanvi@ryzen9:~/Downloads$ mv gvproxy-linux-amd64 gvproxy
(base) saanvi@ryzen9:~/Downloads$ sudo cp gvproxy /usr/libexec/podman

(base) saanvi@ryzen9:~/Downloads$ ls -ltr /usr/libexec/podman
total 27232
lrwxrwxrwx 1 root root       19 Nov  4  2021 catatonit -> ../../bin/catatonit
-rwxr-xr-x 1 root root  3558560 Oct  2 03:24 rootlessport
-rwxr-xr-x 1 root root  1999200 Oct  2 03:24 quadlet
-rw-r--r-- 1 root root 11157764 Nov  9 13:56 gvproxy

(base) saanvi@ryzen9:~/Downloads$ sudo chmod +755 /usr/libexec/podman/gvproxy
(base) saanvi@ryzen9:~/Downloads$ ls -ltr /usr/libexec/podman
total 27232
lrwxrwxrwx 1 root root       19 Nov  4  2021 catatonit -> ../../bin/catatonit
-rwxr-xr-x 1 root root  3558560 Oct  2 03:24 rootlessport
-rwxr-xr-x 1 root root  1999200 Oct  2 03:24 quadlet
-rwxr-xr-x 1 root root 11157764 Nov  9 13:56 gvproxy

(base) saanvi@ryzen9:~/Downloads$
