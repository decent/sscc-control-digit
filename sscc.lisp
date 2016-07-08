(defparameter multiplier nil)

(defun control-digit (sscc)
  (progn
    (setf multiplier (make-multiplier))
    (let ((sum (reduce #'*+ (reverse (string-to-list (write-to-string sscc))) :initial-value 0)))
      (- (closest-ten sum) sum))))

(defun string-to-list (string)
  (loop for char across string
     collect (digit-char-p char)))

(defun *+ (previous-sum digit)
  "Takes the input and multiplies by 1 or 3 and adds to the previous sum"
  (+ previous-sum (* digit (funcall multiplier))))

(defun make-multiplier ()
  (let ((factor 3))
    (lambda ()
      (if (= factor 1)
	  (progn (setq factor 3)
		 1)
	  (progn (setq factor 1)
		 3)))))

(defun closest-ten (x)
  (* (ceiling (/ x 10)) 10))
