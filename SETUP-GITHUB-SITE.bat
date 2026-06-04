@echo off
title DreamTown - GitHub site setup (one time)
cd /d "%~dp0"

where gh >nul 2>&1
if errorlevel 1 (
  echo.
  echo Install GitHub CLI first: https://cli.github.com/
  echo Then run this file again.
  echo.
  pause
  exit /b 1
)

echo.
echo === Step 1: GitHub login (browser opens once) ===
gh auth status >nul 2>&1
if errorlevel 1 (
  gh auth login -h github.com -p https -w
  if errorlevel 1 goto fail
)

for /f "delims=" %%U in ('gh api user -q .login 2^>nul') do set "GH_USER=%%U"
if "%GH_USER%"=="" (
  echo Could not read GitHub username.
  goto fail
)
echo Logged in as: %GH_USER%

echo.
echo === Step 2: Create public repo dreamtown-site (HTML only) ===
gh repo view "%GH_USER%/dreamtown-site" >nul 2>&1
if errorlevel 1 (
  gh repo create dreamtown-site --public --description "DreamTown game website - about, download, discord" --source=. --remote=origin --push
  if errorlevel 1 goto fail
) else (
  echo Repo exists - pushing latest...
  git push -u origin main 2>nul
  git push origin main
  if errorlevel 1 goto fail
)

echo.
echo === Step 3: Enable GitHub Pages ===
gh api -X PUT "repos/%GH_USER%/dreamtown-site/pages" -f build_type=workflow -f "source[branch]=main" -f "source[path]=/" 2>nul
if errorlevel 1 (
  echo Enable Pages manually: repo Settings - Pages - Source: GitHub Actions
  echo Or: Deploy from branch main, folder /
) else (
  echo Pages API configured.
)

echo.
echo === DONE ===
echo.
echo Site (wait 1-3 min after first push):
echo   https://%GH_USER%.github.io/dreamtown-site/
echo.
echo Privacy for Play Store:
echo   https://%GH_USER%.github.io/dreamtown-site/privacy.html
echo.
echo Repo (public, NO game code):
echo   https://github.com/%GH_USER%/dreamtown-site
echo.
echo Windows ZIP: repo Releases - then site-config.js windowsDownload
echo.
pause
exit /b 0

:fail
echo.
echo FAILED. See messages above.
pause
exit /b 1
