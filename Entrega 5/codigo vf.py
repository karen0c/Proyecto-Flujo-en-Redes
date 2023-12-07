# -*- coding: utf-8 -*-

###############################################################################
# Sección 0: Importaciones.
###############################################################################


# Para optimizar.
import gurobipy as gp

# Para leer los datos.
import pandas as pd
from io import StringIO

#pip install matplotlib==3.5.1

# Para visualizar el grafo y la solución.
import networkx as nx
import matplotlib.pyplot as plt

# Para calcular la demora computacional.
import time

#Para leer un archivo desde una URL
import urllib.request

# Para estrategia de aceleración.
import heapq


###############################################################################
# Sección 1: Definición de los parámetros.
###############################################################################

# Guardar el tiempo de inicio.
inicio = time.time()

# Crear el grafo
G = nx.Graph()



#archivo_url = 'https://raw.githubusercontent.com/nicolascardenast/ProyectoFlujoEnRedes/main/Entregas/Entrega5/Sistemas%20test/14%20nodos.txt' #14 nodos
archivo_url = 'https://raw.githubusercontent.com/nicolascardenast/ProyectoFlujoEnRedes/main/Entregas/Entrega5/Sistemas%20test/33%20nodos.txt' #33 nodos
#archivo_url = 'https://raw.githubusercontent.com/nicolascardenast/ProyectoFlujoEnRedes/main/Entregas/Entrega5/Sistemas%20test/84%20nodos.txt' #84 nodos
#archivo_url = 'https://raw.githubusercontent.com/nicolascardenast/ProyectoFlujoEnRedes/main/Entregas/Entrega5/Sistemas%20test/136%20nodos.txt' #136 nodos


# Descargar el contenido del archivo desde la URL
with urllib.request.urlopen(archivo_url) as response:
    codigo_python = response.read().decode('utf-8')

# Añadir el import necesario para StringIO
codigo_python = "from io import StringIO\n" + codigo_python

# Ejecutar el código descargado
try:
    exec(codigo_python)
except Exception as e:
    print(f"Error al ejecutar el código: {e}")

###############################################################################
# Sección 2: lectura de datos.
###############################################################################

# Leer la cadena de texto.
cadena_data = StringIO(ramas)
df_data = pd.read_csv(cadena_data, delim_whitespace=True, header=None)

# Crear diccionarios R y X.
R = {}
X = {}

# Iterar a través de cada fila en el DataFrame.
for index, row in df_data.iterrows():
    # Extraer los valores de las columnas.
    nodo_inicio = int(row[0])
    nodo_fin = int(row[1])
    valor_R = float(row[2])/zbase
    valor_X = float(row[3])/zbase

    # Crear las tuplas para usar como claves en los diccionarios.
    clave_directa = (nodo_inicio, nodo_fin)
    clave_inversa = (nodo_fin, nodo_inicio)

    # Agregar las tuplas como claves en los diccionarios R y X.
    R[clave_directa] = valor_R
    R[clave_inversa] = valor_R  # También agregar la dirección inversa
    
    X[clave_directa] = valor_X
    X[clave_inversa] = valor_X  # También agregar la dirección inversa

# Leer la cadena.
data = StringIO(data_barras)

# Lee los datos en un DataFrame.
df = pd.read_csv(data, delim_whitespace=True, header=None)

# Crea un diccionario para almacenar los valores.
barras = {}

# Itera a través de cada fila en el DataFrame.
for index, row in df.iterrows():
    # Extraer los valores de "barra", "pd", y "qd".
    barra = int(row[0])
    pd_value = row[1]/sbase
    qd_value = row[2]/sbase
    
    # Crear una lista con los valores de pd y qd.
    values_list = [pd_value, qd_value]
    
    # Agregar la lista de valores al diccionario con "barra" como clave.
    barras[barra] = values_list


###############################################################################
# Sección 3: Creación de las estructuras de datos.
###############################################################################

# Definir el conjunto de nodos.
Nodos = list(range(1, cantidad_nodos + 1))
        
# Añadir nodos al grafo G
G.add_nodes_from(Nodos)

for nodo in range(0,cantidad_nodos):
    G.nodes[cantidad_nodos-nodo]['Pd'] = barras[cantidad_nodos-nodo][0]  # Asigna Pd
    G.nodes[cantidad_nodos-nodo]['Qd'] = barras[cantidad_nodos-nodo][1]  # Asigna Qd


# Define los arcos y asigna características desde los diccionarios R y Reactancia
for (arco, r), (arco, x) in zip(R.items(), X.items()):
    G.add_edge(arco[0], arco[1], resistencia=r, reactancia=x)
    

# Obtén todos los arcos del grafo G, considerando ambos sentidos
Arcos = set(G.edges()).union(set([(arco[1], arco[0]) for arco in G.edges()]))


###############################################################################
# Sección 4: Visualización del grafo inicial
###############################################################################

pos = nx.spring_layout(G)
edge_labels = {(i, j): f"R:{round(G[i][j]['resistencia'],2)}\nX:{round(G[i][j]['reactancia'],2)}" for i, j in G.edges()}
nx.draw(G, pos, with_labels=True, node_size=300, node_color='lightgray',  width=1, font_size=15)
nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels, font_size=8)
plt.title("Grafo Inicial", size=10)
plt.show()

###############################################################################
# Sección 5: Estrategia de aceleración
###############################################################################

# Implementación del montículo binario.
class MonticuloBinario:
    def _init_(self):
        self.monticulo = []
        self.indices = {}
        self.size = 0

    def insertar(self, nodo, prioridad):
        entrada = [prioridad, nodo]
        self.indices[nodo] = entrada
        heapq.heappush(self.monticulo, entrada)
        self.size += 1

    def extraer_min(self):
        while self.monticulo:
            prioridad, nodo = heapq.heappop(self.monticulo)
            if nodo is not None:
                del self.indices[nodo]
                self.size -= 1
                return nodo, prioridad
        return None, None

    def reducir_clave(self, nodo, nueva_prioridad):
        if nodo in self.indices:
            entrada = self.indices[nodo]
            entrada[0] = nueva_prioridad
            heapq._siftdown(self.monticulo, 0, self.monticulo.index(entrada))

    def esta_vacio(self):
        return self.size == 0

# Implementación del dijkstra usando un montículo binario.
def dijkstra_con_monticulo(grafo, inicio):
    distancias = {nodo: float('inf') for nodo in grafo}
    distancias[inicio] = 0
    visitados = set()
    monticulo = MonticuloBinario()
    monticulo.insertar(inicio, 0)

    while not monticulo.esta_vacio():
        nodo_actual, distancia_actual = monticulo.extraer_min()
        if nodo_actual is None:
            break

        visitados.add(nodo_actual)
        for vecino, peso in grafo[nodo_actual].items():
            if vecino not in visitados:
                nueva_distancia = distancia_actual + peso
                if nueva_distancia < distancias[vecino]:
                    distancias[vecino] = nueva_distancia
                    monticulo.insertar(vecino, nueva_distancia)
                else:
                    monticulo.reducir_clave(vecino, nueva_distancia)

    return distancias


def convertir_diccionario_a_grafo(distancias_arcos):
    grafo = {}
    for arco, distancia in distancias_arcos.items():
        nodo1, nodo2 = arco
        if nodo1 not in grafo:
            grafo[nodo1] = {}
        if nodo2 not in grafo:
            grafo[nodo2] = {}
        grafo[nodo1][nodo2] = distancia
        grafo[nodo2][nodo1] = distancia  # Suponiendo un grafo no dirigido
    return grafo


# Diccionario de distancias entre arcos.
distancias_arco = {(14, 13): 10, (1, 10): 12}

# Convertir el diccionario a una representación de grafo.
grafo_desde_diccionario = convertir_diccionario_a_grafo(X)

# Ejemplo de uso con Dijkstra usando el nuevo grafo.
nodo_inicio = 1
#resultado_dijkstra = dijkstra_con_monticulo(grafo_desde_diccionario, nodo_inicio)

print("Distancias más cortas desde el nodo", nodo_inicio)
#for nodo, distancia in resultado_dijkstra.items():
 #   print(f"Hacia {nodo}: {distancia}")


###############################################################################
# Sección 6: Definir el modelo de optimización.
###############################################################################

# Crear el modelo.
model = gp.Model('RSDEE')

# Variables de decisión: x[r, j] será 1 si el recurso 'r' es asignado al trabajo 'j', y 0 de lo contrario.
P = model.addVars( Arcos, vtype=gp.GRB.CONTINUOUS, name="P") # flujo de potencia activa en el arco ij en el per´ıodo t
Ps = model.addVars( Nodos, vtype=gp.GRB.CONTINUOUS, name="Ps") # flujo de potencia activa de subestación
Q = model.addVars( Arcos,  vtype=gp.GRB.CONTINUOUS, name="q") #flujo de potencia reactiva en el arco ij en el per´ıodo t.
Qs = model.addVars( Nodos, vtype=gp.GRB.CONTINUOUS, name="Qs") # flujo de potencia reactiva de subestación
I_sqr = model.addVars( Arcos,  vtype=gp.GRB.CONTINUOUS, name="i_sqr") # la ra´ız del flujo de corriente en el arco ij en el per´ıodo t.
V_sqr = model.addVars(Nodos,  vtype=gp.GRB.CONTINUOUS, name="v_sqr") # la ra´ız del voltaje presente en el nodo i en el per´ıodo t.
Delta_V = model.addVars(Arcos,  vtype=gp.GRB.CONTINUOUS,  name='Delta_Discretización') # intervalo de discretizaci´on de V
y = model.addVars(Arcos,  vtype=gp.GRB.BINARY, name="y") #define si el interruptor en el arco ij estar´a activo en el per´ıodo t.

# Definir la función objetivo.
model.setObjective(gp.quicksum(R.get((i,j),0) * I_sqr[i, j] for (i,j) in Arcos ), gp.GRB.MINIMIZE)


# -----------------------------------------------------------------------------
# Definición de las restricciones.
# -----------------------------------------------------------------------------

# Ecuación de balance ”todo lo que entra debe salir”
for i in Nodos:
    # Definir los l´ımites del voltaje.
    model.addConstr(V_sqr[i] >= vmin**2, name=f"lower_bound_{i}")
    model.addConstr(V_sqr[i] <= vmax**2, name=f"upper_bound_{i}")
    
    if i != nref:
        model.addConstr(gp.quicksum(P[k,j] for (k,j) in Arcos if j == i)- gp.quicksum((P[j, m]+ R.get((j,m),0)*I_sqr[j,m])*y[j,m] for (j,m) in Arcos if j == i) == G.nodes[i]["Pd"], name=f"balance de potencia activa_{i}")
        model.addConstr(gp.quicksum(Q[k,j] for (k,j) in Arcos if j == i)- gp.quicksum((Q[j,m]+ X.get((j,m),0)*I_sqr[j,m])*y[j,m] for (j,m) in Arcos if j == i) == G.nodes[i]["Qd"], name=f"balance de potencia reactiva {i}")

    else:
        model.addConstr(- gp.quicksum(P[nref, m]+ R.get((nref,m),0)*I_sqr[nref,m] for (nref,m) in Arcos)+Ps[nref] == 0, name=f"balance de potencia activa sub_{i}")
        model.addConstr(- gp.quicksum(Q[nref,m]+ X.get((nref,m),0)*I_sqr[nref,m] for (nref,m) in Arcos)+ Qs[nref] == 0, name=f"balance de potencia reactiva sub {i}")
    
    
for (i,j) in Arcos:
  # La disminución del voltaje en un arco particular,  ley de Ohm.
  Z2 = (R.get((i,j),0))**2+(X.get((i,j),0))**2
  model.addConstr(y[i,j]*(V_sqr[i]-V_sqr[j]-2*(R.get((i,j),0)*P[i,j]+X.get((i,j),0)*Q[i,j])-Z2*I_sqr[i,j]-Delta_V[i,j])==0, name=f"disminucion voltaje_{i}_{j}")
  
  # intervalo de discretización
  bV = vmax**2 #0.1
  model.addConstr(-bV * (1 - y[i, j]) <= Delta_V[i, j], name=f"lower_bound_{i}_{j}")
  model.addConstr(Delta_V[i, j] <= bV * (1 - y[i, j]), name=f"upper_bound_{i}_{j}")
  
  # Calcular la magnitud del flujo de corriente de un arco particular,  ley de Ohm.
  model.addConstr(V_sqr[i]*I_sqr[i,j]>=P[i,j]**2+Q[i,j]**2, name=f"intervalo_{(i,j)}")

  # Definir los límites del flujo de corriente
  I_max = 500
  model.addConstr(0 <= I_sqr[i, j], name=f"lower_bound_{i}_{j}")
  model.addConstr(I_sqr[i, j] <= (I_max**2) * y[i, j], name=f"upper_bound_{i}_{j}")

  # Restricción para arco tener solo un sentido:
  model.addConstr(y[i,j] +y[j,i] <=1, name="arco unitario")
        
# Topología radial.
model.addConstr(gp.quicksum(y[i,j] for (i,j) in Arcos )==cantidad_nodos -1, name="topología radial")

    
# -----------------------------------------------------------------------------
# Solución.
# -----------------------------------------------------------------------------

# Guardar el modelo para inspección posterior.
model.write('RSDEE.lp')

# Restablecer todos los parámetros a sus valores por defecto.
model.resetParams()

# Obtener el rendimiento de distintos parametros.
#model.tune()

# Establecer el parámetro MIPFocus (o cualquier otro parámetro personalizado).
model.setParam('MIPFocus', 2)

# Ejecutar el optimizador.
model.optimize()
    
# Comprobar si el modelo se ha resuelto de manera óptima.
if model.status == gp.GRB.OPTIMAL:
    print("La solución óptima se ha encontrado.")
    print("Valor de la función objetivo:", model.objVal)

    # Imprimir valores de las variables y[i, j, t] cuando son iguales a 1.
    for (i, j) in y:
        if round(y[i, j].x) == 1:
            print(f"y[{i}, {j}] = {y[i, j].x}")
            #print(f"i[{i}, {j}] = {I_sqr[i, j].x}")
            #print(f"Ps[{i}] = {Ps[i].x}")
    ###############################################################################
    # Sección 7: visualización de la solución.
    ###############################################################################

    # Crear un grafo dirigido vacío.
    G_solution = nx.DiGraph()

    # Añadir los nodos al grafo.
    G_solution.add_nodes_from(Nodos)

    # Añadir las aristas que pertenecen a la solución.
    for (i, j) in y:
        if round(y[i, j].x) == 1:
            G_solution.add_edge(i, j)

    # Dibujar el grafo.
    #pos = nx.fruchterman_reingold_layout(G_solution)
    pos = nx.spring_layout(G_solution)
    nx.draw(G_solution, pos, with_labels=True, node_size=500, node_color='lightgray',  width=1, font_size=10)
    plt.title("Grafo de la Solución Óptima", size=20)
    plt.show()
    # Imprimir el valor de las restricciones después de la optimización
    #for restriccion in model.getConstrs():
     #   print(f"{restriccion.constrName}: {restriccion.getAttr('rhs')}")

elif model.Status == gp.GRB.INFEASIBLE:
    
    # do IIS if the model is infeasible
    model.computeIIS()
    model.write('iismodel.ilp')   
    print("No se encontró una solución óptima.")    


# Guardar el tiempo de finalización.
fin = time.time()

# Calcular el tiempo total en milisegundos y segundos.
tiempo_total_milisegundos = (fin - inicio) * 1000
tiempo_total_segundos = fin - inicio

print(f"El procedimiento tomó {tiempo_total_milisegundos:.2f} milisegundos ({tiempo_total_segundos:.2f} segundos).")


# Abrir el archivo y leer su contenido
#with open("RSDEE.lp", 'r') as archivo:
#    contenido = archivo.read()

# Imprimir el contenido del archivo
#print(contenido)
