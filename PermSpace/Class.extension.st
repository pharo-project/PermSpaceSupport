Extension { #name : 'Class' }

{ #category : '*PermSpace' }
Class >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

	methodDict moveToPermSpace: permSpace.

	layout moveToPermSpace: permSpace.

	protocols moveToPermSpaceWithContent: permSpace.
	name moveToPermSpace: permSpace.
	
	classPool ifNotNil: [
		classPool moveToPermSpace: permSpace.
		classPool associations do: [ :e | 
			e moveToPermSpaceWithContent: permSpace ]].
	
	subclasses ifNotNil: [subclasses moveToPermSpace: permSpace].
	packageTag moveToPermSpace: permSpace.
	sharedPools moveToPermSpace: permSpace.

	environment moveToPermSpace: permSpace.
	
	(self class allSlots reject: [ :e | Class withAllSuperclasses includes: e owningClass ])
		do: [ :e | (e read: self) moveToPermSpaceWithContent: permSpace ].

	self classSide moveToPermSpace: permSpace
]
