"""
Tyler Livingston
December 9, 2021
Advent of Code: Day 1
https://adventofcode.com/2021/day/1
"""

depths = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263] # Depths

depth_temp = depths[0] # Set the depth temp to the first depth.
increased_counter = 0
decreased_counter = 0
no_change_counter = 0

for depth in depths:
    """Loop through the depths."""
    # print("Current Depth:",depth)
    if depth > depth_temp:
        increased_counter += 1
        print(f"{depth} (increased)")
    elif depth < depth_temp:
        decreased_counter += 1
        print(f"{depth} (decreased)")
    else: # depth == depth_temp
       no_change_counter += 1
       print(f"{depth} (no change)") 
    depth_temp = depth # Update the depth temp.

print() # Used for formatting
print(f"{increased_counter} Increase(s)")
print(f"{decreased_counter} Decrease(s)")
print(f"{no_change_counter} No Change(s)")
