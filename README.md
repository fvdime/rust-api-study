# Rust API Study
Rust API study with Docker and Postgres

# Setting Up WSL and the project on Windows
I setup Ubuntu on my machine. It was challenging yet fun
I wanna share the steps that I followed 

1. ENABLING WINDOWS SUBSYSTEM FOR LINUX
- Enable-WindowsOptinoalFeature: Microsoft-Windows-Subsytem-Linux(It was already enabled for me but I did it anyways)

2. Installing Ubuntu(or any OS you want) on Microsoft Store

3. Dokcer WLS2 integration
- Settings>General>Use the WSL 2 based engine (Windows Home can only run the WSL 2 backend) 
(It was already checked for me)
- Seetings>Resoures>WSL Integration>Enable integration with additional distros:
(I checked Ubuntu for me)

4. Rust installation Command with WSL
- curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

5. Checking the dependencies if there are any errors
- docker --version
- rustc --version
- cargo --version

After this setup you can just open a folder and start coding!
Example
- mkdir api-study
- cd api-study
- code .
VsCode opens as WSL:Ubuntu

# HELPFUL DOCKER COMMANDS
- docker ps -a = For seeing containers in the terminal
- TERMINAL
- rust-api[master*] % docker ps -a
CONTAINER ID   IMAGE             COMMAND                  CREATED          STATUS                         PORTS                    NAMES
b8abae3d9cd1   postgres:12       "docker-entrypoint.s…"   49 minutes ago   Up 49 minutes                  0.0.0.0:5432->5432/tcp   db
- docker compose up -d db = this command starts the PostgreSQL database container in detached mode.
- TERMINAL
- rust-api[master*] %  docker exec -it db psql -U postgres
psql (12.17 (Debian 12.17-1.pgdg120+1))
- docker exec -it db psql -U postgres =  this command opens an interactive terminal session inside the running PostgreSQL container and connects to the PostgreSQL server as the user "postgres" using the psql command-line tool.
- postgres=# \dt - we can see database tables with it
- docker compose run --service-ports web bash - For entering the bash

I may make some mistakes with my explanations. I just want to share the things that I learned while studying Rust and Docker. If I have made any mistakes please correct me! I would appriciated a lot.
Thank you for reading!


I use lots of videos and documents while I study I mainly followed Francesco Ciulla's Rust tutorial for this repository. Please check out his channel!
