--ASUMIENDO QUE TENGO ORDENADO LA FILAS 

select col,
          col - coalesce(lag(col) over (order by id), 0) as diff
from t;

---COALESCE 
  --COALESCE returns the first non-null expr in the expression list. You must specify at least two expressions.
  --If all occurrences of expr evaluate to null, then the function returns null.
  --COALESCE retorna el primer no nullo expresion en la lista.Deberias especificar al menos 2 expresiones.
  --If todas la expresiones retornan nullo,entonces la funcion retornara nullo.
---LAG 
  --The Oracle/PLSQL LAG function is an analytic function that lets you query more than one row in a table at a time without having to join the table to itself.
  --It returns values from a previous row in the table.
  --La funcion LAG es una funcion Analitica que permite consultar mas que una fila en una tabla a la vez sin tener que unir con otra tabla a sí misma.
  --Devuelve valores de una fila previa de la tabla.
  
--In earlier versions of SQL Server, you can do almost the same thing using a correlated subquery:
--En anteriores versiones de SQL SERVER,tu puedes hacer lo mismo usando un subconsulta correlacionada

select col,
          col - isnull((select top 1 col
                        from t t2
                        where t2.id < t.id
                        order by id desc
                       ), 0)
from t
  
  
