#!/usr/bin/env bash
# Run this from the ROOT of your alu-higher_level_programming repo:
#   bash setup_js_scraping.sh
set -e

mkdir -p javascript-web_scraping
cd javascript-web_scraping

cat > 0-readme.js << 'EOF'
#!/usr/bin/node
const fs = require('fs');

fs.readFile(process.argv[2], 'utf-8', (err, data) => {
  if (err) {
    console.log(err);
  } else {
    console.log(data);
  }
});
EOF

cat > 1-writeme.js << 'EOF'
#!/usr/bin/node
const fs = require('fs');

fs.writeFile(process.argv[2], process.argv[3], 'utf-8', (err) => {
  if (err) {
    console.log(err);
  }
});
EOF

cat > 2-statuscode.js << 'EOF'
#!/usr/bin/node
const request = require('request');

request.get(process.argv[2], (err, response) => {
  if (err) {
    console.log(err);
  } else {
    console.log(`code: ${response.statusCode}`);
  }
});
EOF

cat > 3-starwars_title.js << 'EOF'
#!/usr/bin/node
const request = require('request');
const url = `https://swapi-api.alx-tools.com/api/films/${process.argv[2]}`;

request.get(url, (err, response, body) => {
  if (err) {
    console.log(err);
  } else {
    console.log(JSON.parse(body).title);
  }
});
EOF

cat > 4-starwars_count.js << 'EOF'
#!/usr/bin/node
const request = require('request');

request.get(process.argv[2], (err, response, body) => {
  if (err) {
    console.log(err);
  } else {
    const films = JSON.parse(body).results;
    const count = films.filter((film) =>
      film.characters.some((c) => c.endsWith('/people/18/'))
    ).length;
    console.log(count);
  }
});
EOF

cat > 5-request_store.js << 'EOF'
#!/usr/bin/node
const request = require('request');
const fs = require('fs');

request.get(process.argv[2], (err, response, body) => {
  if (err) {
    console.log(err);
  } else {
    fs.writeFile(process.argv[3], body, 'utf-8', (err) => {
      if (err) {
        console.log(err);
      }
    });
  }
});
EOF

cat > 6-completed_tasks.js << 'EOF'
#!/usr/bin/node
const request = require('request');

request.get(process.argv[2], (err, response, body) => {
  if (err) {
    console.log(err);
  } else {
    const completed = {};
    JSON.parse(body).forEach((task) => {
      if (task.completed) {
        completed[task.userId] = (completed[task.userId] || 0) + 1;
      }
    });
    console.log(completed);
  }
});
EOF

# Add a README if there isn't one
[ -f README.md ] || echo "# JavaScript - Web scraping" > README.md

# Keep installed packages out of GitHub
[ -f .gitignore ] || printf "node_modules/\npackage-lock.json\npackage.json\n" > .gitignore

chmod +x ./*.js

echo "Files created in javascript-web_scraping"
