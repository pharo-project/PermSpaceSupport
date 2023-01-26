Extension { #name : #FMSlotMultivalueLink }

{ #category : #'*PermSpace-Moose' }
FMSlotMultivalueLink >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self
]

{ #category : #'*PermSpace-Moose' }
FMSlotMultivalueLink >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
		
	self moveToPermSpace: permSpace.
	
	values moveToPermSpaceWithContent: permSpace.
	owner moveToPermSpaceWithContent: permSpace.
	slot moveToPermSpaceWithContent: permSpace.
]
