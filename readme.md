# Image Resizer for React-Native Applications

Welcome to the Image Resizer repository! This tool was designed with one goal in mind: to make the process of resizing images in React-Native applications as effortless as possible.

---

## Quick Setup

Follow these steps to make use of this tool:

1. **Clone this repository**
   
   ```bash
   git clone https://github.com/YourUserName/RepoName.git
   ```
   Replace 'YourUserName' and 'RepoName' with your GitHub username and this repository's name respectively.

2. **Run the resize script**
   
   cd into the cloned directory, and run the `resize.sh` script:
   ```bash
   cd RepoName
   ./resize.sh
   ```
   
3. **Select your image**

   Upon running the script, you will be prompted to select an image from your system.  Navigate to your desired image and select it.

4. **Select your React-Native project folder**

   After selecting the image, you will be prompted to select your React-Native project folder. Navigate to your project folder and select it.

---

## What Does It Do?

Its a script that takes the image you selected and creates multiple scaled versions of it, suitable for use as icons that show on the device.
After creating these icons, the script will also update the relevant files within your project to use these newly created icons.

---

How to verify your computers rsa key
```
awk '{print $1}' ~/.android/adbkey.pub | openssl base64 -d | openssl md5 -c
```
