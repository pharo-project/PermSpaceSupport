Extension { #name : #MooseEntity }

{ #category : #'*PermSpace-Moose' }
MooseEntity >> doMoveToPermSpace: permSpace [

	super doMoveToPermSpace: permSpace.
	
	((self class withAllSuperclassesUntil: MooseEntity) flatCollect: [ :aClass | aClass slots ]) 
		reject: [ :e | e isVirtual ]
		thenDo: [ :anSlot | (anSlot read: self) moveToPermSpaceWithContent: permSpace ]

	
]

{ #category : #'*PermSpace-Moose' }
MooseEntity >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self) 
		ifTrue: [ ^ self ].

	self doMoveToPermSpace: permSpace
]
