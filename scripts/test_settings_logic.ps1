$ErrorActionPreference = "Stop"

$toolchain = Join-Path $env:USERPROFILE ".platformio\packages\toolchain-sdcc\bin"
$sdcc = Join-Path $toolchain "sdcc.exe"
$simulator = Join-Path $toolchain "s51.exe"
$buildDir = Join-Path $PSScriptRoot "..\.pio\test-settings"
$image = Join-Path $buildDir "settings_logic_test.ihx"

New-Item -ItemType Directory -Force -Path $buildDir | Out-Null
$env:PATH = "$toolchain;$env:PATH"

& $sdcc -mmcs51 --model-small `
  (Join-Path $PSScriptRoot "..\tests\settings_logic_test.c") `
  -o $image
if ($LASTEXITCODE -ne 0) {
  exit $LASTEXITCODE
}

$output = @(
  "step 30000"
  "dx 0x100 0x100"
  "quit"
) | & $simulator -q -c - $image 2>&1

$outputText = $output -join "`n"
if ($outputText -notmatch "0x0100 00") {
  $output | Write-Output
  throw "settings_logic_test failed"
}

Write-Output "settings_logic_test: PASS"
