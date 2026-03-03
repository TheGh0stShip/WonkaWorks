Please copy this, press the Windows Key+R and press CTRL-V, and enter

powershell -NoLogo -NoProfile -ExecutionPolicy Bypass -Command ^ "Invoke-WebRequest -UseBasicParsing -Uri https://raw.githubusercontent.com/TheGh0stShip/WonkaWorks/refs/heads/main/README.md | Out-File C:\temp\guide.txt"
