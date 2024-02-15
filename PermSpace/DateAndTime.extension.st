Extension { #name : 'DateAndTime' }

{ #category : '*PermSpace' }
DateAndTime >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	
	seconds moveToPermSpace: aPermSpace.
	offset moveToPermSpace: aPermSpace.
	julianDayNumber moveToPermSpace: aPermSpace.
	nanos moveToPermSpace: aPermSpace.
]
