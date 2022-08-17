clc
clear
m_20=0; 
m_30=0;    
m_40=0;  
m_10=0;  
m_50=0; 
m_60=0; 
m_70=0; 


All_data_Results_2_20 = cell(1,200);
All_data_Results_2_30 = cell(1,200);
All_data_Results_2_40 = cell(1,200);
All_data_Results_2_10 = cell(1,200);
All_data_Results_2_50 = cell(1,200);
All_data_Results_2_60 = cell(1,200);
All_data_Results_2_70 = cell(1,200);

for i =6
    
ImageNum =i;

switch ImageNum
    
           case 1
                filename = 'airplane';
            case 2
                filename = 'Barbara';
            case 3
                filename = 'boats';
            case 4
                filename = 'Fence';    
            case 5
                filename = 'foreman'; 
                
            case 6
                filename = 'House';
            case 7
                filename = 'Leaves';
            case 8
                filename = 'lena';
            case 9
                filename = 'Monarch';    
            case 10
                filename = 'starfish';  
end

for j  =  4
    

randn ('seed',0);

filename




Sigma_Num            = [10, 20, 30, 40, 50, 75, 100];


Sigma             =       Sigma_Num (j)



 if  Sigma ==10
     
     
 [filename, Sigma, PSNR_Final,FSIM_Final,SSIM_Final, Time_s, jj]     =  GSR_NLS_Main (filename, Sigma); 
 
 
 m_10= m_10+1;
 
 s=strcat('A',num2str(m_10));
 
 All_data_Results_2_10{m_10}={filename, Sigma,  PSNR_Final,FSIM_Final,SSIM_Final,Time_s,  jj};
 
 xlswrite('GSR_NLS_Sigma_10_Results.xls', All_data_Results_2_10{m_10},'sheet1',s);
 
 
 
 
 elseif  Sigma ==20
     
 [filename, Sigma, PSNR_Final,FSIM_Final,SSIM_Final, Time_s, jj]     =  GSR_NLS_Main (filename, Sigma); 
 
 m_20= m_20+1;
 
 s=strcat('A',num2str(m_20));
 
 All_data_Results_2_20{m_20}={filename, Sigma,  PSNR_Final,FSIM_Final,SSIM_Final, Time_s,  jj};
 
 xlswrite('GSR_NLS_Sigma_20_Results.xls', All_data_Results_2_20{m_20},'sheet1',s);
 
 
 elseif  Sigma ==30

     
 [filename, Sigma, PSNR_Final,FSIM_Final,SSIM_Final, Time_s, jj]     =  GSR_NLS_Main (filename, Sigma); 
 
 m_30= m_30+1;
 
 s=strcat('A',num2str(m_30));
 
 All_data_Results_2_30{m_30}={filename, Sigma,  PSNR_Final,FSIM_Final,SSIM_Final, Time_s,  jj};
 
 xlswrite('GSR_NLS_Sigma_30_Results.xls', All_data_Results_2_30{m_30},'sheet1',s);
 
 
 elseif  Sigma ==40

     
  [filename, Sigma, PSNR_Final,FSIM_Final,SSIM_Final, Time_s, jj]     =  GSR_NLS_Main (filename, Sigma); 
 
 m_40= m_40+1;
 
 s=strcat('A',num2str(m_40));
 
 All_data_Results_2_40{m_40}={filename, Sigma,  PSNR_Final,FSIM_Final,SSIM_Final, Time_s,  jj};
 
 xlswrite('GSR_NLS_Sigma_40_Results.xls', All_data_Results_2_40{m_40},'sheet1',s);
 
 

  elseif  Sigma ==50

     
[filename, Sigma, PSNR_Final,FSIM_Final,SSIM_Final, Time_s, jj]     =  GSR_NLS_Main (filename, Sigma); 
 
 m_50= m_50+1;
 
 s=strcat('A',num2str(m_50));
 
 All_data_Results_2_50{m_50}={filename, Sigma,  PSNR_Final,FSIM_Final,SSIM_Final, Time_s,  jj};
 
 xlswrite('GSR_NLS_Sigma_50_Results.xls', All_data_Results_2_50{m_50},'sheet1',s);
 
 
  elseif  Sigma ==75

     
 [filename, Sigma, PSNR_Final,FSIM_Final,SSIM_Final, Time_s, jj]     =  GSR_NLS_Main (filename, Sigma); 
 
 m_60= m_60+1;
 
 s=strcat('A',num2str(m_60));
 
 All_data_Results_2_60{m_60}={filename, Sigma,  PSNR_Final,FSIM_Final,SSIM_Final, Time_s,  jj};
 
 xlswrite('GSR_NLS_Sigma_75_Results.xls', All_data_Results_2_60{m_60},'sheet1',s);
 
 
 else
     

  [filename, Sigma, PSNR_Final,FSIM_Final,SSIM_Final, Time_s, jj]     =  GSR_NLS_Main (filename, Sigma); 
 
 m_70= m_70+1;
 
 s=strcat('A',num2str(m_70));
 
 All_data_Results_2_70{m_70}={filename, Sigma,  PSNR_Final,FSIM_Final,SSIM_Final, Time_s,  jj};
 
 
 xlswrite('GSR_NLS_Sigma_100_Results.xls', All_data_Results_2_70{m_70},'sheet1',s);   
 

 
 
 end

clearvars -except filename i m_20 All_data_Results_2_20 m_30 All_data_Results_2_30 m_40 All_data_Results_2_40...
    m_10 All_data_Results_2_10 m_50 All_data_Results_2_50 m_60 All_data_Results_2_60 m_70 All_data_Results_2_70

end
 clearvars -except filename m_20 All_data_Results_2_20 m_30 All_data_Results_2_30 m_40 All_data_Results_2_40...
    m_10 All_data_Results_2_10 m_50 All_data_Results_2_50 m_60 All_data_Results_2_60 m_70 All_data_Results_2_70
end





         