#NOTE : RUN THIS SCRIPT AS ADMINISTRATOR

$libgccUrl = "https://github.com/Whitecat18/Ps-script-for-Hackers-and-Pentesters/raw/main/scripts/dll%20files/libgcc_s_dw2-1.dll"
$libstdcUrl = "https://github.com/Whitecat18/Ps-script-for-Hackers-and-Pentesters/raw/main/scripts/dll%20files/libstdc%2B%2B-6.dll"

$libgccPath = "$env:TEMP\libgcc_s_dw2-1.dll"
$libstdcPath = "$env:TEMP\libstdc++-6.dll"

Invoke-WebRequest -Uri $libgccUrl -OutFile $libgccPath
Invoke-WebRequest -Uri $libstdcUrl -OutFile $libstdcPath

regsvr32 $libgccPath
regsvr32 $libstdcPath
