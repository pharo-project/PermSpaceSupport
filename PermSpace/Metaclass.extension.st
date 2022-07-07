Extension { #name : #Metaclass }

{ #category : #'*PermSpace' }
Metaclass >> moveToPermSpace [

	self primMoveToPermSpace.

	methodDict moveToPermSpace.
	layout moveToPermSpace.
	organization moveToPermSpace.
]
