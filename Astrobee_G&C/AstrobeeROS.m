clear
clc
close all
format long


%% Initializes MATLAB-ROS Astrobee connections and variables
% Copyright Yazan Chihabi, 2023

addpath([pwd,'\matlab_msg_gen_ros1\win64\install\m'])
clear classes
rehash toolboxcache

%%

%% Initialize ROS
% Yazan's values
%
ROS_MASTER_URI = 'http://192.168.56.112:11311';
ROS_IP = '192.168.56.1';
%}


% Start up ROS and connect!
setenv('ROS_MASTER_URI',ROS_MASTER_URI) % this should be verified by user
setenv('ROS_IP',ROS_IP) % this should be verified by user
rosinit(ROS_MASTER_URI); % or rosinit() for initializing with default MATLAB ROS


msglist = rosmsg("list");
actionlist = rosaction("list");
svclist = rosservice("list");
topiclist = rostopic("list");
nodelist = rosnode("list")';
paramlist = rosparam("list");


%% 
d = rosdevice('192.168.56.112','astrobee','astro123')

%% disable use sim time
ptree = rosparam;
set(ptree,'/use_sim_time',false)