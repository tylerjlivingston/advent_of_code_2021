"""
Tyler Livingston
December 9, 2021
Advent of Code: Day 1
https://adventofcode.com/2021/day/1
"""

depths = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263] # Depths

depth_temp = depths[0] # Set the depth temp to the first depth.

for depth in depths:
    # print("Current Depth:",depth)
    if depth > depth_temp:
        print(f"{depth} (increased)")
    elif depth < depth_temp:
        print(f"{depth} (decreased)")
    else:
       print(f"{depth} (no change)") 
    depth_temp = depth # Update the depth temp.
