import matplotlib.pyplot as plt
from scipy.cluster.hierarchy import dendrogram, linkage
import numpy as np
def plot_dendrogram(string):
    char_count = {}
    for char in string:
        if char in char_count:
            char_count[char] += 1
        else:
            char_count[char] = 1
    counts = np.array(list(char_count.values())).reshape(-1, 1)
    labels = list(char_count.keys())
    linked = linkage(counts, 'single')
    plt.figure(figsize=(10, 5))
    dendrogram(linked,
               orientation='top',
               labels=labels,
               distance_sort='descending',
               show_leaf_counts=True)
    plt.title('Dendrogram of Character Distribution')
    plt.xlabel('Character')
    plt.ylabel('Distance')
    plt.show()
input_string = "data visualization"
plot_dendrogram(input_string)
