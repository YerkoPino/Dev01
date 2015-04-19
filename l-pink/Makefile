
scaffold:
	# Your scaffold here
	rails g scaffold Proyecto \
		nonmbre:string{30} \
		descripcion:string{300} \
		fecha_inicio:date \
		fecha_fin:date;

	rails g scaffold Acta_reunion \
		fecha:date \
		correlativo:integer \
		proyecto:references;

	rails g scaffold Tema \
		nombre:string{30} \
		descripcion:string{300} \
		estado:string{30} \
		acta_reunion:references;

	rails g scaffold Elemento \
		nombre:string{30} \
		descripcion:string{300} \
		estado:string{30} \
		tipo:string{30} \
		fecha_compromiso:date \
		contexto:string{300} \
		tema:references \
		elemento:references;

	rails g scaffold Estado_tarea \
		nombre:string{25} \
		descripcion:string{300};

	rails g scaffold Tarea \
		nombre:string{30} \
		descripcion:string{300} \
		estado_tarea:references \
		elemento:references;

	rails g scaffold Comentario \
		descripcion:string{300} \
		tarea:references;

	rails g scaffold Usuario_proyecto \
		proyecto:references \
		user:references;

	rails g scaffold Usuario_acta_reunion \
		acta_reunion:references \
		user:references \
		secretario:boolean;

	rails g scaffold Usuario_elemento \
		responsable:boolean \
		elemento:references \
		user:references;

	rails g scaffold Usuario_tarea \
		responsable:boolean \
		tarea:references \
		user:references;

destroy:
	# Your destroy here
	rails d scaffold Proyecto;
	rails d scaffold Acta_reunion;
	rails d scaffold Tema;
	rails d scaffold Elemento;
	rails d scaffold Estado_tarea;
	rails d scaffold Tarea;
	rails d scaffold Comentario;
	rails d scaffold Usuario_proyecto;
	rails d scaffold Usuario_acta_reunion;
	rails d scaffold Usuario_elemento;
	rails d scaffold Usuario_tarea;

create:
	rake db:drop:all
	rake db:create

migrate:	
	rake db:migrate
	rake db:seed

redoc: destroy scaffold create

redom: migrate 
	rails s
