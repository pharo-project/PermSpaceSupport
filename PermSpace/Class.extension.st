Extension { #name : #Class }

{ #category : #'*PermSpace' }
Class >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

	methodDict moveToPermSpace: permSpace.
	layout moveToPermSpace: permSpace.
	organization moveToPermSpace: permSpace.
	name moveToPermSpace: permSpace.
	
	classPool ifNotNil: [
		classPool moveToPermSpace: permSpace.
		classPool associations do: [ :e | 
			e moveToPermSpace: permSpace.
			e key moveToPermSpace: permSpace ]].
	
	subclasses ifNotNil: [subclasses moveToPermSpace: permSpace].
	category moveToPermSpace: permSpace.
	sharedPools moveToPermSpace: permSpace.

	environment moveToPermSpace: permSpace.

	self classSide moveToPermSpace: permSpace
]
