# Task 1: Seven Segment decoder

In this folder, we have two different files, one that is the component and the other is a logic component, but uses the same test file, which intern produces the same results.
Below is screenshots of the different types of files:

Component file:
![image](https://user-images.githubusercontent.com/49998052/109561097-a08a3680-7ad4-11eb-80a1-ddb8640b2494.png)
(seven_seg_decode.vhd)

And the logic file of the component:
![image](https://user-images.githubusercontent.com/49998052/109561298-e1824b00-7ad4-11eb-9190-89774ba080e9.png)
(seven_seg_decode_logic.vhd)

And they are both tested with this file:
![image](https://user-images.githubusercontent.com/49998052/109561527-30c87b80-7ad5-11eb-9dd8-7548fb35d2f5.png)
(seven_seg_decode.vht)

(Some of the image dont show the full story)

When this component is placed in a circuit, a 4 bit input is put into the device as an input, and the a 7 bit number is outputted from the system, allowing the corrosponding leds 
to light up, (As shown below). For example, displaying the number 0 is an input of 0000 and a output of 1111110.

![image](https://user-images.githubusercontent.com/49998052/109562133-eb587e00-7ad5-11eb-8d0b-840ccab2c44d.png)
