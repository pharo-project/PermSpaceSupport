Extension { #name : #FM3Element }

{ #category : #'*PermSpace-Moose' }
FM3Element >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.
	
]

{ #category : #'*PermSpace-Moose' }
FM3Element >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self moveToPermSpace: permSpace.
	
	self class allSlots do: [ :aSlot | 
		(aSlot read: self) moveToPermSpaceWithContent: permSpace ]	
]
