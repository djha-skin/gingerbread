;;;; main.lisp -- Reference Implementation for Pennant Lines in Common Lisp
;;;;
;;;;
;;;; SPDX-FileCopyrightText: 2024 Daniel Jay Haskin
;;;; SPDX-License-Identifier: MIT
;;;;

;;; Plug this into the REPL for debugging
#+(or)
(declaim (optimize (speed 0) (space 0) (debug 3)))


;;; Plug this into the REPL for speed
#+(or)
(progn
  (declaim (optimize (speed 3) (safety 1) (debug 0))))

(in-package #:cl-user)

(defpackage
  #:com.djhaskin.gingerbread (:use #:cl)
  (:documentation
    "
    A port of the excellent cookecutter to the Common Lisp REPL
    ")
  (:export
    make
    main)
  (:import-from #:com.djhaskin.cl-i)
  (:local-nicknames (#:cl-i #:com.djhaskin.cl-i)))

(in-package #:com.djhaskin.gingerbread)

(defun make
    (repo
      &key
      params
      auth)
  (uiop:run-program 
