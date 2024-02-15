Extension { #name : 'LayoutClassScope' }

{ #category : '*PermSpace' }
LayoutClassScope >> isLayoutEmpty [

	^ false
]

{ #category : '*PermSpace' }
LayoutClassScope >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.
	parentScope isLayoutEmpty ifTrue: [ parentScope moveToPermSpace: permSpace ].	
	self do: [ :e | e moveToPermSpace: permSpace ]
]
