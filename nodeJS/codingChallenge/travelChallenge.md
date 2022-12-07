### Story:
You are a pilgrim that is living in Vrindavan that wants to visit Radha Kund, Govardhan and Barsana,
but you only have x amount of ruppees and y amount of time available.
You will always first visit Radhakund, then Govardhan and then Barsana in this order.
Calculate and display if you will have enough ruppees and time to visit all 3 places of pilgrimage in one trip.
After visiting a place of pligramage you will come back to Vrindavan and then visit the next destination immidiatly.
Display all the destinations reached.

### Details:
You have x ruppess and y time.
RadhaKunda = 20 km
Gorvarhdan = 40 km
Barsana = 60 km
1km = 2min travel time
1km = 2 ruppee.
Distances and prices are not realistic and are made up.
You will always spend exactly 60 min at a destination.
You will always return to vrindavan after visting 1 destination, use the above vales for the total distance (there and back).
You can only visit 3 places with in the above order.
Display all places visited and the remaining ruppees and time.

### Remember:
Be creative and come up with the most effience solution.
The less code and the less repeatable code the better.
My solution has 56 lines of code.

Start with the following variables:
```js
const visitingTime = 60; // minutes

const radhaKundDistance = 20;   //km's (To Radhakund and back)
const govardhanDistance = 40;   //km's (To Radhakund and back)
const barsanaDistance = 80;    //km's (To Radhakund and back)
```


output example:

```sh
Puskar has 500 ruppees and 580min time available

Visting: Radhakund, Total Cost: 20 ruppees, Total Distance: 80 km
Radhakund - Completed
Time Remaining 500min
Ruppees Remaining: 480

---------------------------------------

Visting: Barsana, Total Cost: 80 ruppees, Total Distance: 220 km
Barsana - Completed
Time Remaining 280min
Ruppees Remaining: 400

---------------------------------------

Visting: Govardhan, Total Cost: 80 ruppees, Total Distance: 140 km
Govardhan - Completed
Time Remaining 140min
Ruppees Remaining: 320

---------------------------------------

Places visited: Radhakund,Barsana,Govardhan
```
