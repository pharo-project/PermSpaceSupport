Extension { #name : #FMMultivalueLink }

{ #category : #'*PermSpace' }
FMMultivalueLink >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

	values moveToPermSpace: permSpace.
]
