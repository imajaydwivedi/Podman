# https://phoenixnap.com/kb/install-sql-server-macos
podman run -d --name sqlserver -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pa$$w0rd' -p 1433:1433 mcr.microsoft.com/mssql/server:2019-latest

# running pods
(base) ajay.dwivedi@24F-MACABL-1230 Podman % podman ps
CONTAINER ID  IMAGE                                       COMMAND               CREATED            STATUS         PORTS                   NAMES
136f6ad40e25  docker.io/library/postgres:latest           postgres              About an hour ago  Up 39 minutes  0.0.0.0:5432->5432/tcp  postgres
d346a53374e1  mcr.microsoft.com/mssql/server:2019-latest  /opt/mssql/bin/sq...  26 minutes ago     Up 26 minutes  0.0.0.0:1433->1433/tcp  sqlserver
(base) ajay.dwivedi@24F-MACABL-1230 Podman % 


