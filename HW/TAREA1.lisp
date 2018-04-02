;Dado un arbol (A (B (K L M (O S)) C (P R (N W (F) Y)) D (Q) E (T (G)) ))
;Calcular: 
;a)Altura del arbol b)Grado del arbol
;c)Impresion por niveles d)Invertir a profundidad
;(CD#P"/path")
;(CD #P "/home/htellezb/Documents/lisp/")
;(LOAD "file.lisp")

;a)
(PRINT 'PROFUNDIDAD)
(DEFUN PROFUNDIDAD(LST)
	(COND 
		((NULL LST) 1)
		((ATOM LST) 0)
		(t(MAX (+ (PROFUNDIDAD(CAR LST)) 1) (PROFUNDIDAD(CDR LST)) ))
		))

;b)
(PRINT 'GRADO)
(SETQ CONT 0)
(DEFUN GRADO (LST)
	(GRADO2(CAR (CDR LST)))
)

(DEFUN GRADO2(LST)
	(PRINT LST)
	;(PRINT CONT)
	(COND
		((NULL LST) 0)
		((LISTP (CAR LST)) (PRINT 'BRK) 0 (GRADO2(CAR LST)) (GRADO2(CDR LST)) )
		(t(SETQ CONT (+ 1 (GRADO2(CDR LST)))) (MAX CONT (GRADO2(CDR LST))) )
	)
) 

;c)
(DEFUN ATOMIZA(LST)
	;(SETQ RES '())
	;(print LST)
	;(print res1)
	(COND 
		((NULL LST) (REVERSE RES1))
		((ATOM (CAR LST)) (PUSH (CAR LST) RES1) (ATOMIZA (CDR LST)))
		(t(ATOMIZA (CDR LST)))
	)
)

(DEFUN ENLISTA(LST)
	;(SETQ RES '())
	;(LET ((AUX LST)))
	;(print res2)
	(COND 
		((NULL LST) (REVERSE RES2))
		((LISTP (CAR LST)) (SETQ RES2 (APPEND (REVERSE (CAR LST)) RES2)) (ENLISTA (CDR LST)))
		(t(ENLISTA (CDR LST)))
	)
)

(DEFUN NIV(LST)
	(SETQ RES1 '())
	(SETQ RES2 '())
	(COND
		((NOT (NULL LST)) (PRINT (ATOMIZA LST)) (NIV (ENLISTA LST)))
	)
)