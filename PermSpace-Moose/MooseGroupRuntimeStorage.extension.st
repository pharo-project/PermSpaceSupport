Extension { #name : #MooseGroupRuntimeStorage }

{ #category : #'*PermSpace-Moose' }
MooseGroupRuntimeStorage >> moveToPermSpaceWithContent: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	super moveToPermSpaceWithContent: permSpace.

	byName moveToPermSpaceWithContent: permSpace.
	elements moveToPermSpaceWithContent: permSpace.
	byType moveToPermSpaceWithContent: permSpace
	
]
