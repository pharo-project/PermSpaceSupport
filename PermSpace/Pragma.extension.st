Extension { #name : 'Pragma' }

{ #category : '*PermSpace' }
Pragma >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.
	selector moveToPermSpace: permSpace.
	arguments moveToPermSpaceWithContent: permSpace.

]
