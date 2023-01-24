Extension { #name : #MooseGroup }

{ #category : #'*PermSpace-Moose' }
MooseGroup >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self doMoveToPermSpace: permSpace
]
