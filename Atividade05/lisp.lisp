questão__1:

 (defun fatorial (n)
(if (= n 1)
1
(* n (fatorial (- n 1)))))



questão__2:

(defun fibonacci (N)
    (if (or (zerop N) (= N 1))
        1
        (let
            ((F1 (fibonacci (- N 1)))
             (F2 (fibonacci (- N 2))))
            (+ F1 F2))))


questão__3:

; car retorna o primeiro elemento da lista
; cdr retorna tudo menos o primeiro elemento da lista

(defun intercala-listas (seq1 seq2)
  (if (null seq1)
      seq2
      (cons (car seq1) (intercala-listas seq2 (cdr seq1)))
      ; a inversao da ordem das sequencias na chamada da func eh que faz
      ; a intercalacao ser possivel.
      ; se acabou os elementos da primeira, retorna toda a segunda lista
  )
)

(princ "Digite lista 1: ")
(setq l1 (read-line))             ; le a linha COMPLETA
(setq l1 (read-from-string l1))   ; converte para lista

(princ "Digite lista 2: ")
(setq l2 (read-line))
(setq l2 (read-from-string l2))

(princ(intercala-listas l1 l2))


questão__4:
(defun union2 (list1 list2)
  (if (endp list1)
    list2
    (union2 (rest list1) (adjoin (first list1) list2))
  )
)

(princ "Digite lista 1: ")
(setq l1 (read-line))
(setq l1 (read-from-string l1))

(princ "Digite lista 2: ")
(setq l2 (read-line))
(setq l2 (read-from-string l2))

(princ(union2 l1 l2))
; funcao pronta do lisp para uniao
; (princ(union l1 l2))




questão__5:

(defun interseccao ( list1 list2)
    (let ((res nil))
   (loop for i in list1 do
   (when (member i list2) ; procurando a interseccão
   (setf res (append res (list i)))))
   res))
(print( interseccao '(1 2 3 4) '(1 5 6 4)))

Questão___6

(defun sequencia (n m)
  (if
      (> n 0)
      (cons m (sequencia (- n 1) (+ m 1)))
  )
)

(princ "Digite tam lista: ")
(setq v1 (read))

(princ "Digite val init: ")
(setq v2 (read))

(princ(sequencia v1 v2))

Questão___7
(defun separate (arr &aux temp)
  (setq temp '())
  (setq even '())
  (setq odd '())
  (dolist (i arr)                          ; for a in list_a
    (when (equal (mod i 2) 0)              ; if a % 2 == 0
      (push i even))
    (when (equal (mod i 2) 1)              ; if a % 2 == 1
      (push i odd))
  )
  (setq temp (cons (nreverse odd) temp))
  (setq temp (cons (nreverse even) temp))
  (nreverse temp)
)
(write-line(write-to-string(separate '(1 2 3 4 5 6 7))))
; sbcl --script ex7.lisp




Questão___8
(defun conjuntoDasPartes(l)
  (if (null l)
    '(nil)
    (let ((ps (conjuntoDasPartes (cdr l))))
      (append ps (mapcar #'(lambda (x) (cons (car l) x)) ps)))))

(write(conjuntoDasPartes '(1 2 3 4)))




Questão___9

(defun compactar (arr &aux temp)
  (setq temp '())
  (setq prev NIL)
  (setq cont 1)
  (dolist (i arr)
    (when (equal prev i)
      (incf cont)
    )
    (if prev
      (when (/= prev i)
        (when (equal cont 1)
          (push prev temp)
        )
        (when (> cont 1)
          (setq aux '())
          (push prev aux)
          (push cont aux)
          (setq temp (cons aux temp))
          (setq cont 1)
        )
      )
    )
    (setq prev i)
  )
  ; Acrescentar último item
  (when (equal cont 1)
    (push prev temp)
  )
  (when (> cont 1)
    (setq aux '())
    (push prev aux)
    (push cont aux)
    (setq temp (cons aux temp))
    (setq cont 1)
  )
  (nreverse temp)
)
(write-line(write-to-string(compactar '(2 2 2 3 4 4 2 9 5 2 4 5 5 5))))
;(3 2) 3 (2 4) 2 9 5 2 4 (3 5)
;sbcl --script ex9.lisp

questão__10:
(defun fatorial-acum (n acum)
 
  (cond
    ((<= n 1) acum)
    (t (fatorial-acum (- n 1) (* n acum)))))

(defun fatorial (n)
  (fatorial-acum n 1))

(print (fatorial 5)) ;120

