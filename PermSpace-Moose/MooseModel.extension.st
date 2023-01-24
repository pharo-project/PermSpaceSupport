Extension { #name : #MooseModel }

{ #category : #'*PermSpace-Moose' }
MooseModel >> doMoveToPermSpace: permSpace [

	super doMoveToPermSpace: permSpace.

	metamodel moveToPermSpaceWithContent: permSpace.
	name moveToPermSpaceWithContent: permSpace.
]

{ #category : #'*PermSpace-Moose' }
MooseModel >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self doMoveToPermSpace: permSpace
]
