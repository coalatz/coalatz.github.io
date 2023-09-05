ls -R | grep -v "/" | grep "_." > pastas
ls | grep -v "_" > arquivos

while IFS= read -r linha;
do
	cat $linha | sed "s/css/css/g"  > temp
	mv -f temp $linha
done < arquivos


while IFS= read -r linha;
do
	mv $linha ${linha#?}
done < pastas



rm pastas
