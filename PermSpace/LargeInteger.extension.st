Extension { #name : #LargeInteger }

{ #category : #'*PermSpace' }
LargeInteger >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self
]
