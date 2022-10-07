Extension { #name : #AdditionalMethodState }

{ #category : #'*PermSpace' }
AdditionalMethodState >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.
	selector moveToPermSpace: permSpace .
	self keysAndValuesDo: [ :k :v | 
		k moveToPermSpace: permSpace.
		v moveToPermSpace: permSpace ]
]
