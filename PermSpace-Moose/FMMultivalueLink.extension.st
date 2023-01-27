Extension { #name : #FMMultivalueLink }

{ #category : #'*PermSpace-Moose' }
FMMultivalueLink >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

	values moveToPermSpace: permSpace.
]

{ #category : #'*PermSpace-Moose' }
FMMultivalueLink >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
		
	self moveToPermSpace: permSpace.
	
	values do: [ :e | e moveToPermSpaceWithContent: permSpace ].
	owner moveToPermSpaceWithContent: permSpace.
	opposite moveToPermSpaceWithContent: permSpace.
]
