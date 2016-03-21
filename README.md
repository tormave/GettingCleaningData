## Getting and Cleaning Data Course Project

### Introduction
The analysis script in this repository is intended for the dataset found in 
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Download Link for the datafile
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Data
run_analysis.R combines data found in the main directories of the "train" and "test" data sets into a single data frame. Data in the "Inertial Signals" directories is not included.

The data frame column titles have been expanded somewhat from the original to make the data more human readable. Some of the "bandsEnergy" metrics had duplicate column names, which has been solved by appending the respective column index number to the end of the column name.

#### Column titles
  [1] "activityid"                                      
  [2] "Body Acceleration -mean-X"                       
  [3] "Body Acceleration -mean-Y"                       
  [4] "Body Acceleration -mean-Z"                       
  [5] "Body Acceleration -std-X"                        
  [6] "Body Acceleration -std-Y"                        
  [7] "Body Acceleration -std-Z"                        
  [8] "Body Acceleration -mad-X"                        
  [9] "Body Acceleration -mad-Y"                        
 [10] "Body Acceleration -mad-Z"                        
 [11] "Body Acceleration -max-X"                        
 [12] "Body Acceleration -max-Y"                        
 [13] "Body Acceleration -max-Z"                        
 [14] "Body Acceleration -min-X"                        
 [15] "Body Acceleration -min-Y"                        
 [16] "Body Acceleration -min-Z"                        
 [17] "Body Acceleration -sma"                          
 [18] "Body Acceleration -energy-X"                     
 [19] "Body Acceleration -energy-Y"                     
 [20] "Body Acceleration -energy-Z"                     
 [21] "Body Acceleration -iqr-X"                        
 [22] "Body Acceleration -iqr-Y"                        
 [23] "Body Acceleration -iqr-Z"                        
 [24] "Body Acceleration -entropy-X"                    
 [25] "Body Acceleration -entropy-Y"                    
 [26] "Body Acceleration -entropy-Z"                    
 [27] "Body Acceleration -arCoeff-X,1"                  
 [28] "Body Acceleration -arCoeff-X,2"                  
 [29] "Body Acceleration -arCoeff-X,3"                  
 [30] "Body Acceleration -arCoeff-X,4"                  
 [31] "Body Acceleration -arCoeff-Y,1"                  
 [32] "Body Acceleration -arCoeff-Y,2"                  
 [33] "Body Acceleration -arCoeff-Y,3"                  
 [34] "Body Acceleration -arCoeff-Y,4"                  
 [35] "Body Acceleration -arCoeff-Z,1"                  
 [36] "Body Acceleration -arCoeff-Z,2"                  
 [37] "Body Acceleration -arCoeff-Z,3"                  
 [38] "Body Acceleration -arCoeff-Z,4"                  
 [39] "Body Acceleration -correlation-X,Y"              
 [40] "Body Acceleration -correlation-X,Z"              
 [41] "Body Acceleration -correlation-Y,Z"              
 [42] "Gravity Acceleration -mean-X"                    
 [43] "Gravity Acceleration -mean-Y"                    
 [44] "Gravity Acceleration -mean-Z"                    
 [45] "Gravity Acceleration -std-X"                     
 [46] "Gravity Acceleration -std-Y"                     
 [47] "Gravity Acceleration -std-Z"                     
 [48] "Gravity Acceleration -mad-X"                     
 [49] "Gravity Acceleration -mad-Y"                     
 [50] "Gravity Acceleration -mad-Z"                     
 [51] "Gravity Acceleration -max-X"                     
 [52] "Gravity Acceleration -max-Y"                     
 [53] "Gravity Acceleration -max-Z"                     
 [54] "Gravity Acceleration -min-X"                     
 [55] "Gravity Acceleration -min-Y"                     
 [56] "Gravity Acceleration -min-Z"                     
 [57] "Gravity Acceleration -sma"                       
 [58] "Gravity Acceleration -energy-X"                  
 [59] "Gravity Acceleration -energy-Y"                  
 [60] "Gravity Acceleration -energy-Z"                  
 [61] "Gravity Acceleration -iqr-X"                     
 [62] "Gravity Acceleration -iqr-Y"                     
 [63] "Gravity Acceleration -iqr-Z"                     
 [64] "Gravity Acceleration -entropy-X"                 
 [65] "Gravity Acceleration -entropy-Y"                 
 [66] "Gravity Acceleration -entropy-Z"                 
 [67] "Gravity Acceleration -arCoeff-X,1"               
 [68] "Gravity Acceleration -arCoeff-X,2"               
 [69] "Gravity Acceleration -arCoeff-X,3"               
 [70] "Gravity Acceleration -arCoeff-X,4"               
 [71] "Gravity Acceleration -arCoeff-Y,1"               
 [72] "Gravity Acceleration -arCoeff-Y,2"               
 [73] "Gravity Acceleration -arCoeff-Y,3"               
 [74] "Gravity Acceleration -arCoeff-Y,4"               
 [75] "Gravity Acceleration -arCoeff-Z,1"               
 [76] "Gravity Acceleration -arCoeff-Z,2"               
 [77] "Gravity Acceleration -arCoeff-Z,3"               
 [78] "Gravity Acceleration -arCoeff-Z,4"               
 [79] "Gravity Acceleration -correlation-X,Y"           
 [80] "Gravity Acceleration -correlation-X,Z"           
 [81] "Gravity Acceleration -correlation-Y,Z"           
 [82] "Body Acceleration Jerk-mean-X"                   
 [83] "Body Acceleration Jerk-mean-Y"                   
 [84] "Body Acceleration Jerk-mean-Z"                   
 [85] "Body Acceleration Jerk-std-X"                    
 [86] "Body Acceleration Jerk-std-Y"                    
 [87] "Body Acceleration Jerk-std-Z"                    
 [88] "Body Acceleration Jerk-mad-X"                    
 [89] "Body Acceleration Jerk-mad-Y"                    
 [90] "Body Acceleration Jerk-mad-Z"                    
 [91] "Body Acceleration Jerk-max-X"                    
 [92] "Body Acceleration Jerk-max-Y"                    
 [93] "Body Acceleration Jerk-max-Z"                    
 [94] "Body Acceleration Jerk-min-X"                    
 [95] "Body Acceleration Jerk-min-Y"                    
 [96] "Body Acceleration Jerk-min-Z"                    
 [97] "Body Acceleration Jerk-sma"                      
 [98] "Body Acceleration Jerk-energy-X"                 
 [99] "Body Acceleration Jerk-energy-Y"                 
[100] "Body Acceleration Jerk-energy-Z"                 
[101] "Body Acceleration Jerk-iqr-X"                    
[102] "Body Acceleration Jerk-iqr-Y"                    
[103] "Body Acceleration Jerk-iqr-Z"                    
[104] "Body Acceleration Jerk-entropy-X"                
[105] "Body Acceleration Jerk-entropy-Y"                
[106] "Body Acceleration Jerk-entropy-Z"                
[107] "Body Acceleration Jerk-arCoeff-X,1"              
[108] "Body Acceleration Jerk-arCoeff-X,2"              
[109] "Body Acceleration Jerk-arCoeff-X,3"              
[110] "Body Acceleration Jerk-arCoeff-X,4"              
[111] "Body Acceleration Jerk-arCoeff-Y,1"              
[112] "Body Acceleration Jerk-arCoeff-Y,2"              
[113] "Body Acceleration Jerk-arCoeff-Y,3"              
[114] "Body Acceleration Jerk-arCoeff-Y,4"              
[115] "Body Acceleration Jerk-arCoeff-Z,1"              
[116] "Body Acceleration Jerk-arCoeff-Z,2"              
[117] "Body Acceleration Jerk-arCoeff-Z,3"              
[118] "Body Acceleration Jerk-arCoeff-Z,4"              
[119] "Body Acceleration Jerk-correlation-X,Y"          
[120] "Body Acceleration Jerk-correlation-X,Z"          
[121] "Body Acceleration Jerk-correlation-Y,Z"          
[122] "Body Gyroscope -mean-X"                          
[123] "Body Gyroscope -mean-Y"                          
[124] "Body Gyroscope -mean-Z"                          
[125] "Body Gyroscope -std-X"                           
[126] "Body Gyroscope -std-Y"                           
[127] "Body Gyroscope -std-Z"                           
[128] "Body Gyroscope -mad-X"                           
[129] "Body Gyroscope -mad-Y"                           
[130] "Body Gyroscope -mad-Z"                           
[131] "Body Gyroscope -max-X"                           
[132] "Body Gyroscope -max-Y"                           
[133] "Body Gyroscope -max-Z"                           
[134] "Body Gyroscope -min-X"                           
[135] "Body Gyroscope -min-Y"                           
[136] "Body Gyroscope -min-Z"                           
[137] "Body Gyroscope -sma"                             
[138] "Body Gyroscope -energy-X"                        
[139] "Body Gyroscope -energy-Y"                        
[140] "Body Gyroscope -energy-Z"                        
[141] "Body Gyroscope -iqr-X"                           
[142] "Body Gyroscope -iqr-Y"                           
[143] "Body Gyroscope -iqr-Z"                           
[144] "Body Gyroscope -entropy-X"                       
[145] "Body Gyroscope -entropy-Y"                       
[146] "Body Gyroscope -entropy-Z"                       
[147] "Body Gyroscope -arCoeff-X,1"                     
[148] "Body Gyroscope -arCoeff-X,2"                     
[149] "Body Gyroscope -arCoeff-X,3"                     
[150] "Body Gyroscope -arCoeff-X,4"                     
[151] "Body Gyroscope -arCoeff-Y,1"                     
[152] "Body Gyroscope -arCoeff-Y,2"                     
[153] "Body Gyroscope -arCoeff-Y,3"                     
[154] "Body Gyroscope -arCoeff-Y,4"                     
[155] "Body Gyroscope -arCoeff-Z,1"                     
[156] "Body Gyroscope -arCoeff-Z,2"                     
[157] "Body Gyroscope -arCoeff-Z,3"                     
[158] "Body Gyroscope -arCoeff-Z,4"                     
[159] "Body Gyroscope -correlation-X,Y"                 
[160] "Body Gyroscope -correlation-X,Z"                 
[161] "Body Gyroscope -correlation-Y,Z"                 
[162] "Body Gyroscope Jerk-mean-X"                      
[163] "Body Gyroscope Jerk-mean-Y"                      
[164] "Body Gyroscope Jerk-mean-Z"                      
[165] "Body Gyroscope Jerk-std-X"                       
[166] "Body Gyroscope Jerk-std-Y"                       
[167] "Body Gyroscope Jerk-std-Z"                       
[168] "Body Gyroscope Jerk-mad-X"                       
[169] "Body Gyroscope Jerk-mad-Y"                       
[170] "Body Gyroscope Jerk-mad-Z"                       
[171] "Body Gyroscope Jerk-max-X"                       
[172] "Body Gyroscope Jerk-max-Y"                       
[173] "Body Gyroscope Jerk-max-Z"                       
[174] "Body Gyroscope Jerk-min-X"                       
[175] "Body Gyroscope Jerk-min-Y"                       
[176] "Body Gyroscope Jerk-min-Z"                       
[177] "Body Gyroscope Jerk-sma"                         
[178] "Body Gyroscope Jerk-energy-X"                    
[179] "Body Gyroscope Jerk-energy-Y"                    
[180] "Body Gyroscope Jerk-energy-Z"                    
[181] "Body Gyroscope Jerk-iqr-X"                       
[182] "Body Gyroscope Jerk-iqr-Y"                       
[183] "Body Gyroscope Jerk-iqr-Z"                       
[184] "Body Gyroscope Jerk-entropy-X"                   
[185] "Body Gyroscope Jerk-entropy-Y"                   
[186] "Body Gyroscope Jerk-entropy-Z"                   
[187] "Body Gyroscope Jerk-arCoeff-X,1"                 
[188] "Body Gyroscope Jerk-arCoeff-X,2"                 
[189] "Body Gyroscope Jerk-arCoeff-X,3"                 
[190] "Body Gyroscope Jerk-arCoeff-X,4"                 
[191] "Body Gyroscope Jerk-arCoeff-Y,1"                 
[192] "Body Gyroscope Jerk-arCoeff-Y,2"                 
[193] "Body Gyroscope Jerk-arCoeff-Y,3"                 
[194] "Body Gyroscope Jerk-arCoeff-Y,4"                 
[195] "Body Gyroscope Jerk-arCoeff-Z,1"                 
[196] "Body Gyroscope Jerk-arCoeff-Z,2"                 
[197] "Body Gyroscope Jerk-arCoeff-Z,3"                 
[198] "Body Gyroscope Jerk-arCoeff-Z,4"                 
[199] "Body Gyroscope Jerk-correlation-X,Y"             
[200] "Body Gyroscope Jerk-correlation-X,Z"             
[201] "Body Gyroscope Jerk-correlation-Y,Z"             
[202] "Body Acceleration Mag-mean"                      
[203] "Body Acceleration Mag-std"                       
[204] "Body Acceleration Mag-mad"                       
[205] "Body Acceleration Mag-max"                       
[206] "Body Acceleration Mag-min"                       
[207] "Body Acceleration Mag-sma"                       
[208] "Body Acceleration Mag-energy"                    
[209] "Body Acceleration Mag-iqr"                       
[210] "Body Acceleration Mag-entropy"                   
[211] "Body Acceleration Mag-arCoeff1"                  
[212] "Body Acceleration Mag-arCoeff2"                  
[213] "Body Acceleration Mag-arCoeff3"                  
[214] "Body Acceleration Mag-arCoeff4"                  
[215] "Gravity Acceleration Mag-mean"                   
[216] "Gravity Acceleration Mag-std"                    
[217] "Gravity Acceleration Mag-mad"                    
[218] "Gravity Acceleration Mag-max"                    
[219] "Gravity Acceleration Mag-min"                    
[220] "Gravity Acceleration Mag-sma"                    
[221] "Gravity Acceleration Mag-energy"                 
[222] "Gravity Acceleration Mag-iqr"                    
[223] "Gravity Acceleration Mag-entropy"                
[224] "Gravity Acceleration Mag-arCoeff1"               
[225] "Gravity Acceleration Mag-arCoeff2"               
[226] "Gravity Acceleration Mag-arCoeff3"               
[227] "Gravity Acceleration Mag-arCoeff4"               
[228] "Body Acceleration JerkMag-mean"                  
[229] "Body Acceleration JerkMag-std"                   
[230] "Body Acceleration JerkMag-mad"                   
[231] "Body Acceleration JerkMag-max"                   
[232] "Body Acceleration JerkMag-min"                   
[233] "Body Acceleration JerkMag-sma"                   
[234] "Body Acceleration JerkMag-energy"                
[235] "Body Acceleration JerkMag-iqr"                   
[236] "Body Acceleration JerkMag-entropy"               
[237] "Body Acceleration JerkMag-arCoeff1"              
[238] "Body Acceleration JerkMag-arCoeff2"              
[239] "Body Acceleration JerkMag-arCoeff3"              
[240] "Body Acceleration JerkMag-arCoeff4"              
[241] "Body Gyroscope Mag-mean"                         
[242] "Body Gyroscope Mag-std"                          
[243] "Body Gyroscope Mag-mad"                          
[244] "Body Gyroscope Mag-max"                          
[245] "Body Gyroscope Mag-min"                          
[246] "Body Gyroscope Mag-sma"                          
[247] "Body Gyroscope Mag-energy"                       
[248] "Body Gyroscope Mag-iqr"                          
[249] "Body Gyroscope Mag-entropy"                      
[250] "Body Gyroscope Mag-arCoeff1"                     
[251] "Body Gyroscope Mag-arCoeff2"                     
[252] "Body Gyroscope Mag-arCoeff3"                     
[253] "Body Gyroscope Mag-arCoeff4"                     
[254] "Body Gyroscope JerkMag-mean"                     
[255] "Body Gyroscope JerkMag-std"                      
[256] "Body Gyroscope JerkMag-mad"                      
[257] "Body Gyroscope JerkMag-max"                      
[258] "Body Gyroscope JerkMag-min"                      
[259] "Body Gyroscope JerkMag-sma"                      
[260] "Body Gyroscope JerkMag-energy"                   
[261] "Body Gyroscope JerkMag-iqr"                      
[262] "Body Gyroscope JerkMag-entropy"                  
[263] "Body Gyroscope JerkMag-arCoeff1"                 
[264] "Body Gyroscope JerkMag-arCoeff2"                 
[265] "Body Gyroscope JerkMag-arCoeff3"                 
[266] "Body Gyroscope JerkMag-arCoeff4"                 
[267] "FFT Body Acceleration -mean-X"                   
[268] "FFT Body Acceleration -mean-Y"                   
[269] "FFT Body Acceleration -mean-Z"                   
[270] "FFT Body Acceleration -std-X"                    
[271] "FFT Body Acceleration -std-Y"                    
[272] "FFT Body Acceleration -std-Z"                    
[273] "FFT Body Acceleration -mad-X"                    
[274] "FFT Body Acceleration -mad-Y"                    
[275] "FFT Body Acceleration -mad-Z"                    
[276] "FFT Body Acceleration -max-X"                    
[277] "FFT Body Acceleration -max-Y"                    
[278] "FFT Body Acceleration -max-Z"                    
[279] "FFT Body Acceleration -min-X"                    
[280] "FFT Body Acceleration -min-Y"                    
[281] "FFT Body Acceleration -min-Z"                    
[282] "FFT Body Acceleration -sma"                      
[283] "FFT Body Acceleration -energy-X"                 
[284] "FFT Body Acceleration -energy-Y"                 
[285] "FFT Body Acceleration -energy-Z"                 
[286] "FFT Body Acceleration -iqr-X"                    
[287] "FFT Body Acceleration -iqr-Y"                    
[288] "FFT Body Acceleration -iqr-Z"                    
[289] "FFT Body Acceleration -entropy-X"                
[290] "FFT Body Acceleration -entropy-Y"                
[291] "FFT Body Acceleration -entropy-Z"                
[292] "FFT Body Acceleration -maxInds-X"                
[293] "FFT Body Acceleration -maxInds-Y"                
[294] "FFT Body Acceleration -maxInds-Z"                
[295] "FFT Body Acceleration -meanFreq-X"               
[296] "FFT Body Acceleration -meanFreq-Y"               
[297] "FFT Body Acceleration -meanFreq-Z"               
[298] "FFT Body Acceleration -skewness-X"               
[299] "FFT Body Acceleration -kurtosis-X"               
[300] "FFT Body Acceleration -skewness-Y"               
[301] "FFT Body Acceleration -kurtosis-Y"               
[302] "FFT Body Acceleration -skewness-Z"               
[303] "FFT Body Acceleration -kurtosis-Z"               
[304] "FFT Body Acceleration -bandsEnergy-1,8"          
[305] "FFT Body Acceleration -bandsEnergy-9,16"         
[306] "FFT Body Acceleration -bandsEnergy-17,24"        
[307] "FFT Body Acceleration -bandsEnergy-25,32"        
[308] "FFT Body Acceleration -bandsEnergy-33,40"        
[309] "FFT Body Acceleration -bandsEnergy-41,48"        
[310] "FFT Body Acceleration -bandsEnergy-49,56"        
[311] "FFT Body Acceleration -bandsEnergy-57,64"        
[312] "FFT Body Acceleration -bandsEnergy-1,16"         
[313] "FFT Body Acceleration -bandsEnergy-17,32"        
[314] "FFT Body Acceleration -bandsEnergy-33,48"        
[315] "FFT Body Acceleration -bandsEnergy-49,64"        
[316] "FFT Body Acceleration -bandsEnergy-1,24"         
[317] "FFT Body Acceleration -bandsEnergy-25,48"        
[318] "FFT Body Acceleration -bandsEnergy-1,8_317"      
[319] "FFT Body Acceleration -bandsEnergy-9,16_318"     
[320] "FFT Body Acceleration -bandsEnergy-17,24_319"    
[321] "FFT Body Acceleration -bandsEnergy-25,32_320"    
[322] "FFT Body Acceleration -bandsEnergy-33,40_321"    
[323] "FFT Body Acceleration -bandsEnergy-41,48_322"    
[324] "FFT Body Acceleration -bandsEnergy-49,56_323"    
[325] "FFT Body Acceleration -bandsEnergy-57,64_324"    
[326] "FFT Body Acceleration -bandsEnergy-1,16_325"     
[327] "FFT Body Acceleration -bandsEnergy-17,32_326"    
[328] "FFT Body Acceleration -bandsEnergy-33,48_327"    
[329] "FFT Body Acceleration -bandsEnergy-49,64_328"    
[330] "FFT Body Acceleration -bandsEnergy-1,24_329"     
[331] "FFT Body Acceleration -bandsEnergy-25,48_330"    
[332] "FFT Body Acceleration -bandsEnergy-1,8_331"      
[333] "FFT Body Acceleration -bandsEnergy-9,16_332"     
[334] "FFT Body Acceleration -bandsEnergy-17,24_333"    
[335] "FFT Body Acceleration -bandsEnergy-25,32_334"    
[336] "FFT Body Acceleration -bandsEnergy-33,40_335"    
[337] "FFT Body Acceleration -bandsEnergy-41,48_336"    
[338] "FFT Body Acceleration -bandsEnergy-49,56_337"    
[339] "FFT Body Acceleration -bandsEnergy-57,64_338"    
[340] "FFT Body Acceleration -bandsEnergy-1,16_339"     
[341] "FFT Body Acceleration -bandsEnergy-17,32_340"    
[342] "FFT Body Acceleration -bandsEnergy-33,48_341"    
[343] "FFT Body Acceleration -bandsEnergy-49,64_342"    
[344] "FFT Body Acceleration -bandsEnergy-1,24_343"     
[345] "FFT Body Acceleration -bandsEnergy-25,48_344"    
[346] "FFT Body Acceleration Jerk-mean-X"               
[347] "FFT Body Acceleration Jerk-mean-Y"               
[348] "FFT Body Acceleration Jerk-mean-Z"               
[349] "FFT Body Acceleration Jerk-std-X"                
[350] "FFT Body Acceleration Jerk-std-Y"                
[351] "FFT Body Acceleration Jerk-std-Z"                
[352] "FFT Body Acceleration Jerk-mad-X"                
[353] "FFT Body Acceleration Jerk-mad-Y"                
[354] "FFT Body Acceleration Jerk-mad-Z"                
[355] "FFT Body Acceleration Jerk-max-X"                
[356] "FFT Body Acceleration Jerk-max-Y"                
[357] "FFT Body Acceleration Jerk-max-Z"                
[358] "FFT Body Acceleration Jerk-min-X"                
[359] "FFT Body Acceleration Jerk-min-Y"                
[360] "FFT Body Acceleration Jerk-min-Z"                
[361] "FFT Body Acceleration Jerk-sma"                  
[362] "FFT Body Acceleration Jerk-energy-X"             
[363] "FFT Body Acceleration Jerk-energy-Y"             
[364] "FFT Body Acceleration Jerk-energy-Z"             
[365] "FFT Body Acceleration Jerk-iqr-X"                
[366] "FFT Body Acceleration Jerk-iqr-Y"                
[367] "FFT Body Acceleration Jerk-iqr-Z"                
[368] "FFT Body Acceleration Jerk-entropy-X"            
[369] "FFT Body Acceleration Jerk-entropy-Y"            
[370] "FFT Body Acceleration Jerk-entropy-Z"            
[371] "FFT Body Acceleration Jerk-maxInds-X"            
[372] "FFT Body Acceleration Jerk-maxInds-Y"            
[373] "FFT Body Acceleration Jerk-maxInds-Z"            
[374] "FFT Body Acceleration Jerk-meanFreq-X"           
[375] "FFT Body Acceleration Jerk-meanFreq-Y"           
[376] "FFT Body Acceleration Jerk-meanFreq-Z"           
[377] "FFT Body Acceleration Jerk-skewness-X"           
[378] "FFT Body Acceleration Jerk-kurtosis-X"           
[379] "FFT Body Acceleration Jerk-skewness-Y"           
[380] "FFT Body Acceleration Jerk-kurtosis-Y"           
[381] "FFT Body Acceleration Jerk-skewness-Z"           
[382] "FFT Body Acceleration Jerk-kurtosis-Z"           
[383] "FFT Body Acceleration Jerk-bandsEnergy-1,8"      
[384] "FFT Body Acceleration Jerk-bandsEnergy-9,16"     
[385] "FFT Body Acceleration Jerk-bandsEnergy-17,24"    
[386] "FFT Body Acceleration Jerk-bandsEnergy-25,32"    
[387] "FFT Body Acceleration Jerk-bandsEnergy-33,40"    
[388] "FFT Body Acceleration Jerk-bandsEnergy-41,48"    
[389] "FFT Body Acceleration Jerk-bandsEnergy-49,56"    
[390] "FFT Body Acceleration Jerk-bandsEnergy-57,64"    
[391] "FFT Body Acceleration Jerk-bandsEnergy-1,16"     
[392] "FFT Body Acceleration Jerk-bandsEnergy-17,32"    
[393] "FFT Body Acceleration Jerk-bandsEnergy-33,48"    
[394] "FFT Body Acceleration Jerk-bandsEnergy-49,64"    
[395] "FFT Body Acceleration Jerk-bandsEnergy-1,24"     
[396] "FFT Body Acceleration Jerk-bandsEnergy-25,48"    
[397] "FFT Body Acceleration Jerk-bandsEnergy-1,8_396"  
[398] "FFT Body Acceleration Jerk-bandsEnergy-9,16_397" 
[399] "FFT Body Acceleration Jerk-bandsEnergy-17,24_398"
[400] "FFT Body Acceleration Jerk-bandsEnergy-25,32_399"
[401] "FFT Body Acceleration Jerk-bandsEnergy-33,40_400"
[402] "FFT Body Acceleration Jerk-bandsEnergy-41,48_401"
[403] "FFT Body Acceleration Jerk-bandsEnergy-49,56_402"
[404] "FFT Body Acceleration Jerk-bandsEnergy-57,64_403"
[405] "FFT Body Acceleration Jerk-bandsEnergy-1,16_404" 
[406] "FFT Body Acceleration Jerk-bandsEnergy-17,32_405"
[407] "FFT Body Acceleration Jerk-bandsEnergy-33,48_406"
[408] "FFT Body Acceleration Jerk-bandsEnergy-49,64_407"
[409] "FFT Body Acceleration Jerk-bandsEnergy-1,24_408" 
[410] "FFT Body Acceleration Jerk-bandsEnergy-25,48_409"
[411] "FFT Body Acceleration Jerk-bandsEnergy-1,8_410"  
[412] "FFT Body Acceleration Jerk-bandsEnergy-9,16_411" 
[413] "FFT Body Acceleration Jerk-bandsEnergy-17,24_412"
[414] "FFT Body Acceleration Jerk-bandsEnergy-25,32_413"
[415] "FFT Body Acceleration Jerk-bandsEnergy-33,40_414"
[416] "FFT Body Acceleration Jerk-bandsEnergy-41,48_415"
[417] "FFT Body Acceleration Jerk-bandsEnergy-49,56_416"
[418] "FFT Body Acceleration Jerk-bandsEnergy-57,64_417"
[419] "FFT Body Acceleration Jerk-bandsEnergy-1,16_418" 
[420] "FFT Body Acceleration Jerk-bandsEnergy-17,32_419"
[421] "FFT Body Acceleration Jerk-bandsEnergy-33,48_420"
[422] "FFT Body Acceleration Jerk-bandsEnergy-49,64_421"
[423] "FFT Body Acceleration Jerk-bandsEnergy-1,24_422" 
[424] "FFT Body Acceleration Jerk-bandsEnergy-25,48_423"
[425] "FFT Body Gyroscope -mean-X"                      
[426] "FFT Body Gyroscope -mean-Y"                      
[427] "FFT Body Gyroscope -mean-Z"                      
[428] "FFT Body Gyroscope -std-X"                       
[429] "FFT Body Gyroscope -std-Y"                       
[430] "FFT Body Gyroscope -std-Z"                       
[431] "FFT Body Gyroscope -mad-X"                       
[432] "FFT Body Gyroscope -mad-Y"                       
[433] "FFT Body Gyroscope -mad-Z"                       
[434] "FFT Body Gyroscope -max-X"                       
[435] "FFT Body Gyroscope -max-Y"                       
[436] "FFT Body Gyroscope -max-Z"                       
[437] "FFT Body Gyroscope -min-X"                       
[438] "FFT Body Gyroscope -min-Y"                       
[439] "FFT Body Gyroscope -min-Z"                       
[440] "FFT Body Gyroscope -sma"                         
[441] "FFT Body Gyroscope -energy-X"                    
[442] "FFT Body Gyroscope -energy-Y"                    
[443] "FFT Body Gyroscope -energy-Z"                    
[444] "FFT Body Gyroscope -iqr-X"                       
[445] "FFT Body Gyroscope -iqr-Y"                       
[446] "FFT Body Gyroscope -iqr-Z"                       
[447] "FFT Body Gyroscope -entropy-X"                   
[448] "FFT Body Gyroscope -entropy-Y"                   
[449] "FFT Body Gyroscope -entropy-Z"                   
[450] "FFT Body Gyroscope -maxInds-X"                   
[451] "FFT Body Gyroscope -maxInds-Y"                   
[452] "FFT Body Gyroscope -maxInds-Z"                   
[453] "FFT Body Gyroscope -meanFreq-X"                  
[454] "FFT Body Gyroscope -meanFreq-Y"                  
[455] "FFT Body Gyroscope -meanFreq-Z"                  
[456] "FFT Body Gyroscope -skewness-X"                  
[457] "FFT Body Gyroscope -kurtosis-X"                  
[458] "FFT Body Gyroscope -skewness-Y"                  
[459] "FFT Body Gyroscope -kurtosis-Y"                  
[460] "FFT Body Gyroscope -skewness-Z"                  
[461] "FFT Body Gyroscope -kurtosis-Z"                  
[462] "FFT Body Gyroscope -bandsEnergy-1,8"             
[463] "FFT Body Gyroscope -bandsEnergy-9,16"            
[464] "FFT Body Gyroscope -bandsEnergy-17,24"           
[465] "FFT Body Gyroscope -bandsEnergy-25,32"           
[466] "FFT Body Gyroscope -bandsEnergy-33,40"           
[467] "FFT Body Gyroscope -bandsEnergy-41,48"           
[468] "FFT Body Gyroscope -bandsEnergy-49,56"           
[469] "FFT Body Gyroscope -bandsEnergy-57,64"           
[470] "FFT Body Gyroscope -bandsEnergy-1,16"            
[471] "FFT Body Gyroscope -bandsEnergy-17,32"           
[472] "FFT Body Gyroscope -bandsEnergy-33,48"           
[473] "FFT Body Gyroscope -bandsEnergy-49,64"           
[474] "FFT Body Gyroscope -bandsEnergy-1,24"            
[475] "FFT Body Gyroscope -bandsEnergy-25,48"           
[476] "FFT Body Gyroscope -bandsEnergy-1,8_475"         
[477] "FFT Body Gyroscope -bandsEnergy-9,16_476"        
[478] "FFT Body Gyroscope -bandsEnergy-17,24_477"       
[479] "FFT Body Gyroscope -bandsEnergy-25,32_478"       
[480] "FFT Body Gyroscope -bandsEnergy-33,40_479"       
[481] "FFT Body Gyroscope -bandsEnergy-41,48_480"       
[482] "FFT Body Gyroscope -bandsEnergy-49,56_481"       
[483] "FFT Body Gyroscope -bandsEnergy-57,64_482"       
[484] "FFT Body Gyroscope -bandsEnergy-1,16_483"        
[485] "FFT Body Gyroscope -bandsEnergy-17,32_484"       
[486] "FFT Body Gyroscope -bandsEnergy-33,48_485"       
[487] "FFT Body Gyroscope -bandsEnergy-49,64_486"       
[488] "FFT Body Gyroscope -bandsEnergy-1,24_487"        
[489] "FFT Body Gyroscope -bandsEnergy-25,48_488"       
[490] "FFT Body Gyroscope -bandsEnergy-1,8_489"         
[491] "FFT Body Gyroscope -bandsEnergy-9,16_490"        
[492] "FFT Body Gyroscope -bandsEnergy-17,24_491"       
[493] "FFT Body Gyroscope -bandsEnergy-25,32_492"       
[494] "FFT Body Gyroscope -bandsEnergy-33,40_493"       
[495] "FFT Body Gyroscope -bandsEnergy-41,48_494"       
[496] "FFT Body Gyroscope -bandsEnergy-49,56_495"       
[497] "FFT Body Gyroscope -bandsEnergy-57,64_496"       
[498] "FFT Body Gyroscope -bandsEnergy-1,16_497"        
[499] "FFT Body Gyroscope -bandsEnergy-17,32_498"       
[500] "FFT Body Gyroscope -bandsEnergy-33,48_499"       
[501] "FFT Body Gyroscope -bandsEnergy-49,64_500"       
[502] "FFT Body Gyroscope -bandsEnergy-1,24_501"        
[503] "FFT Body Gyroscope -bandsEnergy-25,48_502"       
[504] "FFT Body Acceleration Mag-mean"                  
[505] "FFT Body Acceleration Mag-std"                   
[506] "FFT Body Acceleration Mag-mad"                   
[507] "FFT Body Acceleration Mag-max"                   
[508] "FFT Body Acceleration Mag-min"                   
[509] "FFT Body Acceleration Mag-sma"                   
[510] "FFT Body Acceleration Mag-energy"                
[511] "FFT Body Acceleration Mag-iqr"                   
[512] "FFT Body Acceleration Mag-entropy"               
[513] "FFT Body Acceleration Mag-maxInds"               
[514] "FFT Body Acceleration Mag-meanFreq"              
[515] "FFT Body Acceleration Mag-skewness"              
[516] "FFT Body Acceleration Mag-kurtosis"              
[517] "FFT Body Acceleration JerkMag-mean"          
[518] "FFT Body Acceleration JerkMag-std"           
[519] "FFT Body Acceleration JerkMag-mad"           
[520] "FFT Body Acceleration JerkMag-max"           
[521] "FFT Body Acceleration JerkMag-min"           
[522] "FFT Body Acceleration JerkMag-sma"           
[523] "FFT Body Acceleration JerkMag-energy"        
[524] "FFT Body Acceleration JerkMag-iqr"           
[525] "FFT Body Acceleration JerkMag-entropy"       
[526] "FFT Body Acceleration JerkMag-maxInds"       
[527] "FFT Body Acceleration JerkMag-meanFreq"      
[528] "FFT Body Acceleration JerkMag-skewness"      
[529] "FFT Body Acceleration JerkMag-kurtosis"      
[530] "FFT Body Gyroscope Mag-mean"                 
[531] "FFT Body Gyroscope Mag-std"                  
[532] "FFT Body Gyroscope Mag-mad"                  
[533] "FFT Body Gyroscope Mag-max"                  
[534] "FFT Body Gyroscope Mag-min"                  
[535] "FFT Body Gyroscope Mag-sma"                  
[536] "FFT Body Gyroscope Mag-energy"               
[537] "FFT Body Gyroscope Mag-iqr"                  
[538] "FFT Body Gyroscope Mag-entropy"              
[539] "FFT Body Gyroscope Mag-maxInds"              
[540] "FFT Body Gyroscope Mag-meanFreq"             
[541] "FFT Body Gyroscope Mag-skewness"             
[542] "FFT Body Gyroscope Mag-kurtosis"             
[543] "FFT Body Gyroscope JerkMag-mean"             
[544] "FFT Body Gyroscope JerkMag-std"              
[545] "FFT Body Gyroscope JerkMag-mad"              
[546] "FFT Body Gyroscope JerkMag-max"              
[547] "FFT Body Gyroscope JerkMag-min"              
[548] "FFT Body Gyroscope JerkMag-sma"              
[549] "FFT Body Gyroscope JerkMag-energy"           
[550] "FFT Body Gyroscope JerkMag-iqr"              
[551] "FFT Body Gyroscope JerkMag-entropy"          
[552] "FFT Body Gyroscope JerkMag-maxInds"          
[553] "FFT Body Gyroscope JerkMag-meanFreq"         
[554] "FFT Body Gyroscope JerkMag-skewness"         
[555] "FFT Body Gyroscope JerkMag-kurtosis"         
[556] "angleBody Acceleration Mean,gravity)"            
[557] "angleBody Acceleration JerkMean),gravityMean)"   
[558] "angleBody Gyroscope Mean,gravityMean)"           
[559] "angleBody Gyroscope JerkMean,gravityMean)"       
[560] "angle(X,gravityMean)"                            
[561] "angle(Y,gravityMean)"                            
[562] "angle(Z,gravityMean)"                            
[563] "subject"                                         
[564] "activityname"

#### Column name modifications
The postfix acronyms are identical to those in the original dataset. The following replacements were made:

Leading 't' removed.
Leading 'f' replaced with 'FFT'.
'Acc' replaced with 'Acceleration'.
'Gyro' replaced with 'Gyroscope'.

### run_analysis.R
The one script file contains all the code for the assignment. It can be tested as follows:

```
> a <- allData()
```
The `allData()` method returns a data frame with activitynames, both "test" and "train" data, more readable column names, and de-duping of non-unique column titles. Hence it implements solutions for assignment tasks 1, 3, and 4.

```
> b <- meansDeviations()
> names(b)
```
The `meansDeviations()` method implements task 2, which can be verified by calling `names()` with its return value.

```
> c <- averages(a)
> head(a)
```
The `averages()` method returns a data frame, which calculates means of all other other attributes for every subject and activityname combination (Task 5).