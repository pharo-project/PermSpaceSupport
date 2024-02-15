Extension { #name : 'SystemDictionary' }

{ #category : '*PermSpace' }
SystemDictionary >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self
]

{ #category : '*PermSpace' }
SystemDictionary >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	self moveToPermSpace: permSpace.

	array moveToPermSpaceWithContent: permSpace.
	cachedClassNames moveToPermSpaceWithContent: permSpace.
	cachedNonClassNames moveToPermSpaceWithContent: permSpace.
	cachedBehaviors moveToPermSpaceWithContent: permSpace.
	reservedVariables moveToPermSpaceWithContent: permSpace
]
