Extension { #name : #HashTable }

{ #category : #'*PermSpace' }
HashTable >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.
	
	table moveToPermSpace: permSpace.
	loadfactor moveToPermSpace: permSpace.
	size moveToPermSpace: permSpace.
	capacity moveToPermSpace: permSpace
	
]

{ #category : #'*PermSpace' }
HashTable >> moveToPermSpaceWithContent: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self moveToPermSpace: permSpace.
	table do: [ :e | e moveToPermSpaceWithContent: permSpace ]
]
