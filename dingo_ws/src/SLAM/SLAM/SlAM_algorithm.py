import math
import numpy as np
import matplotlib.pyplot as plt
import rospy
from sensor_msgs.msg import LaserScan
import sensor_msgs.msg
from math import cos, sin, radians, pi
import time
from matplotlib.colors import ListedColormap
import threading
from matplotlib.animation import FuncAnimation

class BSTNode:
    def __init__(self, val=None):
        self.left = None
        self.right = None
        self.val = val
pub = rospy.Publisher('/revised_scan', LaserScan, queue_size = 10)
scann = LaserScan()
grid = np.zeros((9, 9)) #instead do a 1D array with each cell holding a tree with the head being the x coordinate and then the two branches being how much of the cell is taken and the y coordinate
colors = ['#008000', '#ff0000']  # Replace with your desired colors
cmap = ListedColormap(colors)
centerX = 4.0
centerY = 4.0
upbound = 8.0
lobound = 1.0
flagX = np.zeros(100)
flagY = np.zeros(100)




def callback(msg):
    #print(len(msg.ranges)) len is 2019 from 0-360
    # time.sleep(1)
    current_time = rospy.Time.now()
    scann.header.stamp = current_time
    scann.header.frame_id = 'laser'
    scann.angle_min = -3.1415
    scann.angle_max = 3.1415
    scann.angle_increment = 0.00311202858575
    scann.time_increment = 4.99999987369e-05
    scann.range_min = 0.00999999977648
    scann.range_max = 32.0
    scann.ranges = msg.ranges
    # print("Ranges: ")
    # print(len(msg.ranges))
    scann.intensities = msg.intensities
    # print(scann)
    pub.publish(scann)
    import lidar_to_grid_map as lg

    angles = [0.0] * 360
    angles[0] = scann.angle_min
    LiDAR_Ranges = list(msg.ranges).copy()
    for i in range(359):
        angles[i] = i * math.pi / 180


        # Convert polar coordinates to Cartesian coordinates
    for i in range(len(LiDAR_Ranges)):
        if LiDAR_Ranges[i] == np.inf:
            LiDAR_Ranges[i] = 10000
    # print(LiDAR_Ranges)
    # print(angles)
    x = [r * np.cos(angle) for r, angle in zip(LiDAR_Ranges, angles)]
    y = [r * np.sin(angle) for r, angle in zip(LiDAR_Ranges, angles)]
    grid = np.zeros((9, 9))
    for i in range(360):
        if (abs(x[i])<100 and abs(y[i])<100 ):
            # print("fun")
            # print(i)
            # print(angles[i])
            # print(LiDAR_Ranges[i])
            roundX = round(x[i])

            

            roundY = round(y[i])
            newX = int(roundX+centerX)
            newY = int(roundY+centerY)
            # print("X")
            # print(x[i])
            # print(newX)
            # print("Y")
            # print(y[i])
            # print(newY)

            if newX > 0 and newX<9 and newY > 0 and newY <9:
                grid[newX, newY] = 1

    #initialize gridmap
    # for i in range(360):
    #     if round(x[i]) < centerX > lobound:
    #         newX = centerX + round(x[i])
    #     elif round(x[i]) >= centerX <= upbound:
    #         newX = round(x[i]) - centerX
    #     elif round(x[i]) > upbound:
    #         newX = upbound + 1
    #         flagX[i] = newX
    #     elif round(x[i]) < lobound:
    #         newX = lobound - 1
    #         flagX[i] = newX
    #     if round(y[i]) < centerY > lobound:
    #         newY = centerY + round(y[i])
    #     elif round(y[i]) >= centerY <= upbound:
    #         newY = round(y[i]) - centerY
    #     elif round(y[i]) > upbound:
    #         newY = upbound + 1
    #         flagY[i] = newY
    #     elif round(y[i]) < lobound:
    #         newY = lobound - 1
    #         flagY[i] = newY
    #     print(newX)
    #     print(newY)
    #     grid[int(newX),int(newY)] = 1.0
    #     if flagX[i] != 0: 
    #         if flagY[i] != 0:
    #             grid[int(flagX[i]). int(flagY[i])] = 2.0
    
    print(np.matrix(grid))
    plt.rcParams["figure.figsize"] = [6.00, 6.00]
    plt.rcParams["figure.autolayout"] = True
    plt.grid(color='gray', linestyle='--', linewidth=0.5)
    im = plt.imshow(grid, cmap="binary", origin='lower')
    plt.colorbar(im)
    plt.savefig("plottest.png")
    plt.clf()

    # grid = np.zeros((9, 9))
    # Plotting
    # plt.figure(figsize=(6, 6))
    # # plt.scatter(x, y)
    # plt.axhline(0, color='black',linewidth=0.5)
    # plt.axvline(0, color='black',linewidth=0.5)
    # plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
    # plt.xlabel('X')
    # plt.ylabel('Y')
    # plt.title('Plot of Points in Polar Coordinates')
    # plt.axis('equal')  # Equal aspect ratio ensures that the plot is circular
    # # plt.show()

    # # plt.figure(figsize=(6, 6))
    # plt.imshow(grid, cmap='binary', origin='upper', extent=(-20, 20, -10, 20))

    # # Customize the grid
    # plt.grid(color='gray', linestyle='--', linewidth=0.5)

    # # Customize the labels and title
    # plt.xlabel('X')
    # plt.ylabel('Y')
    # plt.title('Grid Map')



    # plt.show()

    # plt.ion()

    # fig = plt.figure() 
    # ax = fig.add_subplot(111)

    





    # for j in range(i):
    #     # while(1):
    #     print(angles[j])
    #     if ranger_rick[j] > 32.0:
    #         ranger_rick[j] = 1000
    #     print(ranger_rick[j])
    #     oy = sin(angles[j]) * ranger_rick[j]
    #     ox = cos(angles[j]) * ranger_rick[j]
    #     # (0,0),(ox, oy)
    #     map1 = np.ones((50, 50)) * 0.5
    #     line = lg.bresenham((2, 2), (40, 30))
    #     for l in line:
    #         map1[l[0]][l[1]] = 1
    #     pmap = lg.generate_ray_casting_grid_map(ox, oy, xyreso, False)
    #     flood_fill((0,0), pmap)
    #     xyres = np.array(pmap).shape
        # plt.plot([oy, np.zeros(np.size(oy))], [ox, np.zeros(np.size(oy))], "ro-")# lines from 0,0 to the
        # plt.figure(figsize=(20,8))
        # print("showing")
        # plt.show()
        # plt.subplot(122)
        # plt.imshow(pmap, cmap = "PiYG_r")
        # plt.clim(-0.4, 1.4)
        # plt.gca().set_xticks(np.arange(-.5, xyres[1], 1), minor = True)
        # plt.gca().set_yticks(np.arange(-.5, xyres[0], 1), minor = True)
        # plt.grid(True, which="minor", color="w", linewidth = .6, alpha = 0.5)
        # plt.colorbar()
        # plt.show()
        
    #     plt.axis("equal")
    #     bottom, top = plt.ylim()  # return the current ylim
    #     plt.ylim((top, bottom)) # rescale y axis, to match the grid orientation
    #     plt.grid(True)
    #     plt.show()
    

def listener():
    
    rospy.init_node('revised_scan', anonymous=True)
    sub = rospy.Subscriber('/scan', LaserScan, callback)

    rospy.spin()



def main():
    # import time
    # plt.plot([1,2],[3,4])
    # print("here")
    # plt.savefig("hiaidan.png")
    # plt.show()
    # time.sleep(10)
    pass
    
    

if __name__ == '__main__':
   
    main()
    listener()
    plt.show()



   
    
    # pmap, minx, maxx, miny, maxy, xyreso = lg.generate_ray_casting_grid_map(ox, oy, xyreso, False)
    
        
    # ang, dist = angles, scann.ranges
    # ox = np.sin(ang) * dist
    # oy = np.cos(ang) * dist
    # plt.figure(figsize=(6,10))
    
    
    # map1 = np.ones((50, 50)) * 0.5
    # line = lg.bresenham((2, 2), (40, 30))
    # for l in line:
    #     map1[l[0]][l[1]] = 1
    # plt.imshow(map1)
    # plt.colorbar()
    # plt.show()
    # line = lg.bresenham((2, 30), (40, 30))
    # for l in line:
    #     map1[l[0]][l[1]] = 1
    # line = lg.bresenham((2, 30), (2, 2))
    # for l in line:
    #     map1[l[0]][l[1]] = 1
    # plt.imshow(map1)
    # plt.colorbar()
    # plt.show()

    # flood_fill((10, 20), map1)
    # map_float = np.array(map1)/10.0
    # plt.imshow(map1)
    # plt.colorbar()
    # plt.show()

   
# import numpy as np
# import pygame
# import ctypes
# import rospy
# import math
# from math import cos, sin, radians, pi
# import matplotlib.pyplot as plt
# import lidar_to_grid_map as lg
# from collections import deque
# from sensor_msgs.msg import LaserScan

# #SlAM algorithm
# #def talker():
#     #pub = rospy.Publisher()
#     #rospy.init_node('talker', anonymous = True)
#     #rate = rospy.Rate(10)
#     #while not rospy.is_shutdown();

# def reader(self, f):
#     self.lidar = rospy.Subscriber("notspot_imu/base_link_orientation", LiDAR, self.liDar_Detection)
#     measurement = [line.split(",") for line in open(f)]       
#     angles = []
#     distances = []
#     for measure in measurement:
#         angles = []
#         distances = []
#         for measure in measurement:
#             angles.append(float(measure[0]))
#             distances.append(float(measure[0]))
#         angles = np.array(angles)
#         distances = np.array(distances)
#         return angles, distances
    
# class cells:
#     row, column = 400, 400
#     position = [[0 for  x in range(cells.row)] for y in range(column)]

#     def fillGrid():
#         for i in range(cells.row):
#             for j in range (cells.column):
#                 cell_value = cells.position[i, j]
#                 if cell_value == 1:
#                     pygame.draw.rect(map._VARS['surf'], map.GREEN, (18, 18, 60, 60))#where the robot has been
#                 elif cell_value == 2:
#                     pygame.draw.rect(map._VARS['surf'], map.RED, (18, 18, 60, 60))#obstacle
#                 elif cell_value == 3:
#                     pygame.draw.rect(map._VARS['surf'], map.BLUE, (18, 18, 60, 60))#planned path
#                 elif cell_value == 0:
#                     pygame.draw.rect(map._VARS['surf'], map.BLACK, (18, 18, 60, 60))#nothing
             
#                 #pygame.draw.rect(screen, cell_color, (x * CELL_SIZE, y * CELL_SIZE, CELL_SIZE, CELL_SIZE))


# class map:
#     #public:
#         #constants
#         CELLSIZE = 40
#         WIDTH = cells.column * CELLSIZE
#         HEIGHT = cells.row * CELLSIZE
#         GRIDSIZE = WIDTH, HEIGHT
#         BlACK = (0, 0, 0)
#         GRAY = (160, 160, 160)
#         WHITE = (255, 255, 255)
#         GREEN = (0, 255, 0)
#         RED = (255, 0, 0)
#         BLUE = (0, 0, 255)
#         PADDING = TOPBOTPAD, LEFTRIGHTPAD = 40, 40
#         #VARS
#         _VARS = {'surf': False}
#     #private:
#         def drawGrid(divisions):
#             #Container parameters
#             CONTAINER_WIDTH_HEIGHT = 300
#             cont_x, cont_y = 10, 10
#             #making the bounds
#             #Top left to top right line/bound
#             pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD), (map.WIDTH - map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD), 2) 
#             #Bottom left to bottom right line/bound
#             pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD, map.HEIGHT - map.TOPBOTPAD), (map.WIDTH - map.LEFTRIGHTPAD, map.HEIGHT - map.TOPBOTPAD), 2)
#             #Top left to bottom left line/bound
#             pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD), (0 + map.TOPBOTPAD, map.HEIGHT - map.TOPBOTPAD), 2)
#             #Top right top bottom right line/bound
#             pygame.draw.line(map._VARS['surf'], map.BLACK, (map.WIDTH - map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD), (map.WIDTH - map.LEFTRIGHTPAD, map.HEIGHT - map.TOPBOTPAD), 2)
            
#             #Cell sizes
#             cell_size_horiz = (map.WIDTH - (2*map.LEFTRIGHTPAD))/divisions
#             cell_size_vert = (map.HEIGHT - (2*map.TOPBOTPAD))/divisions

#             #Vertical divisions
#             for i in range(divisions):
#                  pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD + (i * cell_size_horiz), 0 + map.TOPBOTPAD), (0 + map.LEFTRIGHTPAD + (i * cell_size_horiz, map.HEIGHT - map.TOPBOTPAD)), 2)
            
#             #Horizontal Divisions
#             for j in range(divisions):
#                  pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD + (j * cell_size_vert)), (map.WIDTH - map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD + (j * cell_size_vert)), 2)
        
#             screen = pygame.display.set_mode((map.WIDTH, map.HEIGHT))
#             pygame.display.set_caption("Gridmap Visualization")

#         def eventChecker():
#              #for event in pygame.event.get():
#                   #if event.type == pygame.QUIT:
#                        #sys.exit()
#                   #elif event.type == KEYDOWN and event.jey == k_q:
#                        #pygame.quit()
#                        #sys.exit() 
#             running = True
#             while running:
#                 for event in pygame.event.get():
#                     if event.type == pygame.QUIT:
#                         running = False

#                 # Clear the screen
#                 map.screen.fill(map.WHITE)

#                 # Draw the gridmap
#                 cells.fillGrid()

#                 # Update the display
#                 pygame.display.update()

#                 # Quit pygame properly when the loop exits
#                 pygame.quit()

# def flood_fill(cpoint, pmap):
#     """
#     cpoint: starting point (x,y) of fill
#     pmap: occupancy map generated from Bresenham ray-tracing
#     """
#     # Fill empty areas with queue method
#     sx, sy = pmap.shape
#     fringe = deque()
#     fringe.appendleft(cpoint)
#     while fringe:
#         n = fringe.pop()
#         nx, ny = n
#         # West
#         if nx > 0:
#             if pmap[nx - 1, ny] == 0.5:
#                 pmap[nx - 1, ny] = 0.0
#                 fringe.appendleft((nx - 1, ny))
#         # East
#         if nx < sx - 1:
#             if pmap[nx + 1, ny] == 0.5:
#                 pmap[nx + 1, ny] = 0.0
#                 fringe.appendleft((nx + 1, ny))
#         # North
#         if ny > 0:
#             if pmap[nx, ny - 1] == 0.5:
#                 pmap[nx, ny - 1] = 0.0
#                 fringe.appendleft((nx, ny - 1))
#         # South
#         if ny < sy - 1:
#             if pmap[nx, ny + 1] == 0.5:
#                 pmap[nx, ny + 1] = 0.0
#                 fringe.appendleft((nx, ny + 1))

# def lidar_callback(msg):
#     # Process the LiDAR data here
#     # For example, you can access the LiDAR data using 'msg.ranges'
#     pass
        


# class pacrr:
#     def init(self, world_size = 100.0, min_sensing_range = 0.3, max_sensing_range = 12, motion_noise = 1.0, sensor_noise = 1.0):
#          self.sensor_noise = 0.0
#          self.world_size = world_size
#          self.min_sensing_range = min_sensing_range
#          self.max_sensing_range = max_sensing_range
#          self.x = world_size / 2.0
#          self.y = world_size / 2.0
#          self.motion_noise = motion_noise
#          #se

# #tracking

# #depth map estimation

# #map optimization

# def main():
#     rospy.init_node('lidar_subscriber_node', anonymous=True)
    
#     # Create a subscriber to the LiDAR topic
#     rospy.Subscriber('lidar_topic', LaserScan, lidar_callback)

#     # Keep the node running until Ctrl+C is pressed
#     rospy.spin()
#     for i in range(cells.row):
#         for j in range(cells.column):
#             cells.position[i][j] = 0 #initalizes grid to zero
#     cells.position[cells.row/2][cells.column/2] = 1 #initializes robot to be in center of grid
#     pygame.init()
#     map._VARS['surf'] = pygame.display.set_mode(map.GRIDSIZE)
#     ang, dist = reader("lidar01.csv")
#     ox = np.sin(ang) * dist
#     oy = np.cos(ang) * dist
#     plt.figure(figsize=(6,10))
#     plt.plot([oy, np.zeros(np.size(oy))], [ox, np.zeros(np.size(oy))], "ro-") # lines from 0,0 to the
#     plt.axis("equal")
#     bottom, top = plt.ylim()  # return the current ylim
#     plt.ylim((top, bottom)) # rescale y axis, to match the grid orientation
#     plt.grid(True)
#     plt.show()
#     map1 = np.ones((50, 50)) * 0.5
#     line = lg.bresenham((2, 2), (40, 30))
#     for l in line:
#         map1[l[0]][l[1]] = 1
#     plt.imshow(map1)
#     plt.colorbar()
#     plt.show()
#     line = lg.bresenham((2, 30), (40, 30))
#     for l in line:
#         map1[l[0]][l[1]] = 1
#     line = lg.bresenham((2, 30), (2, 2))
#     for l in line:
#         map1[l[0]][l[1]] = 1
#     plt.imshow(map1)
#     plt.colorbar()
#     plt.show()
#     flood_fill((10, 20), map1)
#     map_float = np.array(map1)/10.0
#     plt.imshow(map1)
#     plt.colorbar()
#     plt.show()
#     xyreso = 0.02  # x-y grid resolution
#     yawreso = math.radians(3.1)  # yaw angle resolution [rad]
#     ang, dist = reader("lidar01.csv")
#     ox = np.sin(ang) * dist
#     oy = np.cos(ang) * dist
#     pmap, minx, maxx, miny, maxy, xyreso = lg.generate_ray_casting_grid_map(ox, oy, xyreso, False)
#     xyres = np.array(pmap).shape
#     plt.figure(figsize=(20,8))
#     plt.subplot(122)
#     plt.imshow(pmap, cmap = "PiYG_r")
#     plt.clim(-0.4, 1.4)
#     plt.gca().set_xticks(np.arange(-.5, xyres[1], 1), minor = True)
#     plt.gca().set_yticks(np.arange(-.5, xyres[0], 1), minor = True)
#     plt.grid(True, which="minor", color="w", linewidth = .6, alpha = 0.5)
#     plt.colorbar()
#     plt.show()
#     #NEED TO FINISH THIS PART
    