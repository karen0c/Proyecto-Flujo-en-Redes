import pandas as pd
from io import StringIO

# Guardar los datos en un string.
data_str = """
              14          0.0     0.0     0.0
              13       2000.0  1600.0     0.0
              12       3000.0  1500.0  1100.0
              11       2000.0   800.0  1200.0
              10       1500.0  1200.0     0.0
               9       4000.0  2700.0     0.0
               8       5000.0  3000.0  1200.0
               7       1000.0   900.0     0.0
               6        600.0   100.0   600.0
               5       4500.0  2000.0  3700.0
               4       1000.0   900.0     0.0
               3       1000.0   700.0  1800.0
               2       1000.0   900.0     0.0
               1       2100.0  1000.0  1800.0
"""

# Leer la cadena.
data = StringIO(data_str)

# Lee los datos en un DataFrame.
df = pd.read_csv(data, delim_whitespace=True, header=None)

# Mostrar el DataFrame.
print(df)

# Crea un diccionario para almacenar los valores.
data_dict = {}

# Itera a través de cada fila en el DataFrame.
for index, row in df.iterrows():
    # Extraer los valores de "barra", "pd", y "qd".
    barra = int(row[0])
    pd_value = row[1]
    qd_value = row[2]
    
    # Crear una lista con los valores de pd y qd.
    values_list = [pd_value, qd_value]
    
    # Agregar la lista de valores al diccionario con "barra" como clave.
    data_dict[barra] = values_list

# Mostrar el diccionario resultante
print(data_dict)