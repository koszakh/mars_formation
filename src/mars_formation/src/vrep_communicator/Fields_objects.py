from numpy import array
from math import degrees, sqrt, acos
from matplotlib.path import Path
from copy import deepcopy

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __str__(self):
        return str(self.x) + " " + str(self.y)

    def __repr__(self):
        return str(self.x) + " " + str(self.y)

    def __call__(self, type_of=int):
        return type_of(self.x), type_of(self.y)

    def set_x(self, x):
        self.x = x

    def set_y(self, y):
        self.y = y

    def set_xy(self, x, y):
        self.x = x
        self.y = y

    def get_distance_to(self, point):
        return sqrt((point.x - self.x) ** 2 + (point.y - self.y) ** 2)

    def remap_to_ompl_coord_system(self):
        ompl_x = self.x * (HIGH_BOUNDS - LOW_BOUNDS) / IMAGE_SIZE + LOW_BOUNDS
        ompl_y = self.y * (HIGH_BOUNDS - LOW_BOUNDS) / IMAGE_SIZE + LOW_BOUNDS
        return Point(ompl_x, ompl_y)

    def remap_to_img_coord_system(self):
        img_x = int((self.x + HIGH_BOUNDS) * IMAGE_SIZE / (HIGH_BOUNDS - LOW_BOUNDS))
        img_y = int((self.y + HIGH_BOUNDS) * IMAGE_SIZE / (HIGH_BOUNDS - LOW_BOUNDS))
        return Point(img_x, img_y)



