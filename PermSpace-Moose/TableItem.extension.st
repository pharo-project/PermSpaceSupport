Extension { #name : #TableItem }

{ #category : #'*PermSpace-Moose' }
TableItem >> moveToPermSpace: permSpace [ 

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

]

{ #category : #'*PermSpace-Moose' }
TableItem >> moveToPermSpaceWithContent: permSpace [ 

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self moveToPermSpace: permSpace.
	
	key moveToPermSpaceWithContent: permSpace.
	value moveToPermSpaceWithContent: permSpace.
	keyHash moveToPermSpaceWithContent: permSpace.
	next moveToPermSpaceWithContent: permSpace
]
