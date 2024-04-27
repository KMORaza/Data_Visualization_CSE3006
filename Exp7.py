import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.datasets import load_iris
from sklearn.cluster import KMeans
from sklearn.preprocessing import StandardScaler
iris = load_iris()
iris_data = pd.DataFrame(data=iris.data, columns=iris.feature_names)
scaler = StandardScaler()
scaled_iris = scaler.fit_transform(iris_data)
k = 3  
kmeans_model = KMeans(n_clusters=k, random_state=123)
kmeans_model.fit(scaled_iris)
iris_data['cluster'] = kmeans_model.labels_
plt.figure(figsize=(8, 6))
plt.scatter(iris_data['petal length (cm)'], iris_data['petal width (cm)'],
            c=iris_data['cluster'], cmap='viridis', edgecolor='k', s=50)
plt.title('Clustering of Iris Dataset (Petal Length vs. Petal Width)')
plt.xlabel('Petal Length (cm)')
plt.ylabel('Petal Width (cm)')
plt.show()
