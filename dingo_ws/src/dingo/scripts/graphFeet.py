f = open("/home/pacrr/Documents/GitHub/PACRR/dingo_ws/src/feet.txt", "r")
timeSteps = f.read()[:-1].split(";")
data = []
timeRange = []
timeSteps.pop(0)
timeSteps.pop(len(timeSteps)-1)
for i in range(4):
    counter=0
    thisFoot = []
    for step in timeSteps:
        try:
            counter+=1
            step = step.strip()
            currentStep = step.split("\n")

            foot = currentStep[2]
            # print(foot)
            x = float(foot[17:-2].split()[i])
            foot = currentStep[3]
            y = float(foot[2:-1].split()[i])
            foot = currentStep[4]
            z = float(foot[2:-3].split()[i])
            thisFoot.append((x,y,z))
            if i == 0:
                timeRange.append(float(currentStep[0][41:].split(",")[4]))
            
        except Exception as error:
            # handle the exception
            print(counter)
            print(currentStep)
            print("An exception occurred:", error)
    data.append(thisFoot)

# print(data)
# for j in range(4):
#     forwardMovement=0
#     for i in range(1,len(data[j])-1):
#         if data[j][i-1][0]<data[j][i][0]:
#             forwardMovement+=(data[j][i][0]-data[j][i-1][0])
#     print(forwardMovement)

# forwardMovement=0
# for i in range(1,len(data[0])-1):
#     if data[0][i-1][2]< -0.195:
#         forwardMovement+=(data[0][i][0]-data[0][i-1][0])
# print(forwardMovement)

for j in range(4):
    forwardMovement=0
    for i in range(1,len(data[j])-1):
        if data[j][i-1][2]<-0.195 and data[j][i-1][0]>data[j][i][0]:
            forwardMovement+=(data[j][i][0]-data[j][i-1][0])
    print(forwardMovement)



import matplotlib.pyplot as plt

# Create a range of x values (assuming each float corresponds to a point)
foot_x = [tup[0]-0.115 for tup in data[0]]
foot_y = [tup[1] for tup in data[0]]
foot_z = [tup[2]+0.2 for tup in data[0]]
# x_values = range(1, len(foot_z) + 1)

# Plot the data
plt.plot(timeRange, foot_x, marker='o', linestyle='-', label="X")
plt.plot(timeRange, foot_z, marker='o', linestyle='-', label="Z")

# Set labels for the axes
plt.xlabel('Data Points')
plt.ylabel('Values')

# Set a title for the plot
plt.title('Float Data Plot')

# Show the plot
plt.show()

# y=foot[1].split()
# z = foot[2].split()

# print(y)
# print(z)
