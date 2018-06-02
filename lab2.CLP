 (deffacts os-facts
	(osType(Windows) (servertype usertype))
	(osType(Linux) (servertype usertype))
	(osType(FreeBSD) (servertype usertype))
 
 (defrule Win_serv
 ( Windows servertype )
=> 
 (printout t "Use other OS" crlf)) 

 (defrule Win_user
 (  Windows usertype )
=> 
 (printout t "Use C#" crlf)) 

 (defrule Lin_serv
 (  Linux  servertype )
=> 
 (printout t "Use C" crlf)) 
 
(defrule Lin_user
 (  Linux  usertype )
=> 
 (printout t "Use C++" crlf)) 

(defrule FreeBSD_user
 (  FreeBSD  usertype )
=> 
 (printout t "Use other OS" crlf)) 

(defrule FreeBSD_server
 (  FreeBSD  servertype )
=> 
 (printout t "Use C or Perl" crlf)) 

