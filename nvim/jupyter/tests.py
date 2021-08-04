##
print("this is a cell")
##

##
#This is a header
print("this is a nigger")
##


##

#This is some code for something markov something i guess idk
import numpy as np
import pandas as pd
import matplotlib.pyplot
import networkx as nx
from networkx import read_edgelist
import random

lazega = read_edgelist('lazega-friends.edges', nodetype=int) 
node_atts = pd.read_csv("lazega-attributes.txt", sep=' ')
display(node_atts)
##

##
#More nigger?
##

## 
for i in range(node_atts.shape[0]):
    lazega.add_node(node_atts.loc[i,'nodeID'], gender=node_atts.loc[i,'nodeGender'])
    lazega.add_node(node_atts.loc[i,'nodeID'], office=node_atts.loc[i,'nodeOffice'])
    lazega.add_node(node_atts.loc[i,'nodeID'], true_practice=node_atts.loc[i,'nodePractice'])
    if random.random() > 0.4:
        lazega.add_node(node_atts.loc[i,'nodeID'], observed_practice=node_atts.loc[i,'nodePractice'])
    else:
        lazega.add_node(node_atts.loc[i,'nodeID'], observed_practice=np.nan)
##


##
random.seed(5)
for i in range(node_atts.shape[0]):
    if random.random() > 0.4:
        lazega.add_node(node_atts.loc[i,'nodeID'], observed_practice=node_atts.loc[i,'nodePractice'])
    else:
        lazega.add_node(node_atts.loc[i,'nodeID'], observed_practice=np.nan)
##

##
#NIgger nigger 
##

## 

def get_att_array(G,att_name):
    ret_array=np.zeros(nx.number_of_nodes(G))
    for i,n in enumerate(G.nodes()):
        ret_array[i]=G.nodes[n][att_name]
    return(ret_array)

# Example: the gender attribute:
print(get_att_array(lazega,'gender'))

##

## 
# The final nigger
##

##
nx.draw_kamada_kawai(lazega,with_labels=True,node_color=get_att_array(lazega,'observed_practice'))
##
