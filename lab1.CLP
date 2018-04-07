(deftemplate Player(slot quality)) 
 (deffacts Playerfacts
  (quality bad)(Player(sound yes))
) 
(defrule CleanHead
(head dirty)(Player(quality good))
=>(printout t "Clean the Head" crlf)
)
(defrule CheckCasette 
 (or 
  (quality bad)
  (Player(sound yes))
)
=> (printout t "Call the Service" crlf)
)