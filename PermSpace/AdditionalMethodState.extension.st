Extension { #name : #AdditionalMethodState }

{ #category : #'*PermSpace' }
AdditionalMethodState >> moveToPermSpace [
	
	self primMoveToPermSpace.
	selector moveToPermSpace.
	self keysAndValuesDo: [ :k :v | k moveToPermSpace. v moveToPermSpace ]
]
