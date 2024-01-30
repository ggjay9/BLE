# BLE

Using Matlab, we simulate a Bluetooth Low Energy (BLE) communication by creating an appropriate signal. This signal is further processed in Simulink. The Monte Carlo method is applied to assess the effects of Rayleigh fading. Both simulations use the LE1M PHY mode for data transmission, in conjunction with an AWGN channel. As the 𝐸_𝑏/𝑁_0 ratio increases, the difference between channels with and without Rayleigh fading effects becomes more noticeable.

Inside the 'Matlab' folder: 
- Modulation_Example_GMSK_Matlab.m: Generates the input signal using both rectangular and Gaussian filters.
- BLE_AWGN.m: Compares the outcomes obtained.

Inside the 'Simulink' folder:
- Modulation_Example_GMSK_Simulink.slx: Analyzes the differences between FSK and GFSK modulations using signals generated in Matlab.
- GMSK_Rayleigh.slx and GMSK_Rician.slx: Simulate a BLE transmission over an AWGN channel, differing only in the channel fading model used.

This project was a joint effort with my colleague Manuele Montrasio, we worked together on developing code, analyzing data, and generating visual aids to support our results.
