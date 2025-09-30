## A un archivo con lineas escritas da igual la extendion, añadirle un texto, sin tener que abrir el archivo

touch /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt

nl -ba /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt

echo >> /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt

tail -n 5 /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt

cat >> /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt << 

printf >> /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt

sed -i /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt

echo | sudo tee -a /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt > /dev/null

nl -ba /home/alumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt