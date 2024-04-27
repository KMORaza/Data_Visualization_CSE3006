import matplotlib.pyplot as plt
def character_distribution(string):
    char_count = {}
    for char in string:
        if char.isalpha():
            char_count[char] = char_count.get(char, 0) + 1
    return char_count
def plot_histogram(string):
    char_count = character_distribution(string)
    chars = list(char_count.keys())
    counts = list(char_count.values())
    plt.bar(chars, counts)
    plt.xlabel('Characters')
    plt.ylabel('Frequency')
    plt.title('Character Distribution')
    plt.show()
first_name = "FirstName"
second_name = "SecondName"
last_name = "LastName"
plot_histogram(first_name)
plot_histogram(second_name)
plot_histogram(last_name)
