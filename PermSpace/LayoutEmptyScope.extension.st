Extension { #name : #LayoutEmptyScope }

{ #category : #'*PermSpace' }
LayoutEmptyScope >> isLayoutEmpty [

	^ true
]

{ #category : #'*PermSpace' }
LayoutEmptyScope >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self
]
