#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


# In[2]:


X = pd.read_csv("C:/Users/Hp/Downloads/Training Data (1) final/Linear_X_Train.csv")
y = pd.read_csv("C:/Users/Hp/Downloads/Training Data (1) final/Linear_Y_Train.csv")


# In[3]:


X_data = X.values
y_data = y.values


# In[4]:


X_data


# In[5]:


y_data


# In[6]:


X_data.shape


# In[7]:


y_data.shape


# In[8]:


#NORMALIZATION
u = X_data.mean()
std = X_data.std()
X_data = (X_data-u)/std


# In[9]:


X_data


# <h2> VISUALISATION

# In[10]:


#plt.style.use('seaborn')
plt.scatter(X_data, y_data)
plt.title("Hardwork pays off")
plt.xlabel("Preparation time")
plt.ylabel("Performance score")
plt.show


# <h2> LINEAR REGRESSION

# In[11]:


X = X_data


# In[12]:


y = y_data


# In[13]:


X


# In[14]:


y


# In[15]:


def hypothesis(x,theta):
    y_ = theta[0] + theta[1]*x
    return y_


# In[16]:


def gradient(X, y, theta):
    grad = np.zeros((2,))
    for i in range(X.shape[0]):
        m = y[i].item()  
        n = X[i].item()  
        y_ = hypothesis(n, theta)
        grad[0] += (y_ - m)
        grad[1] += (y_ - m) * n
    return grad / X.shape[0]



# In[17]:


def error(X,Y,theta):
    total_error = 0;
    for i in range (X.shape[0]):
        y_ = hypothesis(X[i], theta)
        total_error += (y_ - y[i])**2
    return total_error/X.shape[0]


# In[21]:


def grad_descent (X,y,max_steps = 100, learning_rate = 0.1):
    theta = np.zeros((2,))
    error_list = []
    theta_list =[]

    for i in range (max_steps):
        grad = gradient(X_data,y_data,theta)
        e = error(X_data,y_data,theta)[0]


        theta[0] = theta[0] - learning_rate*grad[0]
        theta[1] = theta[1] - learning_rate*grad[1]

        theta_list.append((theta[0], theta[1]))
        error_list.append(e)

    return theta,error_list,theta_list


# In[22]:


theta,error_list,theta_list = grad_descent(X_data,y_data)


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




