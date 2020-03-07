#/bin/bash
echo "running from tasta.sh";
cd resource-app/01-basic;
ls -la;
npm install;
CI=true npm test;