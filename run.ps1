Set-Location $PSScriptRoot

Start-Process powershell {
  ./venv/scripts/activate
  Set-Location ./backend
  python manage.py runserver; Read-Host
}

Start-Process powershell {
  Set-Location ./frontend
  npm run serve; Read-Host
}