Extension { #name : #ProtocolOrganizer }

{ #category : #'*PermSpace' }
ProtocolOrganizer >> moveToPermSpace [
	
	self primMoveToPermSpace.
	allProtocol moveToPermSpace.
	protocols do: [:e | e moveToPermSpace].
]
