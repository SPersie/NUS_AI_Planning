(define (domain grid_world ) 
(:requirements :strips :typing) 
(:types car
agent - car
gridcell
) 
(:predicates (at ?pt1 - gridcell ?car - car) 
(up_next ?pt1 - gridcell ?pt2 - gridcell) 
(down_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward-1_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward-2_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward-3_next ?pt1 - gridcell ?pt2 - gridcell) 
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
(:action FORWARD-1
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent)(not (blocked ?pt2))(forward-1_next ?pt1 ?pt2))
:effect (and (at ?pt2 ?agent)(blocked ?pt2)(not (blocked ?pt1)))
) 
(:action FORWARD-2
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent)(not (blocked ?pt2))(forward-2_next ?pt1 ?pt2))
:effect (and (at ?pt2 ?agent)(blocked ?pt2)(not (blocked ?pt1)))
) 
(:action FORWARD-3
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent)(not (blocked ?pt2))(forward-3_next ?pt1 ?pt2))
:effect (and (at ?pt2 ?agent)(blocked ?pt2)(not (blocked ?pt1)))
) 
) 
