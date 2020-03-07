#/bin/bash
echo "running from tasta.sh";
ls -la;
npm install;
CI=true npm test;