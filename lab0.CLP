(deftemplate Svetofor(slot color)) 
 (deffacts Svetoforfacts
  (crazy no)(Svetofor(color green))
) 
(defrule Go
(crazy no)(Svetofor(color green))
=>(printout t "Go-go" crlf)
)
(defrule Stop 
 (or 
  (crazy yes)
  (Svetofor(color red))
)
=> (printout t "Stoy" crlf)
)