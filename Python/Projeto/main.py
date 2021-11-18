import numpy as np
import matplotlib.pyplot as plt

linha = input()
linha = input()

l0_1 = float(input().split()[2])
d0_1 = float(input().split()[2])
A = float(input().split()[2])

linha = input()

cargas_1 = []
deslocamentos_1 = []

while True:
    linha = input().split()
    
    if len(linha) != 0:
        cargas_1.append(float(linha[0]))
        deslocamentos_1.append(float(linha[1]))
    else:
        break
    
#I
tensao_1 = []
deformacao_1 = []
for i in range(len(cargas_1)):
    tensao_1.append(cargas_1[i]/A)
    deformacao_1.append(deslocamentos_1[i]/l0_1)
    
# plotando o diagrama de tensão-deformação
'''
plt.plot(deformacao_1, tensao_1)
plt.xlabel('Deformação')
plt.ylabel('Tensão')
plt.title('Diagrama de Tensão-Deformação')
plt.show()'''

#limite de escoamento
Sy = tensao_1[len(cargas_1)-1]
E = tensao_1[len(cargas_1)-1] / deformacao_1[len(cargas_1)-1]
print("Tensão Limite de Escoamento = ", Sy)
print("Módulo de Elasticidade = ", E)
    
#novos dados
# linha = input()
# l0_2 = float(input().split()[2])
# d0_2 = float(input().split()[2])
    
# linha = input()

# cargas_2 = []
# deslocamentos_2 = []

# while True:
#     linha = input().split()
    
#     if len(linha) != 0:
#         cargas_2.append(float(linha[0]))
#         deslocamentos_2.append(float(linha[1]))
#     else:
#         break
