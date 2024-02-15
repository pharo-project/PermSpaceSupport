Extension { #name : 'LargeInteger' }

{ #category : '*PermSpace' }
LargeInteger >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self
]
