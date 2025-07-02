@echo off
rem Change directory to where this script is located (optional, but good practice if not always running from root)
rem pushd "%~dp0"

echo Running Robot Framework tests...
robot --outputdir outputs/ tests/login_test.robot

echo Tests finished. Check outputs/ directory for results.
pause