Extension { #name : #HashedCollection }

{ #category : #'*PermSpace' }
HashedCollection >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.

	array moveToPermSpace: permSpace
]
