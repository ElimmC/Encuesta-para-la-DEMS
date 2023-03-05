drop database if exists DEMS;
create database DEMS;

use DEMS;

create table comentarios(
idComentario int not null primary key,
comentario nvarchar(1000) not null
);

create table respuesta(
idRespuesta int not null primary key,
respuesta nvarchar(60) not null
);

create table preguntas(
idPreguntas int not null primary key,
idRespuesta int not null,
foreign key (idRespuesta) references respuesta(idRespuesta)
);


create table encuesta(
idEncuesta int not null,
idPreguntas int not null,
foreign key (idPreguntas) references preguntas(idPreguntas)
);

drop procedure if exists spGuardaRespuesta;
delimiter **
create procedure spGuardaRespuesta(in Response nvarchar(150))
begin
declare IdResp int;
declare IdEn int;
declare Rresponse nvarchar(300);
declare existeId int;
declare msj nvarchar(200);

set existeId = (select ifnull(max(idRespuesta), 0) from respuesta);

if (existeId = 0) then

		set IdResp = (select ifnull(max(idRespuesta), 0) + 1 from respuesta);
        
		            insert into respuesta (idRespuesta, respuesta)
					values(IdResp, Response);
                    
                    insert into preguntas (idPreguntas, idRespuesta)
					values(1, 1);
                    
                    insert into encuesta (idEncuesta, idPreguntas)
					values(1, 1);
                    
		set msj =  'primer pregunta guardada';
    
else

				set IdResp = (existeId + 1);
                set Rresponse = (select respuesta from respuesta where idRespuesta = existeId);
				
                        
		if (Rresponse = 'test' ) then
							
						  set IdResp = (select max(idRespuesta) from respuesta);  							
						  update respuesta set respuesta = Response where idRespuesta = idResp; 
                          
		else

        
        set IdEn = (select max(idEncuesta) from encuesta);
        
        insert into respuesta (idRespuesta, respuesta)
					values(IdResp, Response);
                    
		insert into preguntas (idPreguntas, idRespuesta)
					values(IdResp, IdResp);

                    
		if ((IdResp/21) = (floor(IdResp/21))) then
        
			insert into encuesta (idEncuesta, idPreguntas)
					values (IdEn, IdResp);
        
		set IdEn = (select max(idEncuesta) + 1 from encuesta);
        set IdResp = (select max(idPreguntas) + 1 from preguntas);
        
        insert into respuesta (idRespuesta, respuesta)
					values(IdResp, 'test');
                    
		insert into preguntas (idPreguntas, idRespuesta)
					values(IdResp, IdResp);
					
		insert into encuesta (idEncuesta, idPreguntas)
					values (IdEn, IdResp);
                
        else
        
			
            
            set IdEn = (select max(idEncuesta) from encuesta);
			
            insert into encuesta (idEncuesta, idPreguntas)
					values (IdEn, IdResp);
            
        
			end if;
        
        end if;
		
        set msj =  'pregunta lista';
end if;

select msj;

end; **
delimiter ;

drop procedure if exists spBuscarRespuesta;
delimiter **
create procedure spBuscarRespuesta(in lePregunte int)
begin
declare IdResp int;
declare malo int;
declare regular int;
declare bueno int;
declare muyBueno int;
declare excelente int;
declare si int;
declare nope int;
declare ex int;
declare existeId int;
declare leResponse nvarchar(200);
declare msj nvarchar(200);

set nope = 0;
set si = 0;
set malo = 0;
set regular = 0;
set bueno = 0;
set muyBueno = 0;
set excelente = 0;

set existeId = (select ifnull(max(idRespuesta), 0) from respuesta);

if (existeId = 0) then
                    
		set msj =  'no hay nah';
    
else     
	
    set ex = lePregunte;
    set IdResp = (select ifnull(max(idRespuesta), 0) from respuesta);
    set leResponse = (select respuesta from respuesta where idRespuesta = ex);
    
    WHILE ex > 0 DO
    
		if (leResponse = 'test') then
		
			set ex = 0;
        
        else
        
			if (IdResp < ex) then
				
                set ex = 0;
                
            else
        
				if ((select respuesta from respuesta where idRespuesta = ex) = 'excelente') then
            
				set excelente = excelente + 1;
            
            else
				
                if ((select respuesta from respuesta where idRespuesta = ex) = 'muy bueno') then
            
					set muyBueno = muyBueno + 1;
            
				else
            
					if ((select respuesta from respuesta where idRespuesta = ex) = 'bueno') then
            
						set bueno = bueno + 1;
				
					else
            
						if ((select respuesta from respuesta where idRespuesta = ex) = 'malo') then
            
							set malo = malo + 1;
					
						else

							if ((select respuesta from respuesta where idRespuesta = ex) = 'no') then
            
								set nope = nope + 1;
						
							else
                            
								if ((select respuesta from respuesta where idRespuesta = ex) = 'si') then
            
									set si = si + 1;	
								
                                else
                                
									if ((select respuesta from respuesta where idRespuesta = ex) = 'regular') then
            
										set regular = regular + 1;	
									
									end if;

								end if;
					
							end if;

						end if;
            
					end if;
					
				end if;
                
            end if;
        
			
            end if;
       
       end if;
    if (ex = 0) then
		set ex = 0;
    else
		SET ex = ex + 21;
    end if;
    
  END WHILE;    
     
end if;

select malo, regular, bueno, muyBueno, excelente, si, nope, msj;

end; **
delimiter ;

drop procedure if exists spBuscarContra;
delimiter **
create procedure spBuscarContra(in contra nvarchar(200))
begin
declare leContra nvarchar(200);
declare msj nvarchar(200);

set leContra = 'patatas';


if (contra = leContra) then

		set msj =  'yep';
    
else

		set msj =  'nope';
				
end if;

select msj;

end; **
delimiter ;

drop procedure if exists spGuardaComent;
delimiter **
create procedure spGuardaComent(in comentario nvarchar(1000))
begin
declare IdComentario int;
declare existeId int;
declare msj nvarchar(200);

set existeId = (select ifnull(max(idComentario), 0) from comentarios);

if (existeId = 0) then

		set IdComentario = (select ifnull(max(idComentario), 0) + 1 from comentarios);
        
		            insert into comentarios (idComentario, comentario)
					values(IdComentario, comentario);
                    
                    
		set msj =  'primer comentario guardado';
    
else

				set IdComentario = (existeId + 1);
                
                insert into comentarios (idComentario, comentario)
					values(IdComentario, comentario);
                				
		
        set msj =  'comentario listo';
        
end if;

select msj;

end; **
delimiter ;

select * from comentarios;
select * from encuesta;
select * from respuesta;
select * from preguntas;