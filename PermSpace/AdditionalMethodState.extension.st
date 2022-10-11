Extension { #name : #AdditionalMethodState }

{ #category : #'*PermSpace' }
AdditionalMethodState >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.
	selector moveToPermSpace: permSpace .

	1 to: self basicSize do: [:i | (self basicAt: i) moveToPermSpace: permSpace].
	self keysAndValuesDo: [ :k :v | 
		k moveToPermSpace: permSpace.
		v moveToPermSpace: permSpace ]	
	
]
