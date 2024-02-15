Extension { #name : 'MetaclassForTraits' }

{ #category : '*PermSpace' }
MetaclassForTraits >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	

	super moveToPermSpace: permSpace.
	users moveToPermSpace: permSpace. 
]
