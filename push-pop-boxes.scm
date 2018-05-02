;#lang racket

(define-module (guile-peg push-pop-boxes)
#:export (push! pop!))

;;;;
;; push and pop for boxes

(define-syntax-rule (push! place thing)
  (variable-set! place (cons thing (variable-ref place))))

(define-syntax-rule (pop! place)
  (let ((top (car (variable-ref place))))
    (variable-set! place (cdr (variable-ref place)))
    top))
