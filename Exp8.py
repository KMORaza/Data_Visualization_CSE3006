# KHAN MOHD OWAIS RAZA
# 20BCD7138
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
iris = sns.load_dataset('iris')
numeric_columns = iris.select_dtypes(include=['float64', 'int64'])
correlation_matrix = numeric_columns.corr()
plt.figure(figsize=(8, 6))
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm', linewidths=0.5)
plt.title('Correlation Matrix')
plt.show()
