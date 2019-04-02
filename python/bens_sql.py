#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Mar 27 15:57:40 2019

@author: benduffey
"""

import pandas as pd

def names(df):       
    look=pd.DataFrame(df.columns) 
    look.columns = ['Names']
    look = look.sort_values(['Names'])
    return(look)