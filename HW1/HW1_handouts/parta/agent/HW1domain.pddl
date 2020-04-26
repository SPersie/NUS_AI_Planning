(define (domain grid_world ) 
(:requirements :strips :typing) 
(:types car
agent - car
gridcell
) 
(:predicates (at ?pt1 - gridcell ?car - car) 
(up_next ?pt1 - gridcell ?pt2 - gridcell) 
(down_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward_next ?pt1 - gridcell ?pt2 - gridcell) 
(blocked ?pt1 - gridcell) 
) 
(:action UP
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent) (not (blocked ?pt2)) (up_next ?pt1 ?pt2))
:effect (and (not (blocked ?pt1)) (at ?pt2 ?agent) (blocked ?pt2))
) 
(:action DOWN
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent) (not (blocked ?pt2)) (down_next ?pt1 ?pt2))
:effect (and (not (blocked ?pt1)) (at ?pt2 ?agent) (blocked ?pt2))
) 
(:action FORWARD
:parameters ( ?agent - agent ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?pt1 ?agent) (not (blocked ?pt2)) (forward_next ?pt1 ?pt2))
:effect (and (not (blocked ?pt1)) (at ?pt2 ?agent) (blocked ?pt2))
) 
) 
