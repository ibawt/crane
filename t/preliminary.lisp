(in-package :crane-test)

(def-suite preliminary
  :description "Start with a clean slate")
(in-suite preliminary)

(test delete-migrations
  (finishes
    (let ((dir (asdf:system-relative-pathname :crane-test #p"t/migrations/")))
      (when (fad:directory-exists-p dir)
        (fad:delete-directory-and-files dir)))))
