#!/bin/bash

#!/bin/bash

echo "=== CALCULADORA BÁSICA ==="
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

echo ""
echo "Escolha a operação:"
echo "1. Soma (+)"
echo "2. Subtração (-)"
echo "3. Multiplicação (*)"
echo "4. Divisão (/)"
read -p "Opção (1-4): " opcao

case $opcao in
  1) resultado=$(echo "$num1 + $num2" | bc -l) ;;
  2) resultado=$(echo "$num1 - $num2" | bc -l) ;;
  3) resultado=$(echo "$num1 * $num2" | bc -l) ;;
  4) 
     if [ "$num2" -eq 0 ]; then
       resultado="Erro: Divisão por zero!"
     else
       resultado=$(echo "scale=2; $num1 / $num2" | bc -l)
     fi
     ;;
  *) resultado="Opção inválida!" ;;
esac

echo ""
echo "Resultado: $resultado"
