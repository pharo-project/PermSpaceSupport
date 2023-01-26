Extension { #name : #SmallDictionary }

{ #category : #'*PermSpace' }
SmallDictionary >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.
	
	keys moveToPermSpace: permSpace.
	values moveToPermSpace: permSpace.
	size moveToPermSpace: permSpace
]

{ #category : #'*PermSpace' }
SmallDictionary >> moveToPermSpaceWithContent: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	self moveToPermSpace: permSpace.

	keys do: [:e | e moveToPermSpaceWithContent: permSpace].
	values do: [:e | e moveToPermSpaceWithContent: permSpace].

]
