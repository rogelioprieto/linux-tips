# Terrible Noise on the Internal Microphone or why noise in voice recording microphone in ubuntu 24.04

This fixed it for me too on Ubuntu 24 LTS. Here’s the steps I took:

´´´bash
1. Open a Terminal
2. Run alsamixer
3. F6 to choose your soundcard
3. Press F5 to select All configurable devices (speakers and microhpnes)
4. Set the Capture setting to 40
´´´


Source:  
<https://community.frame.work/t/terrible-noise-on-the-internal-microphone/12259/7>