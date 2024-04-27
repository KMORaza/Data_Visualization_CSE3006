import seaborn as sns
import pandas as pd
import matplotlib.pyplot as plt
iris = sns.load_dataset('iris')
sns.pairplot(iris)
sns.pairplot(iris, hue='species')
plt.show()
