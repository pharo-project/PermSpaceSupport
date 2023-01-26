Extension { #name : #MooseGroupStorage }

{ #category : #'*PermSpace-Moose' }
MooseGroupStorage >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.
]

{ #category : #'*PermSpace-Moose' }
MooseGroupStorage >> moveToPermSpaceWithContent: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self moveToPermSpace: permSpace.
	species moveToPermSpaceWithContent: permSpace
]
