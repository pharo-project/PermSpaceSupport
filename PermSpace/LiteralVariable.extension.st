Extension { #name : #LiteralVariable }

{ #category : #'*PermSpace' }
LiteralVariable >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self
]
