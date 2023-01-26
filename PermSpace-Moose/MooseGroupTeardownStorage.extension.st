Extension { #name : #MooseGroupTeardownStorage }

{ #category : #'*PermSpace-Moose' }
MooseGroupTeardownStorage >> moveToPermSpaceWithContent: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	super moveToPermSpaceWithContent: permSpace.

	tally moveToPermSpaceWithContent: permSpace.
	Tombstone moveToPermSpaceWithContent: permSpace.
	
]
