Extension { #name : #CleanBlockClosure }

{ #category : #'*PermSpace' }
CleanBlockClosure >> moveToPermSpace [
	
	self primMoveToPermSpace.
	self compiledBlock moveToPermSpace 
]
