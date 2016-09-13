clear all 
clc

%%Student Combinations (Part 2)


%Solution

%Essentially what we need is a round-robin tournament with nine rounds 
%1 for each homework assignment

%If we make two Arrays 

a = [1, 2, 3, 4, 5; 6, 7, 8, 9, 10]

% and

b = [2, 3, 4, 5, 6;7, 8, 9, 10, 1]

%and use this grid function 
[bb,aa] = ndgrid(b, a);
C = [aa(:) bb(:)];

%the first nine rows assign me a partner for the rest of the nine homework
%assignments as below. If I am student one, then over the next nine weeks I
%will be paired with the students in column two.

disp(C(1:9,:))






%% Variables of Matlab (Part 3 & 4)

%Number Variables

%Number variables are indicated by the prefix *n*

%nSamples

%---------------------------------------------------------------------------

%Single Entity Numbers

%Single entity numbers are indicated by the suffix *No*

%stationNo

%---------------------------------------------------------------------------

%Iterator Variables

%The prefix *i* indicates a iterator variable

%iStation

%---------------------------------------------------------------------------

%Named Constants


%Any values that will not change throughout the file should be all upper 
%case and separated by underscores

%COLOR_RED

%---------------------------------------------------------------------------

%Structures

%A structure is a data type that categorizes and organizes data into 
%fields. A structure is implicit and should not be repeated within a name.

%Segment.distance

%---------------------------------------------------------------------------
%Functions

%A function should have the same name as its.m-file and a descriptive (not
%cryptic) name

%compute total area()

%--------------------------------------------------------------------------

%Output Function

%The function should be named after the output, also all lowercase.

%absoluteweight()

%--------------------------------------------------------------------------

%Boolean Function

%A Boolean function should be prefixed "is"

%iscomplete




%% 