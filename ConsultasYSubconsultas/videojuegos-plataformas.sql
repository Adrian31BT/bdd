select vi.nombre, vi.descripcion, vi.valoracion, pl.id_plataforma, pl.nombre_plataforma 
from videojuegos vi, plataformas pl
where vi.codigo = pl.codigo_videojuego
and (vi.descripcion like '%guerra%') 
and ((vi.valoracion > 7) or (vi.nombre like 'C%')) 
and ((vi.valoracion > 8) and (vi.nombre like 'D%'));

select id_plataforma, nombre_plataforma, codigo_videojuego from plataformas
where codigo_videojuego = (select codigo from videojuegos where nombre = 'God of war');
