# D type Flip Flop Shift Register (Using ModelSim)

In this section, the shift register is three D type flip flops which are in a line with a CLK attached to all of them. The system is Synchronous due to the system having the same
CLK, to make sure that the system is correct to the input and outputs that it recieves. This is mainly used when switching between systems, sometimes from Asynchronous systems to 
synchronous systems. This can be used when a button is pressed when going into a synchronous system. This is written in structural VHDL, which means that a component is created,
as shown as the D-Type flip flop, and then put into a larger system as shown as the shift register. Below, is the files associated:

The D-Type flip flop:

![image](https://user-images.githubusercontent.com/49998052/110129585-066e0b00-7dc0-11eb-9b40-d1bc7f77b836.png)

The whole D-type flip flop shift register (This is using structural VHDL):

![image](https://user-images.githubusercontent.com/49998052/110129805-43d29880-7dc0-11eb-876a-56fea2b895e6.png)

And the test file:

![image](https://user-images.githubusercontent.com/49998052/110129924-65338480-7dc0-11eb-852e-4ce19ccc8bb3.png)

(This has more to it in the same location as the last task, as elec241_shift_register_test.vht)

Example of this system (When a button is pressed):

![image](https://user-images.githubusercontent.com/49998052/110130124-9ad86d80-7dc0-11eb-8a50-02ab4d869277.png)

Also if you wanted to improve, the use of the generate variable can allow multiple of the same component in the same line. Link to website: https://www.ics.uci.edu/~jmoorkan/vhdlref/generate.html
