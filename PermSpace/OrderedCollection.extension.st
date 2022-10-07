Extension { #name : #OrderedCollection }

{ #category : #'*PermSpace' }
OrderedCollection >> moveToPermSpace: permSpace [

	super moveToPermSpace: permSpace.
	array moveToPermSpace: permSpace
]
