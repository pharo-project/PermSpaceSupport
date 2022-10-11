Extension { #name : #Array }

{ #category : #'*PermSpace' }
Array >> moveToPermSpaceWithContent: permSpace [

	self moveToPermSpace: permSpace.
	self do: [ :e | e moveToPermSpaceWithContent: permSpace ]
]

{ #category : #'*PermSpace' }
Array >> primMoveToPermSpaceInBulk [

	<primitive: 91 error: ec>
	
	^ self primitiveFailed
]
