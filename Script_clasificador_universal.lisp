(defvar nombre_archivo (nth 1 *posix-argv*))
(load "Caracterizador_nuevo.lisp")
(load "Script_caracterizador.lisp")
(load "Clasificador.lisp")
(defvar archivo_caracteristicas (concatenate 'string "Resultados_de_prueba/" nombre_archivo))

(cond
  ((equal nombre_archivo "Resultados_caracterizador/100-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 3 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/10-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 13050 0)(list 12102 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/20-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 2417 0)(list 1493 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/30-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 765 0)(list 498 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/40-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 360 0)(list 224 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/50-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 180 0)(list 115 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/60-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 87 0)(list 53 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/70-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 34 0)(list 20 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/80-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 18 0)(list 8 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/90-0.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 9 0)(list 3 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  ((equal nombre_archivo "Resultados_caracterizador/Calculo_coberturas_corregido.txt")
   (defparameter *conteo_caracteristicas*
     (list (list 0 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0)(list 0 0))))
  (t (print "Escribiste mal el nombre...")))

(let ((temporal nil)(contador 0))
  (loop for grupo in *supervision* do
        (format t "~%Grupo ~S~%" contador)
        (loop for pieza across grupo do
              (setq temporal (pertenencias_del_patron nombre_archivo pieza))
              (format t "~S - ~S~%" temporal (indice_max temporal)))
        (setq contador (+ contador 1))))
