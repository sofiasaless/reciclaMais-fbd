import pandas as pd
import psycopg2 as pg
import sqlalchemy
from sqlalchemy import create_engine
import panel as pn

# criando a conexão com o banco de dados
con = pg.connect(host='localhost', dbname= 'recicla_mais', user='postgres', password= 'postgres')

# conectando com o banco
cnx = 'postgresql://postgres:postgres@localhost/recicla_mais'
sqlalchemy.create_engine(cnx)

query = "select * from coletas where id_catador=4;" 
df = pd.read_sql_query(query, cnx)

dados = df["id"]

dadosList = df["id"].tolist()

# print(df)
print(dadosList)