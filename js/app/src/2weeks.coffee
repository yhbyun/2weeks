###

	OBJETIVO
	2Weeks es un sistema de planificación bisemanal (10 días sin fines de semana) en el que el un project manager puede
	crear filas de tiempos de desarrollo/diseño con metas de entrega parciales o finales.

###

###

	PLANIFICACIÓN:

		# CREACIÓN DE PROYECTOS Y LINEAS DE TIEMPO
	- El usuario crea una nueva fila de proyecto // .new-project
	- El sistema abre una nueva fila de proyecto // .panel-body .panel-row
	- El sistema abre una nueva fila de tiempo // .panel-body .panel-row .timeline
	- El usario edita el nombre del proyecto // .panel-body .panel-row .first-column span
	- El usuario edita el nombre del primer paso en la línea de tiempo // .timeline .assignment .activity 
	- El usuario edita el nombre del miembro del primer paso en la línea de tiempo // .timeline .assignment .member
	- El usuario puede extender (drag) la línea de tiempo hasta máximo el último día (día 10)
	- El usuario continúa agrenado línea de tiempo sobre el proyecto o agrega otro proyecto

	# CALCULO DEL CALENDARIO
	- El año (considerar años biciestos?) se divide en grupos de 10 días quitando fines de semana
	- Cada grupo de 10 días equivale a dos semanas
	- Cada grupo de 10 días está ligado a un grupo de .timelines de la misma duración
	- Un grupo de .timelines puede extenderse únicamente hasta máximo 10 días (visualmente). El width es relativo a estos 10 días

	# CALCULO DE TIMELINE DE PROYECTO
	- Cada proyecto tiene filas de tiempo .timeline que poseen .columnas > (.assignments > .activity + .member) ó > (.goals > span)
	- Estas tendrán un width definido de acuerdo al 100% del ancho de los 10 días del encabezado
	- Las columnas (quienes definen el width) pueden extenderse (draggable) dentro de ese 100% del ancho de los 10 días
	- Pueden crearse más columnas del timeline siempre y cuando ese 100% no esté cubierto

	# AVANCE Y RETROCESO DE GRUPOS DE SEMANAS
	- El usuario puede avanzar o retroceder entre los grupos de 10 días con las flechas .prev y .next del encabezado
	- El sistema deberá cargar nuevas rutas o vistas con los nuevos grupos almacenados en la memoria
	- Los grupos estarán ligados al ID del grupo de 10 días y las rutas avanzarán sobre ese id

###

'use strict';

now = new Date()
year = now.getFullYear()
month = now.getMonth()
day = now.getDay()
thisMonthStartDay = new Date(1900+now.getYear(), now.getMonth(), 1).getDate()
thisMonthEndDay = new Date(1900+now.getYear(), now.getMonth()+1, 0).getDate()

console.log thisMonthStartDay
console.log thisMonthEndDay








































