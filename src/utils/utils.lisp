(defpackage :crane.utils
  (:use :cl))
(in-package :crane.utils)
(annot:enable-annot-syntax)

@export
(defun diff-plist (plist-a plist-b &key (test #'eql))
  "Calculates the difference between two plists, returning
the result as a list of ([property] [old value] [new value])"
  (remove-if-not
    #'consp
    (loop for slot in plist-a by #'cddr collecting
      (if slot
          (let ((val-a (getf plist-a slot))
                (val-b (getf plist-b slot)))
            (if (funcall test val-a val-b)
                t
                (list slot val-a val-b)))))))
