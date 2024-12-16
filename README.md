# lab_3_data_mg

## TODO

1. Ver cómo exportar los datos y pasarlos a una database local
2. Comprobar delayCode y ver si nos puede servir para ver si un flight está delayed (parece que los que no están null no tuvieron delay) - el código es el IATA code.
3. Comprobar que no coincidan horarios de flights con maintenance events + que no haya execution date que coincida con un flight.
4. Parece que las tablas de WorkOrders y las asociadas las podemos ignorar.
5. Assumption: han hecho bien los create table statements.
6. ETL process must extract data from the available data sources (básicamente extraer de las tablas que nos interesan + csv.).
7. Perform some data cleaning (for example, but not limited to pre-select data, remove duplicates, remove nulls, etc.). Comprobar todo esto (flights duplicados o nulls, por ejemplo) y más cosas.
8. Integrate data coming from different data sources (importar csv y relacionar aircraft ids con modelos y manufacturers).
9. Calculate necessary measures to answer user requirements (facts que hemos contemplado).
10. And finally loads the data into a previously implemented DW schema. Esta es probablemente la parte más complicada.