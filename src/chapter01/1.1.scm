(include "../util.scm")

; 10
(println 10)

; 12
(println (+ 5 3 4))

; 8
(println (- 9 1))

; 3
(println (/ 6 2))

; 6
(println (+ (* 2 4) (- 4 6)))

; a = 3
(define a 3)

; b = 4
(define b (+ a 1))

; 19
(println (+ a b (* a b)))

; #f
(println (= a b))

; 4
(println
    (if (and (> b a) (< b (* a b)))
        b
        a))

; 16
(println
    (cond ((= a 4) 6)
        ((= b 4) (+ 6 7 a))
        (else 25)))

; 6
(println (+ 2 (if (> b a) b a)))

; 16
(println
    (* (cond ((> a b) a)
            ((< a b) b)
            (else -1))
        (+ a 1)))