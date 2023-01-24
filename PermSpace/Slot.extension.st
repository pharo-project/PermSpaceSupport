Extension { #name : #Slot }

{ #category : #'*PermSpace' }
Slot >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	name moveToPermSpace: permSpace 
]
