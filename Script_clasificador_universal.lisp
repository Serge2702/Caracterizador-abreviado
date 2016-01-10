(defvar nombre_archivo (nth 1 *posix-argv*))
(load "Caracterizador_nuevo.lisp")
(load "Script_caracterizador.lisp")
(load "Clasificador.lisp")
(defvar archivo_caracteristicas (concatenate 'string "Resultados_de_prueba/" nombre_archivo))

(cond
  ((equal nombre_archivo "Resultados_caracterizador/100-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 63 0)(list 33 0)(list 28 0)(list 17 2)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/10-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 37032 5445)(list 59898 2120)(list 26638 2439)(list 113447 3099)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/200-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 8 0)(list 0 0)(list 1 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/20-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 6609 1342)(list 6573 282)(list 5940 227)(list 1694 825)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/30-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 1821 498)(list 1388 39)(list 1447 91)(list 403 292)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/40-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 393 227)(list 541 9)(list 294 36)(list 163 146)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/50-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 203 108)(list 273 5)(list 162 13)(list 87 87)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/60-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 141 48)(list 124 4)(list 86 7)(list 60 49)(list 0 0)(list 0 0))))
  (t (print "Escribiste mal el nombre...")))

(let ((temporal nil)(contador 0))
  (loop for grupo in *supervision* do
        (format t "~%Grupo ~S~%" contador)
        (loop for pieza across grupo do
              (setq temporal (pertenencias_del_patron nombre_archivo pieza))
              (format t "~S - ~S~%" temporal (indice_max temporal)))
        (setq contador (+ contador 1))))
