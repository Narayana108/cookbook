### Story:
You are a pilgrim that is living in Vrindavan that wants to visit Radha Kund, Govardhan and Barsana,
but you only have x amount of ruppees and y amount of time available.
You will always first visit Radhakund, then Govardhan and then Barsana in this order.
Calculate and display if you will have enough ruppees and time to visit all 3 places of pilgrimage in one trip.
After visiting a place of pilgrimage you will come back to Vrindavan and then visit the next destination immidiatly.
Display all the destinations reached.

### Details:
RadhaKunda = 20 km
Gorvarhdan = 40 km
Barsana = 60 km
These above vales is already calculated for the total distance (there and back).
You will always spend  an additional 60 min at a destination.

You have x ruppess and y time.
1km = 2min travel time
1km = 2 ruppee.

Distances and prices are not realistic and are made up.

You can only visit 3 places with in the above order.
Display all places visited and the remaining ruppees and time.

### Remember:
Be creative and come up with the most efficient solution.
The less code and the less repeatable code the better.

Start with the following variables:
```js
const visitingTime = 60; // minutes

const radhaKundDistance = 20;   //km's (To Radhakund and back)
const govardhanDistance = 40;   //km's (To Govardhan and back)
const barsanaDistance = 80;    //km's (To Barsana and back)
```

output example:
```

Puskar has 500 ruppees and 580min time available

Visting: Radhakund
Total Cost: 20 ruppees
Total Distance: 20 km
Total Time needed: 80 min

Radhakund - Completed
Time Remaining: 500min
Ruppees Remaining: 480

---------------------------------------

Visting: Barsana
Total Cost: 80 ruppees
Total Distance: 80 km
Total Time needed: 140 min

Barsana - Completed
Time Remaining: 360min
Ruppees Remaining: 400

---------------------------------------

Visting: Govardhan
Total Cost: 40 ruppees
Total Distance: 40 km
Total Time needed: 100 min

Govardhan - Completed
Time Remaining: 260min
Ruppees Remaining: 360

---------------------------------------

Places visited: Radhakund,Barsana,Govardhan
```
