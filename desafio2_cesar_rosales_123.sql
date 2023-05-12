-- ¿Cuántos registros hay?
select count(*)
from inscritos;

--¿Cuántos inscritos hay en total?
select sum(cantidad)
from inscritos;

--¿Cuál o cuáles son los registros de mayor antigüedad?
select * from inscritos where fecha >= '2021-01-05';

--¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de
--ahora en adelante)
select * from inscritos where fecha = (select min (fecha) from inscritos);

--¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?
select fecha,sum(cantidad) from inscritos group by fecha;
