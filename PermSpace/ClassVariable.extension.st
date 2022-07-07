Extension { #name : #ClassVariable }

{ #category : #'*PermSpace' }
ClassVariable >> moveToPermSpace [
	
	self primMoveToPermSpace.
	name moveToPermSpace
]
