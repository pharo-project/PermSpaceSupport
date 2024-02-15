Extension { #name : 'Semaphore' }

{ #category : '*PermSpace' }
Semaphore >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

]
