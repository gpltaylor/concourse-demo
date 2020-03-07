#/bin/bash
echo "running from tasta.sh";
cd resource-app;
ls -la;
npm install;
CI=true npm test;