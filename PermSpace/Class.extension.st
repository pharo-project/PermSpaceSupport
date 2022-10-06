Extension { #name : #Class }

{ #category : #'*PermSpace' }
Class >> moveToPermSpace [

	self primMoveToPermSpace.

	methodDict moveToPermSpace.
	layout moveToPermSpace.
	organization moveToPermSpace.
	name moveToPermSpace.
	
	classPool ifNotNil: [  
		classPool moveToPermSpace.
		classPool associations do: [ :e | 
			e moveToPermSpace.
			e key moveToPermSpace ]].
	
	category moveToPermSpace.
	
	self classSide moveToPermSpace.
]
