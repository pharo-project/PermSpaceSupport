Extension { #name : #Announcer }

{ #category : #'*PermSpace' }
Announcer >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

	registry moveToPermSpace: permSpace
]
