#!/bin/bash

echo "Os exemplos desta aula podem ser compilados usando o 'cmake' ou o 'make'."
echo 
echo "Aperte ENTER para começar..."
read

echo "---------"
echo "| CMAKE |"
echo "---------"
echo ">>> Criando pasta para guardar executável..."
mkdir build
cd build
echo ">>> Preparando arquivos para compilação..."
cmake ../
echo ">>> Compilando"
make
echo ">>> Executando código..."
echo ">>> Aperte qualquer botão para fechar o programa."
./DisplayImage ../../Imagens/Lena.png
echo ">>> Limpando pasta com executável e arquivos para compilação..."
cd ..
rm -rf build

echo "--------"
echo "| MAKE |"
echo "--------"
echo ">>> Compilando"
make
echo ">>> Executando código..."
echo ">>> Aperte qualquer botão para fechar o programa."
./DisplayImage ../Imagens/Lena.png
echo ">>> Apagando executável..."
make clean
echo ">>> FIM."


