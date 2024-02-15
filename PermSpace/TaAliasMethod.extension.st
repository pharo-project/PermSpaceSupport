Extension { #name : 'TaAliasMethod' }

{ #category : '*PermSpace' }
TaAliasMethod >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	super moveToPermSpace: aPermSpace.
	aliases moveToPermSpace: aPermSpace.
	aliases associationsDo: [ :assoc |
		assoc moveToPermSpace: aPermSpace.
		assoc key moveToPermSpace: aPermSpace.
		assoc value moveToPermSpace: aPermSpace ]
]
