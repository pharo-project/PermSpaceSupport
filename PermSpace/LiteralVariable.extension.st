Extension { #name : #LiteralVariable }

{ #category : #'*PermSpace' }
LiteralVariable >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self
]
