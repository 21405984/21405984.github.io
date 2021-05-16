@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../symplify/latte-to-twig-converter/bin/latte-to-twig
php "%BIN_TARGET%" %*
