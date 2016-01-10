(defvar nombre_archivo (nth 1 *posix-argv*))
(load "Caracterizador_nuevo.lisp")
(load "Script_caracterizador.lisp")
(load "Clasificador.lisp")
(defvar archivo_caracteristicas (concatenate 'string "Resultados_de_prueba/" nombre_archivo))

(cond
  ((equal nombre_archivo "Resultados_caracterizador/100-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 53 1)(list 32 0)(list 17 2)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/10-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 74285 9496)(list 30779 9262)(list 122132 10200)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/20-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 9749 1113)(list 7114 556)(list 2227 2126)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/30-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 2378 336)(list 1856 192)(list 612 685)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/40-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 1015 135)(list 441 70)(list 257 285)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/50-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 529 80)(list 248 28)(list 133 154)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/60-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 264 32)(list 121 9)(list 78 62)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/70-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 153 22)(list 97 3)(list 54 48)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/80-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 93 10)(list 71 0)(list 33 27)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/90-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 72 5)(list 50 0)(list 22 12)(list 0 0)(list 0 0)(list 0 0))))
  (t (print "Escribiste mal el nombre...")))

(let ((temporal nil)(contador 0))
  (loop for grupo in *supervision* do
        (format t "~%Grupo ~S~%" contador)
        (loop for pieza across grupo do
              (setq temporal (pertenencias_del_patron nombre_archivo pieza))
              (format t "~S - ~S~%" temporal (indice_max temporal)))
        (setq contador (+ contador 1))))
