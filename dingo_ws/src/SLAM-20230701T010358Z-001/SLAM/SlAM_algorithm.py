import numpy as np
import pygame
import ctypes
import rospy

#SlAM algorithm
#def talker():
    #pub = rospy.Publisher()
    #rospy.init_node('talker', anonymous = True)
    #rate = rospy.Rate(10)
    #while not rospy.is_shutdown();
        

class cells:
    row, column = 400, 400
    position = [[0 for  x in range(row)] for y in range(column)]

    def fillGrid():
        for i in range(cells.row):
            for j in range (cells.column):
                cell_value = cells.position[i, j]
                if cell_value == 1:
                    pygame.draw.rect(map._VARS['surf'], map.GREEN, (18, 18, 60, 60))#where the robot has been
                elif cell_value == 2:
                    pygame.draw.rect(map._VARS['surf'], map.RED, (18, 18, 60, 60))#obstacle
                elif cell_value == 3:
                    pygame.draw.rect(map._VARS['surf'], map.BLUE, (18, 18, 60, 60))#planned path
                elif cell_value == 0:
                    pygame.draw.rect(map._VARS['surf'], map.BLACK, (18, 18, 60, 60))#nothing
             
                #pygame.draw.rect(screen, cell_color, (x * CELL_SIZE, y * CELL_SIZE, CELL_SIZE, CELL_SIZE))


class map:
    #public:
        #constants
        CELLSIZE = 40
        WIDTH = cells.column * CELLSIZE
        HEIGHT = cells.row * CELLSIZE
        GRIDSIZE = WIDTH, HEIGHT
        BlACK = (0, 0, 0)
        GRAY = (160, 160, 160)
        WHITE = (255, 255, 255)
        GREEN = (0, 255, 0)
        RED = (255, 0, 0)
        BLUE = (0, 0, 255)
        PADDING = TOPBOTPAD, LEFTRIGHTPAD = 40, 40
        #VARS
        _VARS = {'surf': False}
    #private:
        def drawGrid(divisions):
            #Container parameters
            CONTAINER_WIDTH_HEIGHT = 300
            cont_x, cont_y = 10, 10
            #making the bounds
            #Top left to top right line/bound
            pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD), (map.WIDTH - map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD), 2) 
            #Bottom left to bottom right line/bound
            pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD, map.HEIGHT - map.TOPBOTPAD), (map.WIDTH - map.LEFTRIGHTPAD, map.HEIGHT - map.TOPBOTPAD), 2)
            #Top left to bottom left line/bound
            pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD), (0 + map.TOPBOTPAD, map.HEIGHT - map.TOPBOTPAD), 2)
            #Top right top bottom right line/bound
            pygame.draw.line(map._VARS['surf'], map.BLACK, (map.WIDTH - map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD), (map.WIDTH - map.LEFTRIGHTPAD, map.HEIGHT - map.TOPBOTPAD), 2)
            
            #Cell sizes
            cell_size_horiz = (map.WIDTH - (2*map.LEFTRIGHTPAD))/divisions
            cell_size_vert = (map.HEIGHT - (2*map.TOPBOTPAD))/divisions

            #Vertical divisions
            for i in range(divisions):
                 pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD + (i * cell_size_horiz), 0 + map.TOPBOTPAD), (0 + map.LEFTRIGHTPAD + (i * cell_size_horiz, map.HEIGHT - map.TOPBOTPAD)), 2)
            
            #Horizontal Divisions
            for j in range(divisions):
                 pygame.draw.line(map._VARS['surf'], map.BLACK, (0 + map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD + (j * cell_size_vert)), (map.WIDTH - map.LEFTRIGHTPAD, 0 + map.TOPBOTPAD + (j * cell_size_vert)), 2)
        
            screen = pygame.display.set_mode((map.WIDTH, map.HEIGHT))
            pygame.display.set_caption("Gridmap Visualization")

        def eventChecker():
             #for event in pygame.event.get():
                  #if event.type == pygame.QUIT:
                       #sys.exit()
                  #elif event.type == KEYDOWN and event.jey == k_q:
                       #pygame.quit()
                       #sys.exit() 
            running = True
            while running:
                for event in pygame.event.get():
                    if event.type == pygame.QUIT:
                        running = False

                # Clear the screen
                map.screen.fill(map.WHITE)

                # Draw the gridmap
                fillGrid()

                # Update the display
                pygame.display.update()

                # Quit pygame properly when the loop exits
                pygame.quit()
  
        


class pacrr:
    def init(self, world_size = 100.0, min_sensing_range = 0.3, max_sensing_range = 12, motion_noise = 1.0, sensor_noise = 1.0):
         self.sensor_noise = 0.0
         self.world_size = world_size
         self.min_sensing_range = min_sensing_range
         self.max_sensing_range = max_sensing_range
         self.x = world_size / 2.0
         self.y = world_size / 2.0
         self.motion_noise = motion_noise
         #se

#tracking

#depth map estimation

#map optimization

def main():
    for i in range(cells.row):
        for j in range(cells.column):
            cells.position[i][j] = 0 #initalizes grid to zero
    cells.position[cells.row/2][cells.column/2] = 1 #initializes robot to be in center of grid
    pygame.init()
    map._VARS['surf'] = pygame.display.set_mode(map.GRIDSIZE)
   
    

    #NEED TO FINISH THIS PART
    