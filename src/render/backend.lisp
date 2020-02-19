(in-package :lbge.render.backend)

(defclass backend () ()
  (:documentation "Protocol class for backends.
Each backend should implement the methods for this protocol,
renderer interacts with backend through this protocol"))

(defgeneric init (backend window &optional info)
  (:documentation "Render intialization.
info is custom info, what can be placed there, depends on backend"))
(defgeneric clear (backend))
(defgeneric render (backend renderer))
(defgeneric present (backend))
(defgeneric deinit (backend))
(defgeneric make-shader (backend shader-key))
(defgeneric shader-list (backend))
(defgeneric use-shader (backend shader))
