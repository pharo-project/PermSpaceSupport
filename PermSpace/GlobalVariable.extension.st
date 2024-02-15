Extension { #name : 'GlobalVariable' }

{ #category : '*PermSpace' }
GlobalVariable >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.

]
