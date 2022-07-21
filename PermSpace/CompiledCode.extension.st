Extension { #name : #CompiledCode }

{ #category : #'*PermSpace' }
CompiledCode >> moveToPermSpace [
	
	"If it is a FFI method we ignore it"
	self isFFIMethod ifTrue: [ ^ self ].
	
	self primMoveToPermSpace.
	
	self allLiterals do: [ :e | 
		(e isAssociation or: [ e isKindOf: GlobalVariable ])
			ifFalse: [ e moveToPermSpace ]]
]
