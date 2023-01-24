Extension { #name : #CompiledMethod }

{ #category : #'*PermSpace' }
CompiledMethod >> moveToPermSpace: permSpace [

	"If it is a FFI method we ignore it"

	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].

	self isFFIMethod ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.

	self allLiterals do: [ :e | 
		e moveToPermSpaceWithContent: permSpace ]
]
