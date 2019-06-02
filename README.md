# My-Sightseeing

This apps uses WikiMedia API to store favorite sightseeings as well
as other points of interests on a map for future reference.

# Implementation

- MainViewComtroller:
This controller takes the first instance of the data controller from
the app delegate to instantiate the core data stack. 
It fetches the pins as so from the persistent store and loads it on a map view.
It responds to the user long press to add a new pin to the view and saves it 
to the persistent store then perform the segue to the CollectionViewController 
with the instances of the data controller and the selected pin.

- CollectionViewController:
This controller takes the passed pin from the previous controller and fetches 
the related photos if it is saved to the persistent store and adds a pin to 
the map view based on the user selection. If it is a new pin, it retrieves
the corresponding photos from the WikiMedia API and saves it to the persistent store.
it allows the user to remove a photo or change the collection.


# Requirements

Xcode 9.2
Swift 4.0
