$content = Get-Content -Path "index.html" -Raw

$pattern = 'https?://pricolexperia\.com/wp-content/uploads/(?:[^/"]+/)*([^/"]+\.(?:jpg|png|jpeg|svg|gif))'
$content = [regex]::Replace($content, $pattern, 'images/$1')

Set-Content -Path "index.html" -Value $content -Encoding UTF8
