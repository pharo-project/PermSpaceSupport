Extension { #name : 'Array' }

{ #category : '*PermSpace' }
Array >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self
]

{ #category : '*PermSpace' }
Array >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self moveToPermSpace: permSpace.
	self do: [ :e | e moveToPermSpaceWithContent: permSpace ]
]

{ #category : '*PermSpace' }
Array >> primMoveToPermSpaceInBulk [

	<primitive: 91 error: ec>
	
	^ self primitiveFailed
]
