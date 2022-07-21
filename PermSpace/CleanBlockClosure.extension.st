Extension { #name : #CleanBlockClosure }

{ #category : #'*PermSpace' }
CleanBlockClosure >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.
	self compiledBlock moveToPermSpace: permSpace 
]
