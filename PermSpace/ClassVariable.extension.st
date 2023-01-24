Extension { #name : #ClassVariable }

{ #category : #'*PermSpace' }
ClassVariable >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	name moveToPermSpace: permSpace 
]
