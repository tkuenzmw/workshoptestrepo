import numpy as np
import sys

matrix = np.random.randint(1, 101, size=(int(N), int(N)))
mean_value = np.mean(matrix)

print(f"Generated {int(N)}x{int(N)} Matrix:")
print(matrix)
print(f"Mean of all elements: {mean_value}")


