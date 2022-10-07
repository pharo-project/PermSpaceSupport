Extension { #name : #LayoutClassScope }

{ #category : #'*PermSpace' }
LayoutClassScope >> moveToPermSpace: permSpace [

	super moveToPermSpace: permSpace.
	self do: [ :e | e moveToPermSpace: permSpace ]
]
