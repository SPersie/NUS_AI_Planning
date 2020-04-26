(define (domain grid_world ) 
(:requirements :strips :typing) 
(:types car
agent - car
gridcell
) 
(:predicates (at ?pt1 - gridcell ?car - car) 
(up_next ?pt1 - gridcell ?pt2 - gridcell) 
(down_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward1_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward2_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward3_next ?pt1 - gridcell ?pt2 - gridcell) 
(blocked ?pt1 - gridcell) 
) 
(:action UP
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent)(not (blocked ?pt2))(up_next ?pt1 ?pt2))
:effect (and (at ?pt2 ?agent)(blocked ?pt2)(not (blocked ?pt1)))
) 
(:action DOWN
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent)(not (blocked ?pt2))(down_next ?pt1 ?pt2))
:effect (and (at ?pt2 ?agent)(blocked ?pt2)(not (blocked ?pt1)))
) 
(:action FORWARD1
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent)(not (blocked ?pt2))(forward1_next ?pt1 ?pt2))
:effect (and (at ?pt2 ?agent)(blocked ?pt2)(not (blocked ?pt1)))
) 
(:action FORWARD2
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent)(not (blocked ?pt2))(forward2_next ?pt1 ?pt2))
:effect (and (at ?pt2 ?agent)(blocked ?pt2)(not (blocked ?pt1)))
) 
(:action FORWARD3
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent)(not (blocked ?pt2))(forward3_next ?pt1 ?pt2))
:effect (and (at ?pt2 ?agent)(blocked ?pt2)(not (blocked ?pt1)))
) 
) 
