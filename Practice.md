


## Workign with the population dataset in Jupyter Notebook with Python


```python
df_population_raw = pd.read_csv('population_total.csv')
```


```python
#first look at the dataset(renamed)
df_population_raw
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>country</th>
      <th>year</th>
      <th>population</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>China</td>
      <td>2020.0</td>
      <td>1.439324e+09</td>
    </tr>
    <tr>
      <th>1</th>
      <td>China</td>
      <td>2019.0</td>
      <td>1.433784e+09</td>
    </tr>
    <tr>
      <th>2</th>
      <td>China</td>
      <td>2018.0</td>
      <td>1.427648e+09</td>
    </tr>
    <tr>
      <th>3</th>
      <td>China</td>
      <td>2017.0</td>
      <td>1.421022e+09</td>
    </tr>
    <tr>
      <th>4</th>
      <td>China</td>
      <td>2016.0</td>
      <td>1.414049e+09</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>4180</th>
      <td>United States</td>
      <td>1965.0</td>
      <td>1.997337e+08</td>
    </tr>
    <tr>
      <th>4181</th>
      <td>United States</td>
      <td>1960.0</td>
      <td>1.867206e+08</td>
    </tr>
    <tr>
      <th>4182</th>
      <td>United States</td>
      <td>1955.0</td>
      <td>1.716853e+08</td>
    </tr>
    <tr>
      <th>4183</th>
      <td>India</td>
      <td>1960.0</td>
      <td>4.505477e+08</td>
    </tr>
    <tr>
      <th>4184</th>
      <td>India</td>
      <td>1955.0</td>
      <td>4.098806e+08</td>
    </tr>
  </tbody>
</table>
<p>4185 rows × 3 columns</p>
</div>



## Let's start by making a Pivot Table


```python
#let's removed the null values and replacing the content in the dataset
df_population_raw.dropna(inplace=True)
```


```python
#lets reshape the dataframe the way I want it
df_pivot = df_population_raw.pivot(index='year', columns='country', values='population')
```


```python
#lets select some countries and override our pivot table
df_pivot = df_pivot[['United States', 'India', 'China', 'Indonesia', 'Brazil']]
```


```python
#lets confirm the changes
df_pivot
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>country</th>
      <th>United States</th>
      <th>India</th>
      <th>China</th>
      <th>Indonesia</th>
      <th>Brazil</th>
    </tr>
    <tr>
      <th>year</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>1955.0</th>
      <td>171685336.0</td>
      <td>4.098806e+08</td>
      <td>6.122416e+08</td>
      <td>77273425.0</td>
      <td>62533919.0</td>
    </tr>
    <tr>
      <th>1960.0</th>
      <td>186720571.0</td>
      <td>4.505477e+08</td>
      <td>6.604081e+08</td>
      <td>87751068.0</td>
      <td>72179226.0</td>
    </tr>
    <tr>
      <th>1965.0</th>
      <td>199733676.0</td>
      <td>4.991233e+08</td>
      <td>7.242190e+08</td>
      <td>100267062.0</td>
      <td>83373530.0</td>
    </tr>
    <tr>
      <th>1970.0</th>
      <td>209513341.0</td>
      <td>5.551898e+08</td>
      <td>8.276014e+08</td>
      <td>114793178.0</td>
      <td>95113265.0</td>
    </tr>
    <tr>
      <th>1975.0</th>
      <td>219081251.0</td>
      <td>6.231029e+08</td>
      <td>9.262409e+08</td>
      <td>130680727.0</td>
      <td>107216205.0</td>
    </tr>
    <tr>
      <th>1980.0</th>
      <td>229476354.0</td>
      <td>6.989528e+08</td>
      <td>1.000089e+09</td>
      <td>147447836.0</td>
      <td>120694009.0</td>
    </tr>
    <tr>
      <th>1985.0</th>
      <td>240499825.0</td>
      <td>7.843600e+08</td>
      <td>1.075589e+09</td>
      <td>164982451.0</td>
      <td>135274080.0</td>
    </tr>
    <tr>
      <th>1990.0</th>
      <td>252120309.0</td>
      <td>8.732778e+08</td>
      <td>1.176884e+09</td>
      <td>181413402.0</td>
      <td>149003223.0</td>
    </tr>
    <tr>
      <th>1995.0</th>
      <td>265163745.0</td>
      <td>9.639226e+08</td>
      <td>1.240921e+09</td>
      <td>196934260.0</td>
      <td>162019896.0</td>
    </tr>
    <tr>
      <th>2000.0</th>
      <td>281710909.0</td>
      <td>1.056576e+09</td>
      <td>1.290551e+09</td>
      <td>211513823.0</td>
      <td>174790340.0</td>
    </tr>
    <tr>
      <th>2005.0</th>
      <td>294993511.0</td>
      <td>1.147610e+09</td>
      <td>1.330776e+09</td>
      <td>226289470.0</td>
      <td>186127103.0</td>
    </tr>
    <tr>
      <th>2010.0</th>
      <td>309011475.0</td>
      <td>1.234281e+09</td>
      <td>1.368811e+09</td>
      <td>241834215.0</td>
      <td>195713635.0</td>
    </tr>
    <tr>
      <th>2015.0</th>
      <td>320878310.0</td>
      <td>1.310152e+09</td>
      <td>1.406848e+09</td>
      <td>258383256.0</td>
      <td>204471769.0</td>
    </tr>
    <tr>
      <th>2016.0</th>
      <td>323015995.0</td>
      <td>1.324517e+09</td>
      <td>1.414049e+09</td>
      <td>261556381.0</td>
      <td>206163053.0</td>
    </tr>
    <tr>
      <th>2017.0</th>
      <td>325084756.0</td>
      <td>1.338677e+09</td>
      <td>1.421022e+09</td>
      <td>264650963.0</td>
      <td>207833823.0</td>
    </tr>
    <tr>
      <th>2018.0</th>
      <td>327096265.0</td>
      <td>1.352642e+09</td>
      <td>1.427648e+09</td>
      <td>267670543.0</td>
      <td>209469323.0</td>
    </tr>
    <tr>
      <th>2019.0</th>
      <td>329064917.0</td>
      <td>1.366418e+09</td>
      <td>1.433784e+09</td>
      <td>270625568.0</td>
      <td>211049527.0</td>
    </tr>
    <tr>
      <th>2020.0</th>
      <td>331002651.0</td>
      <td>1.380004e+09</td>
      <td>1.439324e+09</td>
      <td>273523615.0</td>
      <td>212559417.0</td>
    </tr>
  </tbody>
</table>
</div>



## now that we have selected the data we want to work with, let's make our viz


```python
#I want to visualize it with a Linepot
df_pivot.plot(kind='line', xlabel='Year', ylabel='Population', 
              title='Population (1955-2020)', figsize=(8,4))

```




    <Axes: title={'center': 'Population (1955-2020)'}, xlabel='Year', ylabel='Population'>




    
![png](output_178_1.png)
    


## let's also make a Barplot


```python
#lets select only one year (2020)
df_pivot_2020 = df_pivot[df_pivot.index.isin([2020])]
```


```python
#let's see the new dataframe
df_pivot_2020
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>country</th>
      <th>United States</th>
      <th>India</th>
      <th>China</th>
      <th>Indonesia</th>
      <th>Brazil</th>
    </tr>
    <tr>
      <th>year</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2020.0</th>
      <td>331002651.0</td>
      <td>1.380004e+09</td>
      <td>1.439324e+09</td>
      <td>273523615.0</td>
      <td>212559417.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
#lets transpose the dataframe from rows to columns
df_pivot_2020 = df_pivot_2020.T
```


```python
df_pivot_2020
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>year</th>
      <th>2020.0</th>
    </tr>
    <tr>
      <th>country</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>United States</th>
      <td>3.310027e+08</td>
    </tr>
    <tr>
      <th>India</th>
      <td>1.380004e+09</td>
    </tr>
    <tr>
      <th>China</th>
      <td>1.439324e+09</td>
    </tr>
    <tr>
      <th>Indonesia</th>
      <td>2.735236e+08</td>
    </tr>
    <tr>
      <th>Brazil</th>
      <td>2.125594e+08</td>
    </tr>
  </tbody>
</table>
</div>




```python
#lets make our barplot
df_pivot_2020.plot(kind='bar', color='pink',
                  xlabel='Country', ylabel='Population',
                  title='Population (2020)')
```




    <Axes: title={'center': 'Population (2020)'}, xlabel='Country', ylabel='Population'>




    
![png](output_184_1.png)
    



```python
#lets select a few years
df_pivot_sample = df_pivot[df_pivot.index.isin([1980, 1990, 2000, 2010, 2020])]
```


```python
#lets make a group barplot
df_pivot.plot(kind='bar',   xlabel='year', ylabel='Population',
                  title='Population (2020)')
```




    <Axes: title={'center': 'Population (2020)'}, xlabel='year', ylabel='Population'>




    
![png](output_186_1.png)
    



```python
#lets make a Piechart
df_pivot_2020.rename(columns={2020:'2020'}, inplace=True)
```


```python
df_pivot_2020.plot(kind='pie', y='2020')
```




    <Axes: ylabel='2020'>




    
![png](output_188_1.png)
    



```python
#export to excel
df_pivot_2020.to_excel('pivot_table.xlsx')
```


```python

```
