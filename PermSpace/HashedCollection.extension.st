Extension { #name : #HashedCollection }

{ #category : #'*PermSpace' }
HashedCollection >> moveToPermSpace: permSpace [

	super moveToPermSpace: permSpace.
	array moveToPermSpace: permSpace
]
