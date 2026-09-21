const fs = require('fs');
const content = fs.readFileSync('index.html', 'utf8');
const urls = new Set();
const re = /(?:src|href)="([^"]+uploads[^"]+)"/g;
let m;
while ((m = re.exec(content)) !== null) {
    urls.add(m[1]);
}
const re2 = /(?:src|href)="([^"]+wp-content[^"]+)"/g;
while ((m = re2.exec(content)) !== null) {
    urls.add(m[1]);
}
const re3 = /<img[^>]+src="([^"]+)"/g;
while ((m = re3.exec(content)) !== null) {
    urls.add(m[1]);
}
console.log(Array.from(urls).join('\n'));
