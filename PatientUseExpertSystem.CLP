    CLIPS (6.30 3/17/15)
CLIPS> (defrule Name

=>
(printout t "Please Enter Your Name :"crlf)
(assert (Name(readline))))
CLIPS> (defrule Question

=>
(printout t "Are You Feeling Cough(yes/no) :"crlf)
(assert(symptom(read))))
CLIPS> (defrule yes
?ver<-(symptom ?sm&Cough|Saneezing|Fever)
(Name ?nam)

=>
(retract ?ver)
(printout t "Dear " ?nam "You Suffer in Asthma" crlf))
CLIPS> (run)
Are You Feeling Cough(yes/no) :
yes
Please Enter Your Name :
Bakhtawar
CLIPS> (defrule Verify
(symptom ?sm)
(Name ?nam)

=>
(if(eq ?sm yes)
then
(printout t "Dear " ?nam "You Suffer in Asthma" crlf)))
CLIPS> (reset)
CLIPS> (run)
Please Enter Your Name :
Bakhtawar
Are You Feeling Cough(yes/no) :
yes
Dear BakhtawarYou Suffer in Asthma
CLIPS> 
