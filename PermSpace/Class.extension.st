Extension { #name : #Class }

{ #category : #'*PermSpace' }
Class >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.

	methodDict moveToPermSpace: permSpace.
	layout moveToPermSpace: permSpace.
	organization moveToPermSpace: permSpace.
	name moveToPermSpace: permSpace.
	classPool moveToPermSpace: permSpace.
	classPool associations do: [ :e | 
		e moveToPermSpace: permSpace.
		e key moveToPermSpace: permSpace ].
	category moveToPermSpace: permSpace.
	sharedPools moveToPermSpace: permSpace.

	self classSide moveToPermSpace: permSpace
]
