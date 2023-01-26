Extension { #name : #MooseGroupSetupStorage }

{ #category : #'*PermSpace-Moose' }
MooseGroupSetupStorage >> moveToPermSpaceWithContent: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	super moveToPermSpaceWithContent: permSpace.

	elements moveToPermSpaceWithContent: permSpace.
	
]
