Extension { #name : 'Variable' }

{ #category : '*PermSpace' }
Variable >> moveToPermSpace: permSpace [ 
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.
	
	name moveToPermSpace: permSpace
]
