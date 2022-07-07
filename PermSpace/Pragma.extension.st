Extension { #name : #Pragma }

{ #category : #'*PermSpace' }
Pragma >> moveToPermSpace [
	
	self primMoveToPermSpace.
	selector moveToPermSpace.
	arguments do: [ :e | e moveToPermSpace ]
]
