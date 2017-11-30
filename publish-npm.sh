echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > ~/.npmrc

npm install --unsafe-perm --no-optional
npm run build
npm publish --access public
