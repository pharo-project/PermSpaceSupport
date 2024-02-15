Extension { #name : 'Package' }

{ #category : '*PermSpace' }
Package >> moveContentToPermSpace: permSpace [

	self moveToPermSpace: permSpace.

	self definedClasses
		do: [ :e | e moveToPermSpace: permSpace ]
		displayingProgress: [ :e | e name asString ].
		
	name moveToPermSpace: permSpace.
	extensionSelectors moveToPermSpaceWithContent: permSpace.
	organizer moveToPermSpace: permSpace.
	tags moveToPermSpaceWithContent: permSpace.
]
