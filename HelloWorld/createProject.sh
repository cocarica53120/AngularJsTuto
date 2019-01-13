echo  'Create AngularJs from scratch'

[ ! $1 ] && project=angular-starter-kit || project=$1

[ -d $project ] && { echo "$project already exists! => exit"; exit; };

mkdir $project
cd $project


#echo 'install live-server globally (must have sudo rights and you can launch it with "live-server" in project directory)'
#sudo npm install -g live-server


echo 'init project. respond all questions by default'
npm init

echo 'install live-server locally (no needs sudo rights, but launch server with "node ./node_modules/live-server/live-server.js"
'
npm install --save-dev live-server

echo 'install angular in package.json'
npm install --save angular

echo 'install angular locally'
npm install


echo 'generate a index.html for starting'
echo '<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Angular Example</title>
    </head>
    <body>
	<h1> Hello World </h1>
    </body>
    <script type="text/javascript" src="./node_modules/angular/angular.js"></script>
</html>' >> index.html


echo 'launch server'
node ./node_modules/live-server/live-server.js



