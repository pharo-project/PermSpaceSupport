Extension { #name : 'Slot' }

{ #category : '*PermSpace' }
Slot >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	name moveToPermSpace: permSpace 
]
