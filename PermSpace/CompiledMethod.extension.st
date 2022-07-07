Extension { #name : #CompiledMethod }

{ #category : #'*PermSpace' }
CompiledMethod >> moveToPermSpace [
	
	"If it is a FFI method we ignore it"
	self isFFIMethod ifTrue: [ ^ self ].
	
	self primMoveToPermSpace.
	
	self allLiterals do: [ :e | 
		(e isAssociation or: [ e isKindOf: GlobalVariable ])
			ifFalse: [ e moveToPermSpace ]]
]
