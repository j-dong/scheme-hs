(define assert (lambda (x) (if x () (begin (display "FAIL") (newline))) x))
(define assert_not (lambda (x) (if x (begin (display "FAIL") (newline))) x))

;;; testing "and" macro
(assert_not (and #t #f))
(assert_not (and #f #t))
(assert (and #t #t #t))
(assert_not (and #f (display "FAIL\n")))
;;; testing "or" macro
(assert (or #t #f))
(assert (or #f #t))
(assert_not (or #f #f #f))
(assert (or #t (display "FAIL\n")))
;;; testing "let" macro
(assert (let ((x 1) (y 5)) (equal? x 1)))
(assert (let ((x 2) (y 2)) (equal? y 2)))
(assert (let ((x 1) (y 5) (z 5)) (and (equal? x 1) (equal? y 2) (equal? z 5))))
