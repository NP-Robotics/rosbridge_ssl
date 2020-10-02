# rosbridge_ssl

# Setup
## catkin_ws
Setup ROS Melodic and your catkin_ws if you have not done so.

```
cd catkin_ws/src
git clone https://github.com/NP-Robotics/rosbrige_ssl.git
cd rosbrige_ssl
```
`catkin_make` the package
```
cd ..
catkin_make
```
Now `cd` into `rosbridge_ssl/certs`.
Run the following commands.
```
sh createRootCA.sh
```
Follow the instructions and input the required information. It will prompt you for a password. Remember the password.

Next, run the script
```
sh createSelfSigned.sh
```

It will prompt you for the password you gave it previously. Enter the password.

Now, launch the package.
```
roslaunch rosbridge_ssl rosbridge_ssl.launch
```
## Web Browser (preferably Chromium based)
Open your browser of choice (except internet explorer), 

For Chrome: Navigate to 
```
Settings -> Privacy and Security -> Security -> Manage certificates -> Authorities
```
Click `Import`.
Navigate to this file in your `catkin_ws` and import it.
```
catkin_ws/src/rosbridge_ssl/certs/certs/rootCA.pem
```
Tick all the boxes.

Now open the IP address of the location where ROSBridge is launched, with the port number `9443`, and `https://` at the start.It should be something like this:
```
https://192.168.31.200:9443
OR
https://localhost:9443
```
If everything goes well, you should be greeted with a site that says: `PRIVACY ERROR`. Find the option where it says `proceed to site (unsafe)`. You will be greeted by a blue screen that says something like `AUTOBAHN`.

Done! Your browser is now setup to connect to ROSBridge Websocket!
