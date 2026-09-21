import re
with open('index.html', encoding='utf-8') as f:
    content = f.read()
urls = re.findall(r'(?:src|href)="([^"]+uploads[^"]+)"', content)
urls.extend(re.findall(r'(?:src|href)="([^"]+wp-content[^"]+)"', content))
urls.extend(re.findall(r'<img[^>]+src="([^"]+)"', content))
for u in set(urls):
    print(u)
