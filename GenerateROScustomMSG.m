close all
clear
clc

%% Generate custom messages
rosgenmsg([pwd,'\communications\']);
mkdir Astrobee_G&C matlab_msg_gen_ros1
copyfile .\communications\matlab_msg_gen_ros1 Astrobee_G&C\matlab_msg_gen_ros1

