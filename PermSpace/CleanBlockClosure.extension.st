Extension { #name : #CleanBlockClosure }

{ #category : #'*PermSpace' }
CleanBlockClosure >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	self compiledBlock moveToPermSpace: permSpace 
]
