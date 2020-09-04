;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HW_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;exercise 1.27
(define flatten
  (lambda (lst)
    (cond
      ((null? lst) '())
      ((list? (car lst)) (append(flatten (car lst)) (flatten (cdr lst))))
      ((symbol? (car lst)) (append(list (car lst)) (flatten (cdr lst)))))))


(display(flatten '(a b (() (c)))))

