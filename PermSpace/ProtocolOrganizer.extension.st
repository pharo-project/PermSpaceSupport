Extension { #name : #ProtocolOrganizer }

{ #category : #'*PermSpace' }
ProtocolOrganizer >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.
	allProtocol moveToPermSpace: permSpace.
	protocols moveToPermSpace: permSpace.
	protocols do: [ :e | e moveToPermSpace: permSpace ]
]
