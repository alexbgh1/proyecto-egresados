<h1>Proyecto-egresados</h1>

> Implementar algún componente y dockerizarlo

Para este caso se eligió dockerizar la base de datos, se utilizaron **Dockerfile** para:
  - **mysql** para la base de datos.
  - **python** para el despliegue de la base de datos.
  
Se juntó con un **docker-compose.yml**, el modelo de la base de datos se presenta más abajo.

## Integrantes
   - José Nicolás Aillapi Gomez
   - Alex Bastián Garnica Hernández
   - Geovanni Leandro Curguan Duamante
   - Manuel José Mariano Care Poo
   - Gerson Andrade Meza
   - Sebastián Andres Oyarzun Ruiz
   - Jorge Hern

## Ejecutar el docker

```bash
# path: 📁/docker-database-create/
docker-compose up
```
Para ejecutar el docker, se debe poner "docker-compose up", de esa manera se creará la base de datos, así mismo, imprime al final las tablas creadas.


## database_egresados.sql
El archivo **database_egresados.sql** implementa el siguiente diagrama Entidad Relación.

![modelo_database](https://i.imgur.com/mGse35q.png)

## Contenido esperado
1. Mensaje con las tablas creadas y conexión establecida.

    ![expected_cmd](https://i.imgur.com/EVPz9rv.png)

2. Comprobación en **Container MySql > CLI** (utilizando docker hub)
  
    ![expected_container](https://i.imgur.com/pEJuBF3.png)
  
3. Revisión base datos
    <p style="color='#787878'">bash</p>

    ```bash
    mysql -u root -p
    root
    ```
    <p style="color='#787878'">mysql</p>
    
    ```mysql
    SHOW databases;
    USE db;
    ```
  
    ![expected_container--mysql](https://i.imgur.com/RhVUkjh.png)
  
4. Ver tablas (key sensitive)

    ```bash
    SHOW tables;
    DESCRIBE User;
    ```

    ![expected_container--mysql--tablas](https://i.imgur.com/iYe3WUX.png)

    ![expected_container--mysql--tablas--describe](https://i.imgur.com/V00HmcA.png)
    
