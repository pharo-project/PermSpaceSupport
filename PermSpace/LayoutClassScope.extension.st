Extension { #name : #LayoutClassScope }

{ #category : #'*PermSpace' }
LayoutClassScope >> moveToPermSpace [

	super moveToPermSpace.
	self do: [ :e | e moveToPermSpace ]
]
