# Alliance Broadband Login Script For Linux

## Usage

1. Place the login URL, username and password in the file named `user_details`

2. Make the script executable

		chmod +x login.sh

3. To logout

		./login.sh 0

4. To login

		./login.sh 1

## Source

I found it on this [blog](https://linuxiswonderful.wordpress.com/2018/11/24/auto-connect-alliance-broadband/). 
All credit goes to the author. 
I merely cleaned up the code a bit and removed portions which I deemed clutter.

## Why use bash instead of Python/C?

Because it's the most portable
