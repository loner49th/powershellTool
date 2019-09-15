foreach ($arg in $args) {
    $in = $arg
    $date = Get-Date -Format "yyyyMMdd";
    $out = Join-Path (Split-Path -Parent $arg) ($date + "_" + [System.IO.Path]::GetFileName($arg)  )
    Move-Item $in $out
}
Exit-PSSession