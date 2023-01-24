Extension { #name : #CleanBlockClosure }

{ #category : #'*PermSpace' }
CleanBlockClosure >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	self compiledBlock moveToPermSpace: permSpace 
]
