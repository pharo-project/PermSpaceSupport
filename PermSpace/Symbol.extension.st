Extension { #name : #Symbol }

{ #category : #'*PermSpace' }
Symbol >> moveToPermSpace: anObject [

	"Only move non special selectors"

	"	(Smalltalk specialSelectors includes: self) ifFalse: [ 
		super moveToPermSpace: anObject ]"

	super moveToPermSpace: anObject
]
