$ErrorActionPreference = "Stop"

docker compose up --build --detach
Start-Process "http://localhost:8080"
Write-Host "BDSLab preview is available at http://localhost:8080"
