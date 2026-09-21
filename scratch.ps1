$content = Get-Content -Path "index.html" -Raw
$pattern1 = 'src="([^"]+wp-content[^"]+)"'
$pattern2 = 'src="([^"]+uploads[^"]+)"'
$matches1 = [regex]::Matches($content, $pattern1)
$matches2 = [regex]::Matches($content, $pattern2)

$urls = @()
foreach ($m in $matches1) { $urls += $m.Groups[1].Value }
foreach ($m in $matches2) { $urls += $m.Groups[1].Value }

$urls | Sort-Object -Unique
