﻿(: 2.Obtener las calificaciones del alumno de código "a111" en cada módulo :)
for $a in doc("clase.xml")//notas/nota
for $b in doc("clase.xml")//asignaturas/asignatura
where $a/@alum = "a111" and $b/@cod = $a/@asig
return <alumno>{ data($b/@nombre),"---",data($a/@calificacion) }</alumno>