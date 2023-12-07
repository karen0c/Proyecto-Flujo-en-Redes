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
#pip install --update networkx

# Para visualizar el grafo y la solución.
import networkx as nx
import matplotlib.pyplot as plt

# Para calcular la demora computacional.
import time


###############################################################################
# Sección 1: Definición de los parámetros.
###############################################################################

# Guardar el tiempo de inicio.
inicio = time.time()

# Crear el grafo
G = nx.Graph()

# Cantidad de nodos.
cantidad_nodos = 136

# Definir los datos del sistema de 14 barras.
nref = 136      # Nodo de referencia
vref = 1.0         # Tensión en la subestación (pu)
vbase = 13.8       # Tensión base (kV)
sbase = 10000     # Potencia base (kVA) potencia aparente base
tol = 1e-8         # Tolerancia del error permitido
vmin = 0.93        # Tensión mínima (pu)
vmax = 1.05        # Tensión máxima (pu)

# Base de impedancia.
zbase = 1000*((vbase**2)/sbase)


###############################################################################
# Sección 2: lectura de datos.
###############################################################################

# La cadena de texto proporcionada
cadena_texto = """
              136      1   0.33205    0.76653
               1      2   0.00188    0.00433
               2      3   0.22324    0.51535
               3      4   0.09943    0.22953
               4      5   0.15571    0.35945
               5      6   0.16321    0.37677
               6      7   0.11444    0.26417
               6      8   0.05675    0.05666
               8      9   0.52124    0.27418
               8     10   0.10877    0.10860
              10     11   0.39803    0.20937
              10     12   0.91744    0.31469
              10     13   0.11823    0.11805
              13     14   0.50228    0.26421
              13     15   0.05675    0.05666
              15     16   0.29379    0.15454
             136     17   0.33205    0.76653
              17     18   0.00188    0.00433
              18     19   0.22324    0.51535
              19     20   0.10881    0.25118
              20     21   0.71078    0.37388
              20     22   0.18197    0.42008
              22     23   0.30326    0.15952
              22     24   0.02439    0.05630
              24     25   0.04502    0.10394
              25     26   0.01876    0.04331
              26     27   0.11823    0.11805
              27     28   0.02365    0.02361
              28     29   0.18954    0.09970
              29     30   0.39803    0.20937
              28     31   0.05675    0.05666
              31     32   0.09477    0.04985
              32     33   0.41699    0.21934
              33     34   0.11372    0.05982
              31     35   0.07566    0.07555
              35     36   0.36960    0.19442
              36     37   0.26536    0.13958
              35     38   0.05675    0.05666
             136     39   0.33205    0.76653
              39     40   0.11819    0.27283
              40     41   2.96288    1.01628
              40     42   0.00188    0.00433
              42     43   0.06941    0.16024
              43     44   0.81502    0.42872
              43     45   0.06378    0.14724
              45     46   0.13132    0.30315
              46     47   0.06191    0.14291
              47     48   0.11444    0.26417
              48     49   0.28374    0.28331
              49     50   0.28374    0.28331
              48     51   0.04502    0.10394
              51     52   0.02626    0.06063
              52     53   0.06003    0.13858
              53     54   0.03002    0.06929
              54     55   0.02064    0.04764
              52     56   0.10881    0.25118
              56     57   0.25588    0.13460
              57     58   0.41699    0.21934
              58     59   0.50228    0.26421
              59     60   0.33170    0.17448
              60     61   0.20849    0.10967
              47     62   0.13882    0.32047
             136     63   0.00750    0.01732
              63     64   0.27014    0.62362
              64     65   0.38270    0.88346
              65     66   0.33018    0.76220
              66     67   0.32830    0.75787
              67     68   0.17072    0.39409
              68     69   0.55914    0.29412
              68     70   0.05816    0.13425
              70     71   0.70130    0.36890
              71     72   1.02352    0.53839
              70     73   0.06754    0.15591
              73     74   1.32352    0.45397
             136     75   0.01126    0.02598
              75     76   0.72976    1.68464
              76     77   0.22512    0.51968
              77     78   0.20824    0.48071
              78     79   0.04690    0.10827
              79     80   0.61950    0.61857
              80     81   0.34049    0.33998
              81     82   0.56862    0.29911
              81     83   0.10877    0.10860
              83     84   0.56862    0.29911
             136     85   0.01126    0.02598
              85     86   0.41835    0.96575
              86     87   0.10499    0.13641
              86     88   0.43898    1.01338
              88     89   0.07520    0.02579
              89     90   0.07692    0.17756
              90     91   0.33205    0.76653
              91     92   0.08442    0.19488
              92     93   0.13320    0.30748
              93     94   0.29320    0.29276
              94     95   0.21753    0.21721
              95     96   0.26482    0.26443
              93     97   0.10318    0.23819
              97     98   0.13507    0.31181
             136     99   0.00938    0.02165
              99    100   0.16884    0.38976
             100    101   0.11819    0.27283
             101    102   2.28608    0.78414
             101    103   0.45587    1.05236
             103    104   0.69600    1.60669
             104    105   0.45774    1.05669
             105    106   0.20298    0.26373
             106    107   0.21348    0.27737
             107    108   0.54967    0.28914
             108    109   0.54019    0.28415
             107    110   0.04550    0.05911
             110    111   0.47385    0.24926
             111    112   0.86241    0.45364
             112    113   0.56862    0.29911
             108    114   0.77711    0.40878
             114    115   1.08038    0.56830
             109    116   1.09933    0.57827
             116    117   0.47385    0.24926
             104    118   0.32267    0.74488
             118    119   0.14633    0.33779
             119    120   0.12382    0.28583
             136    121   0.01126    0.02598
             121    122   0.64910    1.49842
             122    123   0.04502    0.10394
             123    124   0.52640    0.18056
             123    125   0.02064    0.04764
             125    126   0.53071    0.27917
             125    127   0.09755    0.22520
             127    128   0.11819    0.27283
             127    129   0.13882    0.32047
             129    130   0.04315    0.09961
             130    131   0.09192    0.21220
             131    132   0.16134    0.37244
             132    133   0.37832    0.37775
             133    134   0.39724    0.39664
             134    135   0.29320    0.29276
               7     73   0.13132    0.30315
               9     24   0.26536    0.13958
              15     83   0.14187    0.14166
              38    135   0.08512    0.08499
              25     51   0.04502    0.10394
              50     96   0.14187    0.14166
              55     98   0.14187    0.14166
              62    120   0.03940    0.09094
              66     79   0.12944    0.29882
              79    131   0.01688    0.03898
              84    135   0.33170    0.17448
              91    104   0.14187    0.14166
              90    129   0.07692    0.17756
              90    103   0.07692    0.17756
              92    104   0.07692    0.17756
              92    132   0.07692    0.17756
              96    120   0.26482    0.26443
             110     47   0.49696    0.64567
             126     76   0.17059    0.08973
             128     77   0.05253    0.12126
             135     98   0.29320    0.29276
"""
              
# Leer la cadena de texto.
cadena_data = StringIO(cadena_texto)
df_data = pd.read_csv(cadena_data, delim_whitespace=True, header=None)

# Crear diccionarios R y X.
R = {}
X = {}

# Iterar a través de cada fila en el DataFrame.
for index, row in df_data.iterrows():
    # Extraer los valores de las columnas.
    nodo_inicio = int(row[0])
    nodo_fin = int(row[1])
    valor_R = float(row[2])
    valor_X = float(row[3])

    # Crear las tuplas para usar como claves en los diccionarios.
    clave_directa = (nodo_inicio, nodo_fin)
    clave_inversa = (nodo_fin, nodo_inicio)

    # Agregar las tuplas como claves en los diccionarios R y X.
    R[clave_directa] = valor_R
    R[clave_inversa] = valor_R  # También agregar la dirección inversa
    
    X[clave_directa] = valor_X
    X[clave_inversa] = valor_X  # También agregar la dirección inversa


# Guardar los datos en un string.
data_str = """
                 136       0.0		  0.0      0.000
                 1       0.0		  0.0      0.000
                 2       47.780	      19.009   0.000
                 3       42.551	      16.929   0.000
                 4       87.022	      34.622   0.000
                 5       311.310	  123.855  0.000
                 6       148.869	  59.228   0.000
                 7       238.672	  94.956   0.000
                 8       62.299	      24.786   0.000
                 9       124.598	  49.571   0.000
                10       140.175	  55.768   0.000
                11       116.813	  46.474   0.000
                12       249.203	  99.145   0.000
                13       291.447	  115.952  0.000
                14       303.720	  120.835  0.000
                15       215.396	  85.695   0.000
                16       198.586	  79.007   0.000
                17       0.0		  0.0      0.000
                18       0.0		  0.0      0.000
                19       0.0		  0.0      0.000
                20       30.127	      14.729   0.000
                21       230.972	  112.920  0.000
                22       60.256	      29.458   0.000
                23       230.972	  112.920  0.000
                24       120.507	  58.915   0.000
                25       0.0		  0.0      0.000
                26       56.981	      27.857   0.000
                27       364.665	  178.281  0.000
                28       0.0		  0.0      0.000
                29       124.647	  60.939   0.000
                30       56.981	      27.857   0.000
                31       0.0		  0.0      0.000
                32       85.473	      41.787   0.000
                33       0.0		  0.0      0.000
                34       396.735	  193.960  0.000
                35       0.0		  0.0      0.000
                36       181.152	  88.563   0.000
                37       242.172	  118.395  0.000
                38       75.316	      36.821   0.000
                39       0.0		  0.0      0.000
                40       1.254	      0.531    0.000
                41       6.274	      2.660    0.000
                42       0.0		  0.0      0.000
                43       117.880	  49.971   0.000
                44       62.668	      26.566   0.000
                45       172.285	  73.034   0.000
                46       458.556	  194.388  0.000
                47       262.962	  111.473  0.000
                48       235.761	  99.942   0.000
                49       0.0		  0.0      0.000
                50       109.215	  46.298   0.000
                51       0.0		  0.0      0.000
                52       72.809	      30.865   0.000
                53       258.473	  109.570  0.000
                54       69.169	      29.322   0.000
                55       21.843	      9.260    0.000
                56       0.0		  0.0      0.000
                57       20.527	      8.702    0.000
                58       150.548	  63.819   0.000
                59       220.687	  93.552   0.000
                60       92.384	      39.163   0.000
                61       0.0		  0.0      0.000
                62       226.693	  96.098   0.000
                63       0.0		  0.0      0.000
                64       294.016	  116.974  0.000
                65       83.015	      33.028   0.000
                66       83.015	      33.028   0.000
                67       103.770	  41.285   0.000
                68       176.408	  70.184   0.000
                69       83.015	      33.028   0.000
                70       217.917	  86.698   0.000
                71       23.294	      9.267    0.000
                72       5.075	      2.019    0.000
                73       72.638	      28.899   0.000
                74       405.990	  161.5235 0.000
                75       0.0		  0.0      0.000
                76       100.182	  42.468   0.000
                77       142.523	  60.417   0.000
                78       96.042	      40.713   0.000
                79       300.454	  127.366  0.000
                80       141.238	  59.873   0.000
                81       279.847	  118.631  0.000
                82       87.312	      37.013   0.000
                83       243.849	  103.371  0.000
                84       247.750	  105.025  0.000
                85       0.0		  0.0      0.000
                86       89.878	      38.101   0.000
                87       1137.280	  482.108  0.000
                88       458.339	  194.296  0.000
                89       385.197	  163.290  0.000
                90       0.0		  0.0      0.000
                91       79.608	      33.747   0.000
                92       87.312	      37.013   0.000
                93       0.0		  0.0      0.000
                94       74.001	      31.370   0.000
                95       232.050	  98.369   0.000
                96       141.819	  60.119   0.000
                97       0.0		  0.0      0.000
                98       76.449	      32.408   0.000
                99       0.0		  0.0      0.000
               100       51.322	      21.756   0.000
               101       59.874	      25.381   0.000
               102       9.065	      3.843    0.000
               103       2.092	      0.887    0.000
               104       16.735	      7.094    0.000
               105       1506.522	  638.634  0.000
               106       313.023	  132.694  0.000
               107       79.831	      33.842   0.000
               108       51.322	      21.756   0.000
               109       0.0		  0.0      0.000
               110       202.435	  85.815   0.000
               111       60.823	      25.784   0.000
               112       45.618	      19.338   0.000
               113       0.0		  0.0      0.000
               114       157.070	  66.584   0.000
               115       0.0		  0.0      0.000
               116       250.148	  106.041  0.000
               117       0.0		  0.0      0.000
               118       69.809	      29.593   0.000
               119       32.072	      13.596   0.000
               120       61.084	      25.894   0.000
               121       0.0		  0.0      0.000
               122       94.622	      46.260   0.000
               123       49.858	      24.375   0.000
               124       123.164	  60.214   0.000
               125       78.350	      38.304   0.000
               126       145.475	  71.121   0.000
               127       21.369	      10.447   0.000
               128       74.789	      36.564   0.000
               129       227.926	  111.431  0.000
               130       35.614	      17.411   0.000
               131       249.295	  121.877  0.000
               132       316.722	  154.842  0.000
               133       333.817	  163.199  0.000
               134       249.295	  121.877  0.000
               135       0.0          0.0      0.000  """

# Leer la cadena.
data = StringIO(data_str)

# Lee los datos en un DataFrame.
df = pd.read_csv(data, delim_whitespace=True, header=None)

# Crea un diccionario para almacenar los valores.
barras = {}

# Itera a través de cada fila en el DataFrame.
for index, row in df.iterrows():
    # Extraer los valores de "barra", "pd", y "qd".
    barra = int(row[0])
    pd_value = row[1]
    qd_value = row[2]
    
    # Crear una lista con los valores de pd y qd.
    values_list = [pd_value, qd_value]
    
    # Agregar la lista de valores al diccionario con "barra" como clave.
    barras[barra] = values_list


###############################################################################
# Sección 3: Creación de las estructuras de datos.
###############################################################################

# Definir el conjunto de nodos.
Nodos = list(range(1, cantidad_nodos + 1))

# Definir le conjunto de períodos de tiempo.
#T = range(1, 14)
T=range(1,2)
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

pos = nx.fruchterman_reingold_layout(G)
edge_labels = {(i, j): f"R:{int(G[i][j]['resistencia'])}\nX:{int(G[i][j]['reactancia'])}" for i, j in G.edges()}
nx.draw(G, pos, with_labels=True, node_size=100, node_color='lightgray',  width=1, font_size=7)
#nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels, font_size=8)
plt.title("Grafo Inicial", size=10)
plt.show()


###############################################################################
# Sección 5: Definir el modelo de optimización.
###############################################################################

# Crear el modelo.
model = gp.Model('RSDEE')

# Variables de decisión: x[r, j] será 1 si el recurso 'r' es asignado al trabajo 'j', y 0 de lo contrario.
P = model.addVars( Arcos, T, vtype=gp.GRB.CONTINUOUS, name="P") # flujo de potencia activa en el arco ij en el per´ıodo t
Ps = model.addVars( Nodos, T, vtype=gp.GRB.CONTINUOUS, name="Ps") # flujo de potencia activa de subestación
Q = model.addVars( Arcos, T, vtype=gp.GRB.CONTINUOUS, name="q") #flujo de potencia reactiva en el arco ij en el per´ıodo t.
Qs = model.addVars( Nodos, T, vtype=gp.GRB.CONTINUOUS, name="Qs") # flujo de potencia reactiva de subestación
I_sqr = model.addVars( Arcos, T, vtype=gp.GRB.CONTINUOUS, name="i_sqr") # la ra´ız del flujo de corriente en el arco ij en el per´ıodo t.
V_sqr = model.addVars(Nodos, T, vtype=gp.GRB.CONTINUOUS, name="v_sqr") # la ra´ız del voltaje presente en el nodo i en el per´ıodo t.
Delta_V = model.addVars(Arcos, T, vtype=gp.GRB.CONTINUOUS, lb=0, name='Delta_Discretización') # intervalo de discretizaci´on de V
y = model.addVars(Arcos, T, vtype=gp.GRB.BINARY, name="y") #define si el interruptor en el arco ij estar´a activo en el per´ıodo t.

# Definir la función objetivo.
model.setObjective(gp.quicksum(R.get((i,j),0) * I_sqr[i, j, t] for (i,j) in Arcos for t in T ), gp.GRB.MINIMIZE)


# -----------------------------------------------------------------------------
# Definición de las restricciones.
# -----------------------------------------------------------------------------

# Ecuación de balance de potencia activa.
for i in Nodos:
  for t in T:
        model.addConstr(gp.quicksum(P[k,i, t] for (k,i) in Arcos)- gp.quicksum(P[i, j, t]+ R.get((i,j),0)*I_sqr[i,j,t] for (i,j) in Arcos)+ Ps[i,t] == G.nodes[i]["Pd"], name=f"balance de potencia activa_{i}_{t}")

# Ecuación de balance de potencia reactiva.
for i in Nodos:
  for t in T: 
        model.addConstr(gp.quicksum(Q[k,i, t] for (k,i) in Arcos)- gp.quicksum(Q[i, j, t]+ X.get((i,j),0)*I_sqr[i,j,t] for (i,j) in Arcos)+ Qs[i,t] == G.nodes[i]["Qd"], name=f"balance de potencia reactiva{i}_{t}")

# La disminución del voltaje en un arco particular.
for (i,j) in Arcos:
  Z2 = (R.get((i,j),0))**2+(X.get((i,j),0))**2
  for t in T: 
        model.addConstr(V_sqr[i,t]==V_sqr[j,t]+2*(R.get((i,j),0)*P[i,j,t]+X.get((i,j),0)*Q[i,j,t])-Z2*I_sqr[i,j,t]+Delta_V[i,j,t], name=f"disminucion voltaje_{i}_{j}_{t}")

# La disminuci´on del voltaje en un arco particular.
for (i, j) in Arcos:
    for t in T:
        bV = 0.1
        model.addConstr(-bV * (1 - y[i, j, t]) <= Delta_V[i, j, t], name=f"lower_bound_{i}_{j}_{t}")
        model.addConstr(Delta_V[i, j, t] <= bV * (1 - y[i, j, t]), name=f"upper_bound_{i}_{j}_{t}")

# Calcular la magnitud del flujo de corriente de un arco particular.
for (i,j) in Arcos:
  for t in T:         
        model.addConstr(V_sqr[i,t]*I_sqr[i,j,t]>=P[i,j,t]**2+Q[i,j, t]**2, name=f"intervalo_{(i,j)}_{t}")

# Definir los l´ımites del voltaje.

for i in Nodos:
    for t in T:
        model.addConstr(V_sqr[i, t] >= vmin**2, name=f"lower_bound_{i}_{t}")
        model.addConstr(V_sqr[i, t] <= vmax**2, name=f"upper_bound_{i}_{t}")

# Definir los límites del flujo de corriente
for (i,j) in Arcos:
  for t in T: 
      I_max = 1
      model.addConstr(0 <= I_sqr[i, j, t], name=f"lower_bound_{i}_{j}_{t}")
      model.addConstr(I_sqr[i, j, t] <= (I_max**2) * y[i, j, t], name=f"upper_bound_{i}_{j}_{t}")

# Topología radial.
for t in T:
  model.addConstr(gp.quicksum(y[i,j,t] for (i,j) in Arcos )==cantidad_nodos -1, name="topología radial")

# Restricción para tener solo un sentido:
for t in T:
    for (i,j) in Arcos:
        model.addConstr(y[i,j,t] +y[j,i,t] <=1, name="arco unitario")

# -----------------------------------------------------------------------------
# Solución.
# -----------------------------------------------------------------------------

# Guardar el modelo para inspección posterior.
model.write('RSDEE.lp')

# Ejecutar el optimizador.
model.optimize()

# Comprobar si el modelo se ha resuelto de manera óptima.
if model.status == gp.GRB.OPTIMAL:
    print("La solución óptima se ha encontrado.")
    print("Valor de la función objetivo:", model.objVal)

    # Imprimir valores de las variables y[i, j, t] cuando son iguales a 1.
    for (i, j, t) in y:
        if y[i, j, t].x == 1:
            print(f"y[{i}, {j}] = {y[i, j, t].x}")

else:
    print("No se encontró una solución óptima.")    

# Guardar el tiempo de finalización.
fin = time.time()

# Calcular el tiempo total en milisegundos y segundos.
tiempo_total_milisegundos = (fin - inicio) * 1000
tiempo_total_segundos = fin - inicio

print(f"El procedimiento tomó {tiempo_total_milisegundos:.2f} milisegundos ({tiempo_total_segundos:.2f} segundos).")


###############################################################################
# Sección 5: visualización de la solución.
###############################################################################

# Crear un grafo dirigido vacío.
G_solution = nx.DiGraph()

# Añadir los nodos al grafo.
G_solution.add_nodes_from(Nodos)

# Añadir las aristas que pertenecen a la solución.
for (i, j, t) in y:
    if y[i, j, t].x == 1:
        G_solution.add_edge(i, j)

# Dibujar el grafo.
#pos = nx.spring_layout(G_solution)
#pos = nx.planar_layout(G_solution)
pos = nx.kamada_kawai_layout(G)
nx.draw(G_solution, pos, with_labels=True, node_size=100, node_color='lightgray',  width=1, font_size=7)
plt.title("Grafo de la Solución Óptima", size=17)
plt.show()




