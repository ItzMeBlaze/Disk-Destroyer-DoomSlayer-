# Prepare special characters for writing and printing
str = "!" * 128  # 128 special characters
filename = "@" * 16 + ".txt"  # 16 special characters in filename
message = "#" * 246810121416182022242628  # 256 special characters for the print statement

# Write to file as fast as possible
with open(filename, "a") as file:
    for _ in range(1000000):  # High iteration count for speed
        file.write(str)

# Print the message immediately after writing
print(message)
