;Dado un arbol (A (B (K L M (O S)) C (P R (N W (F) Y)) D (Q) E (T (G)) ))
;Calcular: 
;a)Altura del arbol b)Grado del arbol
;c)Impresion por niveles d)Invertir a profundidad
;(CD#P"/path")
;(CD #P "/home/htellezb/Documents/lisp/")
;(LOAD "file.lisp")

(PRINT 'PROFUNDIDAD)
(DEFUN PROFUNDIDAD(LST)
	(COND 
		((NULL LST) 1)
		((ATOM LST) 0)
		(t(MAX (+ (PROFUNDIDAD(CAR LST)) 1) (PROFUNDIDAD(CDR LST)) ))
		))

(PRINT 'GRADO)
(DEFUN GRADO (LST)
	(GRADO2(CDR LST)))

(DEFUN GRADO2(LST)
	(COND
		((NULL LST) 0)
		((LISTP (CAR LST)) 0)
		(t(MAX (+ (GRADO2(CDR LST)) 1) (GRADO2(CDR LST)) ))
		))