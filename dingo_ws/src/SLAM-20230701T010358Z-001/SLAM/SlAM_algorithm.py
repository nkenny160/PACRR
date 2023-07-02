import numpy
import pygame
import ctypes

#SlAM algorithm


class map:
    #public:
        #constants
        GRIDSIZE = WIDTH, HEIGHT = 400, 400
        BlACK = (0, 0, 0)
        GRAY = (160, 160, 160)
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

        def eventChecker():
             for event in pygame.event.get():
                  if event.type == pygame.QUIT:
                       sys.exit()
                  elif event.type == KEYDOWN and event.jey == k_q:
                       pygame.quit()
                       sys.exit()   
        def fillGrid():
             
             pygame.draw.rect(map._VARS['surf'], map.RED, (18, 18, 60, 60))
             

class cells:
    row, column = 400, 400
    position = [[0 for  x in range(row)] for y in range(column)]

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
            position[i][j] = 0 #initalizes grid to zero
    cells.position[row/2][column/2] = 1 #initializes robot to be in center of grid
    pygame.init()
    map._VARS['surf'] = pygame.display.set_mode(map.GRIDSIZE)
   
    

    #NEED TO FINISH THIS PART
    