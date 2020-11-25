from IPython.core.interactiveshell import InteractiveShell
InteractiveShell.ast_node_interactivity = "all"
 
import numpy as np, pandas as pd, matplotlib.pyplot as plt, seaborn as sns
%matplotlib inline
from scipy import stats
from datetime import datetime, date
import calendar
 
from google.colab import auth
auth.authenticate_user()
print('Authenticated')

#
# Run SQL Here
#

df2020 = df.copy(deep = True)
df2020 = df2020.loc[df2020['Year'] == 2020]

def startOfMonth(pos, name):
  _ = 1700
  plt.vlines(x=pos, ymin=0, ymax=_, colors='grey', linestyles='dashed')
  plt.text(pos, _+125, name, fontsize=12, va='top', horizontalalignment='center')
  plt.vlines(x=pos, ymin=_+200, ymax=_*2, colors='grey', linestyles='dashed')
  
_ = 12/2+0.5
height = max(df['NotArrested'])-250

# print(primary)
# print(secondary)

f, ax = plt.subplots(1, 1, figsize=(15,15))
ax.set_facecolor('xkcd:purple')

for month_idx in range(1, 13):
    m = calendar.month_abbr[month_idx]
    startOfMonth(month_idx, m)

year = currentDate['Year'][0]
month = currentDate['Month'][0]
day = currentDate['Day'][0]

##### Graph One #####
# Title
plt.text(_, height, 'Chicago Police-Involved Domestic Abuse Calls and Arrests:',
         horizontalalignment='center', fontsize=15, color='white', fontweight='bold')
plt.text(x=8.5, y=height-100, s='Pre-Covid', horizontalalignment='left',
         fontsize=15, color='black', fontweight='bold')
plt.text(x=9.75, y=height-100, s='vs', horizontalalignment='left',
         fontsize=15, color='white', fontweight='bold')
plt.text(x=10.1, y=height-100, s='2020', horizontalalignment='left',
         fontsize=15, color='red', fontweight='bold')

#source
url = 'bigquery-public-data.chicago_crime.crime'
plt.text(x=1, y=-100, s=f'Source: Google BigQuery - {url}', fontsize=12,
         color='black')

plt.text(x=12, y=-100, s=f'Data is current as of: {year}-{month}-{day}', fontsize=12,
         color='black', horizontalalignment='right')

plt.xlabel('Month')
plt.ylabel('Cases where Chicago Police got Involved')

# Plot
plt.text(_, 3000, 'No Arrests', horizontalalignment = 'center', fontsize=12, color='white')
plt.text(_, 1000, 'Arrests', horizontalalignment = 'center', fontsize=12, color='white')
sns.lineplot(x=df2020['Month'], y=df2020['NotArrested'], marker='', color='red', linewidth=5);
sns.lineplot(x=df['Month'], y=df['NotArrested'], marker='', color='k');
sns.lineplot(x=df2020['Month'], y=df2020['Arrested'], marker='', color='red', linewidth=5);
sns.lineplot(x=df['Month'], y=df['Arrested'], marker='', color='k');

plt.legend(labels=['2020', '2011-2019']);


##### Graph Two #####
f, ax = plt.subplots(1, 1, figsize=(10,10))
ax.set_facecolor('xkcd:purple')

size = 17

ax.xaxis.set_visible(False)
ax.yaxis.set_visible(False)

ax.text(0.25, 0.9, 'Top Domestic Abuse Types', fontsize=20, color='white', fontweight='bold', horizontalalignment='left')
ax.text(0.25, 0.85, 'in Chicago 2020', fontsize=20, color='white', fontweight='bold', horizontalalignment='left')

num = primary['Count'][0]
ax.text(0.3, 0.7, f'{num}', fontsize=size, color='white', horizontalalignment='right')
_ = primary['primary_type'][0].title()
ax.text(0.5, 0.7, f'{_}', fontsize=size, color='white', horizontalalignment='left')
_ = round(primary['Percent'][0],1)
ax.text(0.45, 0.7, f'{_}%', fontsize=size, color='white', horizontalalignment='right')

num = primary['Count'][1]
ax.text(0.3, 0.6, f'{num}', fontsize=size, color='white', horizontalalignment='right')
_ = primary['primary_type'][1].title()
ax.text(0.5, 0.6, f'{_}', fontsize=size, color='white', horizontalalignment='left')
_ = round(primary['Percent'][1],1)
ax.text(0.45, 0.6, f'{_}%', fontsize=size, color='white', horizontalalignment='right')

num = primary['Count'][2]
ax.text(0.3, 0.5, f'{num}', fontsize=size, color='white', horizontalalignment='right')
_ = primary['primary_type'][2].title()
ax.text(0.5, 0.5, f'{_}', fontsize=size, color='white', horizontalalignment='left')
a = secondaryOther['description'][0].lower()
ax.text(0.53, 0.465, f'({a})', fontsize=size-1, color='white', horizontalalignment='left')
_ = round(primary['Percent'][2],1)
ax.text(0.45, 0.5, f'{_}%', fontsize=size, color='white', horizontalalignment='right')

num = primary['Count'][3]
ax.text(0.3, 0.4, f'{num}', fontsize=size, color='white', horizontalalignment='right')
_ = primary['primary_type'][3].title()
ax.text(0.5, 0.4, f'{_}', fontsize=size, color='white', horizontalalignment='left')
_ = round(primary['Percent'][3],1)
ax.text(0.45, 0.4, f'{_}%', fontsize=size, color='white', horizontalalignment='right')

num = primary['Count'][4]
ax.text(0.3, 0.3, f'{num}', fontsize=size, color='white', horizontalalignment='right')
_ = primary['primary_type'][4].title()
ax.text(0.5, 0.3, f'{_}', fontsize=size, color='white', horizontalalignment='left')
_ = round(primary['Percent'][4],1)
ax.text(0.45, 0.3, f'{_}%', fontsize=size, color='white', horizontalalignment='right')


plt.text(x=0.05, y=0.08, s=f'Source: Google BigQuery - {url}', fontsize=12,
         color='white')
plt.text(x=0.05, y=0.05, s=f'Data is current as of: {year}-{month}-{day}', fontsize=12,
         color='white',)

plt.show();
