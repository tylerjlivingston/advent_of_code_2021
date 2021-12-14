"""
Tyler Livingston
December 13, 2021
Advent of Code: Day 1
https://adventofcode.com/2021/day/1
"""
import os
import pandas as pd

def get_measurement_data():
    """Used to get the measurement data from csv."""
    file = 'measurements'
    project_location = os.path.dirname(
        __file__)  # Current location of the project.
    return pd.read_csv(os.path.join(project_location, (file + ".csv")))

increased_counter = 0 # Counter for increases.
depth_temp = 263 # Value to start at.

for depth in get_measurement_data()["measurement"]:
    """Loop through the depths."""
    # print("Current Depth:",depth)
    if depth > depth_temp:
        # Current depth higher than previous depth.
        increased_counter += 1 # Update the counter.
        # print(f"{depth} (increased)")
    depth_temp = depth # Update the depth temp.

print(f"Found: {increased_counter}")
