Extension { #name : #ClassVariable }

{ #category : #'*PermSpace' }
ClassVariable >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.
		name moveToPermSpace: permSpace 
]
