Extension { #name : #BoxedFloat64 }

{ #category : #'*PermSpace' }
BoxedFloat64 >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.

]
