clc
clear all
close all

%% add shape files
s1=shaperead('India_states.shp');
% s2=shaperead('world_bound.shp');
r=size(s1);
% s=size(s2);
%% IMD TIME SERIES RAIN FALL FROM YEAR 2010-2019
IMD_data = ncinfo('rf_imd_25km_1901-2019.nc');
imd_lon1=ncread('rf_imd_25km_1901-2019.nc','lon');
imd_lat1=ncread('rf_imd_25km_1901-2019.nc','lat');
imd_precip=ncread('rf_imd_25km_1901-2019.nc','rf',[1,1,39811],[135,129,3652]);
% IMD2010 = imd_precip(:,:,1:365);
% IMD2011 = imd_precip(:,:,366:730);
% IMD2012 = imd_precip(:,:,731:1096);
% IMD2013 = imd_precip(:,:,1097:1461);
% IMD2014 = imd_precip(:,:,1462:1826);
IMD2015 = imd_precip(:,:,1827:2191);
% IMD2016 = imd_precip(:,:,2192:2557);
% IMD2017 = imd_precip(:,:,2558:2922);
% IMD2018 = imd_precip(:,:,2923:3287);
% IMD2019 = imd_precip(:,:,3288:3652);
% plot
precip1 = IMD2015;

june = precip1(:,:,153:182);
july = precip1(:,:,183:213);
aug = precip1(:,:,214:244);
sep = precip1(:,:,245:274);
oct = precip1(:,:,275:305);
nov = precip1(:,:,306:335);
dec = precip1(:,:,336:365);
%% imd june for all regions
rain_imd(1,1) = avg_rain_eval(june,imd_lat1,imd_lon1,26,28,72,74 );
rain_imd(2,1) = avg_rain_eval(june,imd_lat1,imd_lon1,24,26,84,86 );
rain_imd(3,1) = avg_rain_eval(june,imd_lat1,imd_lon1,16,18,74,76 );
rain_imd(4,1) = avg_rain_eval(june,imd_lat1,imd_lon1,10,12,77,79 );
rain_imd(5,1) = avg_rain_eval(june,imd_lat1,imd_lon1,22,24,76,78 );
rain_imd(6,1) = avg_rain_eval(june,imd_lat1,imd_lon1,33,35,76,78 );

%% imd july for all regions
rain_imd(1,2) = avg_rain_eval(july,imd_lat1,imd_lon1,26,28,72,74 );
rain_imd(2,2) = avg_rain_eval(july,imd_lat1,imd_lon1,24,26,84,86 );
rain_imd(3,2) = avg_rain_eval(july,imd_lat1,imd_lon1,16,18,74,76 );
rain_imd(4,2) = avg_rain_eval(july,imd_lat1,imd_lon1,10,12,77,79 );
rain_imd(5,2) = avg_rain_eval(july,imd_lat1,imd_lon1,22,24,76,78 );
rain_imd(6,2) = avg_rain_eval(july,imd_lat1,imd_lon1,33,35,76,78 );
%% imd aug for all regions
rain_imd(1,3) = avg_rain_eval(aug,imd_lat1,imd_lon1,26,28,72,74 );
rain_imd(2,3) = avg_rain_eval(aug,imd_lat1,imd_lon1,24,26,84,86 );
rain_imd(3,3) = avg_rain_eval(aug,imd_lat1,imd_lon1,16,18,74,76 );
rain_imd(4,3) = avg_rain_eval(aug,imd_lat1,imd_lon1,10,12,77,79 );
rain_imd(5,3) = avg_rain_eval(aug,imd_lat1,imd_lon1,22,24,76,78 );
rain_imd(6,3) = avg_rain_eval(aug,imd_lat1,imd_lon1,33,35,76,78 );

%% imd sep for all regions
rain_imd(1,4) = avg_rain_eval(sep,imd_lat1,imd_lon1,26,28,72,74 );
rain_imd(2,4) = avg_rain_eval(sep,imd_lat1,imd_lon1,24,26,84,86 );
rain_imd(3,4) = avg_rain_eval(sep,imd_lat1,imd_lon1,16,18,74,76 );
rain_imd(4,4) = avg_rain_eval(sep,imd_lat1,imd_lon1,10,12,77,79 );
rain_imd(5,4) = avg_rain_eval(sep,imd_lat1,imd_lon1,22,24,76,78 );
rain_imd(6,4) = avg_rain_eval(sep,imd_lat1,imd_lon1,33,35,76,78 );
%% imd oct for all regions
rain_imd(1,5) = avg_rain_eval(oct,imd_lat1,imd_lon1,26,28,72,74 );
rain_imd(2,5) = avg_rain_eval(oct,imd_lat1,imd_lon1,24,26,84,86 );
rain_imd(3,5) = avg_rain_eval(oct,imd_lat1,imd_lon1,16,18,74,76 );
rain_imd(4,5) = avg_rain_eval(oct,imd_lat1,imd_lon1,10,12,77,79 );
rain_imd(5,5) = avg_rain_eval(oct,imd_lat1,imd_lon1,22,24,76,78 );
rain_imd(6,5) = avg_rain_eval(oct,imd_lat1,imd_lon1,33,35,76,78 );
%% imd nov for all regions
rain_imd(1,6) = avg_rain_eval(nov,imd_lat1,imd_lon1,26,28,72,74 );
rain_imd(2,6) = avg_rain_eval(nov,imd_lat1,imd_lon1,24,26,84,86 );
rain_imd(3,6) = avg_rain_eval(nov,imd_lat1,imd_lon1,16,18,74,76 );
rain_imd(4,6) = avg_rain_eval(nov,imd_lat1,imd_lon1,10,12,77,79 );
rain_imd(5,6) = avg_rain_eval(nov,imd_lat1,imd_lon1,22,24,76,78 );
rain_imd(6,6) = avg_rain_eval(nov,imd_lat1,imd_lon1,33,35,76,78 );
%% imd dec for all regions
rain_imd(1,7) = avg_rain_eval(dec,imd_lat1,imd_lon1,26,28,72,74 );
rain_imd(2,7) = avg_rain_eval(dec,imd_lat1,imd_lon1,24,26,84,86 );
rain_imd(3,7) = avg_rain_eval(dec,imd_lat1,imd_lon1,16,18,74,76 );
rain_imd(4,7) = avg_rain_eval(dec,imd_lat1,imd_lon1,10,12,77,79 );
rain_imd(5,7) = avg_rain_eval(dec,imd_lat1,imd_lon1,22,24,76,78 );
rain_imd(6,7) = avg_rain_eval(dec,imd_lat1,imd_lon1,33,35,76,78 );

%% graph region vs months for imd
figure,bar(rain_imd','DisplayName','rain_imd'),legend('rajastan','bihar','maharashtra','tamilnadu','madhya pradesh','jammu and kashmir'),title('IMD -precipitation in mm - region (vs) month '),xlabel('months'),ylabel('precipitation');

%% TRMM
data = 'TRMM2015.nc';
lon1_TRMM=ncread(data,'longitude');
lat1_TRMM=ncread(data,'latitude');
tprecip1=ncread(data,'precipitation');
tjune = tprecip1(:,:,153:182);
tjuly = tprecip1(:,:,183:213);
taug = tprecip1(:,:,214:244);
tsep = tprecip1(:,:,245:274);
toct = tprecip1(:,:,275:305);
tnov = tprecip1(:,:,306:335);
tdec = tprecip1(:,:,336:365);
%% imd june for all regions
rain_trmm(1,1) = avg_rain_eval(tjune,lat1_TRMM,lon1_TRMM,26,28,72,74 );
rain_trmm(2,1) = avg_rain_eval(tjune,lat1_TRMM,lon1_TRMM,24,26,84,86 );
rain_trmm(3,1) = avg_rain_eval(tjune,lat1_TRMM,lon1_TRMM,16,18,74,76 );
rain_trmm(4,1) = avg_rain_eval(tjune,lat1_TRMM,lon1_TRMM,10,12,77,79 );
rain_trmm(5,1) = avg_rain_eval(tjune,lat1_TRMM,lon1_TRMM,22,24,76,78 );
rain_trmm(6,1) = avg_rain_eval(tjune,lat1_TRMM,lon1_TRMM,33,35,76,78 );
 
%% imd july for all regions
rain_trmm(1,2) = avg_rain_eval(tjuly,lat1_TRMM,lon1_TRMM,26,28,72,74 );
rain_trmm(2,2) = avg_rain_eval(tjuly,lat1_TRMM,lon1_TRMM,24,26,84,86 );
rain_trmm(3,2) = avg_rain_eval(tjuly,lat1_TRMM,lon1_TRMM,16,18,74,76 );
rain_trmm(4,2) = avg_rain_eval(tjuly,lat1_TRMM,lon1_TRMM,10,12,77,79 );
rain_trmm(5,2) = avg_rain_eval(tjuly,lat1_TRMM,lon1_TRMM,22,24,76,78 );
rain_trmm(6,2) = avg_rain_eval(tjuly,lat1_TRMM,lon1_TRMM,33,35,76,78 );
%% imd aug for all regions
rain_trmm(1,3) = avg_rain_eval(taug,lat1_TRMM,lon1_TRMM,26,28,72,74 );
rain_trmm(2,3) = avg_rain_eval(taug,lat1_TRMM,lon1_TRMM,24,26,84,86 );
rain_trmm(3,3) = avg_rain_eval(taug,lat1_TRMM,lon1_TRMM,16,18,74,76 );
rain_trmm(4,3) = avg_rain_eval(taug,lat1_TRMM,lon1_TRMM,10,12,77,79 );
rain_trmm(5,3) = avg_rain_eval(taug,lat1_TRMM,lon1_TRMM,22,24,76,78 );
rain_trmm(6,3) = avg_rain_eval(taug,lat1_TRMM,lon1_TRMM,33,35,76,78 );
 
%% imd sep for all regions
rain_trmm(1,4) = avg_rain_eval(tsep,lat1_TRMM,lon1_TRMM,26,28,72,74 );
rain_trmm(2,4) = avg_rain_eval(tsep,lat1_TRMM,lon1_TRMM,24,26,84,86 );
rain_trmm(3,4) = avg_rain_eval(tsep,lat1_TRMM,lon1_TRMM,16,18,74,76 );
rain_trmm(4,4) = avg_rain_eval(tsep,lat1_TRMM,lon1_TRMM,10,12,77,79 );
rain_trmm(5,4) = avg_rain_eval(tsep,lat1_TRMM,lon1_TRMM,22,24,76,78 );
rain_trmm(6,4) = avg_rain_eval(tsep,lat1_TRMM,lon1_TRMM,33,35,76,78 );
%% imd oct for all regions
rain_trmm(1,5) = avg_rain_eval(toct,lat1_TRMM,lon1_TRMM,26,28,72,74 );
rain_trmm(2,5) = avg_rain_eval(toct,lat1_TRMM,lon1_TRMM,24,26,84,86 );
rain_trmm(3,5) = avg_rain_eval(toct,lat1_TRMM,lon1_TRMM,16,18,74,76 );
rain_trmm(4,5) = avg_rain_eval(toct,lat1_TRMM,lon1_TRMM,10,12,77,79 );
rain_trmm(5,5) = avg_rain_eval(toct,lat1_TRMM,lon1_TRMM,22,24,76,78 );
rain_trmm(6,5) = avg_rain_eval(toct,lat1_TRMM,lon1_TRMM,33,35,76,78 );
%% imd nov for all regions
rain_trmm(1,6) = avg_rain_eval(tnov,lat1_TRMM,lon1_TRMM,26,28,72,74 );
rain_trmm(2,6) = avg_rain_eval(tnov,lat1_TRMM,lon1_TRMM,24,26,84,86 );
rain_trmm(3,6) = avg_rain_eval(tnov,lat1_TRMM,lon1_TRMM,16,18,74,76 );
rain_trmm(4,6) = avg_rain_eval(tnov,lat1_TRMM,lon1_TRMM,10,12,77,79 );
rain_trmm(5,6) = avg_rain_eval(tnov,lat1_TRMM,lon1_TRMM,22,24,76,78 );
rain_trmm(6,6) = avg_rain_eval(tnov,lat1_TRMM,lon1_TRMM,33,35,76,78 );
%% imd dec for all regions
rain_trmm(1,7) = avg_rain_eval(tdec,lat1_TRMM,lon1_TRMM,26,28,72,74 );
rain_trmm(2,7) = avg_rain_eval(tdec,lat1_TRMM,lon1_TRMM,24,26,84,86 );
rain_trmm(3,7) = avg_rain_eval(tdec,lat1_TRMM,lon1_TRMM,16,18,74,76 );
rain_trmm(4,7) = avg_rain_eval(tdec,lat1_TRMM,lon1_TRMM,10,12,77,79 );
rain_trmm(5,7) = avg_rain_eval(tdec,lat1_TRMM,lon1_TRMM,22,24,76,78 );
rain_trmm(6,7) = avg_rain_eval(tdec,lat1_TRMM,lon1_TRMM,33,35,76,78 );

%% graph region vs months for imd
figure,bar(rain_trmm','DisplayName','rain_trmm'),legend('rajastan','bihar','maharashtra','tamilnadu','madhya pradesh','jammu and kashmir'),title('TRMM -precipitation in mm - region (vs) month '),xlabel('months'),ylabel('precipitation');

%% CMORPH
data1=load('CMORPH2015.mat');
CMORPH2015=data1.CMORPH2015;
data1=load('CMORPH_LAT.mat');
lat1_cmorph=data1.lati;
data1=load('CMORPH_LON.mat');
lon1_cmorph=data1.long;
cprecip1=CMORPH2015;
cjune = cprecip1(:,:,153:182);
cjuly = cprecip1(:,:,183:213);
caug = cprecip1(:,:,214:244);
csep = cprecip1(:,:,245:274);
coct = cprecip1(:,:,275:305);
cnov = cprecip1(:,:,306:335);
cdec = cprecip1(:,:,336:365);
%% imd june for all regions
rain_cmorph(1,1) = avg_rain_eval(cjune,lat1_cmorph,lon1_cmorph,26,28,72,74 );
rain_cmorph(2,1) = avg_rain_eval(cjune,lat1_cmorph,lon1_cmorph,24,26,84,86 );
rain_cmorph(3,1) = avg_rain_eval(cjune,lat1_cmorph,lon1_cmorph,16,18,74,76 );
rain_cmorph(4,1) = avg_rain_eval(cjune,lat1_cmorph,lon1_cmorph,10,12,77,79 );
rain_cmorph(5,1) = avg_rain_eval(cjune,lat1_cmorph,lon1_cmorph,22,24,76,78 );
rain_cmorph(6,1) = avg_rain_eval(cjune,lat1_cmorph,lon1_cmorph,33,35,76,78 );
 
%% imd july for all regions
rain_cmorph(1,2) = avg_rain_eval(cjuly,lat1_cmorph,lon1_cmorph,26,28,72,74 );
rain_cmorph(2,2) = avg_rain_eval(cjuly,lat1_cmorph,lon1_cmorph,24,26,84,86 );
rain_cmorph(3,2) = avg_rain_eval(cjuly,lat1_cmorph,lon1_cmorph,16,18,74,76 );
rain_cmorph(4,2) = avg_rain_eval(cjuly,lat1_cmorph,lon1_cmorph,10,12,77,79 );
rain_cmorph(5,2) = avg_rain_eval(cjuly,lat1_cmorph,lon1_cmorph,22,24,76,78 );
rain_cmorph(6,2) = avg_rain_eval(cjuly,lat1_cmorph,lon1_cmorph,33,35,76,78 );
%% imd aug for all regions
rain_cmorph(1,3) = avg_rain_eval(caug,lat1_cmorph,lon1_cmorph,26,28,72,74 );
rain_cmorph(2,3) = avg_rain_eval(caug,lat1_cmorph,lon1_cmorph,24,26,84,86 );
rain_cmorph(3,3) = avg_rain_eval(caug,lat1_cmorph,lon1_cmorph,16,18,74,76 );
rain_cmorph(4,3) = avg_rain_eval(caug,lat1_cmorph,lon1_cmorph,10,12,77,79 );
rain_cmorph(5,3) = avg_rain_eval(caug,lat1_cmorph,lon1_cmorph,22,24,76,78 );
rain_cmorph(6,3) = avg_rain_eval(caug,lat1_cmorph,lon1_cmorph,33,35,76,78 );
 
%% imd sep for all regions
rain_cmorph(1,4) = avg_rain_eval(csep,lat1_cmorph,lon1_cmorph,26,28,72,74 );
rain_cmorph(2,4) = avg_rain_eval(csep,lat1_cmorph,lon1_cmorph,24,26,84,86 );
rain_cmorph(3,4) = avg_rain_eval(csep,lat1_cmorph,lon1_cmorph,16,18,74,76 );
rain_cmorph(4,4) = avg_rain_eval(csep,lat1_cmorph,lon1_cmorph,10,12,77,79 );
rain_cmorph(5,4) = avg_rain_eval(csep,lat1_cmorph,lon1_cmorph,22,24,76,78 );
rain_cmorph(6,4) = avg_rain_eval(csep,lat1_cmorph,lon1_cmorph,33,35,76,78 );
%% imd oct for all regions
rain_cmorph(1,5) = avg_rain_eval(coct,lat1_cmorph,lon1_cmorph,26,28,72,74 );
rain_cmorph(2,5) = avg_rain_eval(coct,lat1_cmorph,lon1_cmorph,24,26,84,86 );
rain_cmorph(3,5) = avg_rain_eval(coct,lat1_cmorph,lon1_cmorph,16,18,74,76 );
rain_cmorph(4,5) = avg_rain_eval(coct,lat1_cmorph,lon1_cmorph,10,12,77,79 );
rain_cmorph(5,5) = avg_rain_eval(coct,lat1_cmorph,lon1_cmorph,22,24,76,78 );
rain_cmorph(6,5) = avg_rain_eval(coct,lat1_cmorph,lon1_cmorph,33,35,76,78 );
%% imd nov for all regions
rain_cmorph(1,6) = avg_rain_eval(cnov,lat1_cmorph,lon1_cmorph,26,28,72,74 );
rain_cmorph(2,6) = avg_rain_eval(cnov,lat1_cmorph,lon1_cmorph,24,26,84,86 );
rain_cmorph(3,6) = avg_rain_eval(cnov,lat1_cmorph,lon1_cmorph,16,18,74,76 );
rain_cmorph(4,6) = avg_rain_eval(cnov,lat1_cmorph,lon1_cmorph,10,12,77,79 );
rain_cmorph(5,6) = avg_rain_eval(cnov,lat1_cmorph,lon1_cmorph,22,24,76,78 );
rain_cmorph(6,6) = avg_rain_eval(cnov,lat1_cmorph,lon1_cmorph,33,35,76,78 );
%% imd dec for all regions
rain_cmorph(1,7) = avg_rain_eval(cdec,lat1_cmorph,lon1_cmorph,26,28,72,74 );
rain_cmorph(2,7) = avg_rain_eval(cdec,lat1_cmorph,lon1_cmorph,24,26,84,86 );
rain_cmorph(3,7) = avg_rain_eval(cdec,lat1_cmorph,lon1_cmorph,16,18,74,76 );
rain_cmorph(4,7) = avg_rain_eval(cdec,lat1_cmorph,lon1_cmorph,10,12,77,79 );
rain_cmorph(5,7) = avg_rain_eval(cdec,lat1_cmorph,lon1_cmorph,22,24,76,78 );
rain_cmorph(6,7) = avg_rain_eval(cdec,lat1_cmorph,lon1_cmorph,33,35,76,78 );
 
%% graph region vs months for imd
figure,bar(rain_cmorph','DisplayName','rain_cmorph'),legend('rajastan','bihar','maharashtra','tamilnadu','madhya pradesh','jammu and kashmir'),title('CMORPH -precipitation in mm - region (vs) month '),xlabel('months'),ylabel('precipitation');

%% perssian
lon1_perssian=ncread('CDR_2020-09-04084752AM_2016.nc','lon');
lat1_perssian=ncread('CDR_2020-09-04084752AM_2016.nc','lat');
lat1_perssian = sortrows( lat1_perssian );
pprecip1=ncread('CDR_2020-09-04084752AM_2011.nc','precip');
pprecip1 = fliplr( pprecip1 );

pjune = pprecip1(:,:,153:182);
pjuly = pprecip1(:,:,183:213);
paug = pprecip1(:,:,214:244);
psep = pprecip1(:,:,245:274);
poct = pprecip1(:,:,275:305);
pnov = pprecip1(:,:,306:335);
pdec = pprecip1(:,:,336:365);
pdec(pdec<0)=0;

%% imd june for all regions
rain_perssian(1,1) = avg_rain_eval(pjune,lat1_perssian,lon1_perssian,26,28,72,74 );
rain_perssian(2,1) = avg_rain_eval(pjune,lat1_perssian,lon1_perssian,24,26,84,86 );
rain_perssian(3,1) = avg_rain_eval(pjune,lat1_perssian,lon1_perssian,16,18,74,76 );
rain_perssian(4,1) = avg_rain_eval(pjune,lat1_perssian,lon1_perssian,10,12,77,79 );
rain_perssian(5,1) = avg_rain_eval(pjune,lat1_perssian,lon1_perssian,22,24,76,78 );
rain_perssian(6,1) = avg_rain_eval(pjune,lat1_perssian,lon1_perssian,33,35,76,78 );
 
%% imd july for all regions
rain_perssian(1,2) = avg_rain_eval(pjuly,lat1_perssian,lon1_perssian,26,28,72,74 );
rain_perssian(2,2) = avg_rain_eval(pjuly,lat1_perssian,lon1_perssian,24,26,84,86 );
rain_perssian(3,2) = avg_rain_eval(pjuly,lat1_perssian,lon1_perssian,16,18,74,76 );
rain_perssian(4,2) = avg_rain_eval(pjuly,lat1_perssian,lon1_perssian,10,12,77,79 );
rain_perssian(5,2) = avg_rain_eval(pjuly,lat1_perssian,lon1_perssian,22,24,76,78 );
rain_perssian(6,2) = avg_rain_eval(pjuly,lat1_perssian,lon1_perssian,33,35,76,78 );
%% imd aug for all regions
rain_perssian(1,3) = avg_rain_eval(paug,lat1_perssian,lon1_perssian,26,28,72,74 );
rain_perssian(2,3) = avg_rain_eval(paug,lat1_perssian,lon1_perssian,24,26,84,86 );
rain_perssian(3,3) = avg_rain_eval(paug,lat1_perssian,lon1_perssian,16,18,74,76 );
rain_perssian(4,3) = avg_rain_eval(paug,lat1_perssian,lon1_perssian,10,12,77,79 );
rain_perssian(5,3) = avg_rain_eval(paug,lat1_perssian,lon1_perssian,22,24,76,78 );
rain_perssian(6,3) = avg_rain_eval(paug,lat1_perssian,lon1_perssian,33,35,76,78 );
 
%% imd sep for all regions
rain_perssian(1,4) = avg_rain_eval(psep,lat1_perssian,lon1_perssian,26,28,72,74 );
rain_perssian(2,4) = avg_rain_eval(psep,lat1_perssian,lon1_perssian,24,26,84,86 );
rain_perssian(3,4) = avg_rain_eval(psep,lat1_perssian,lon1_perssian,16,18,74,76 );
rain_perssian(4,4) = avg_rain_eval(psep,lat1_perssian,lon1_perssian,10,12,77,79 );
rain_perssian(5,4) = avg_rain_eval(psep,lat1_perssian,lon1_perssian,22,24,76,78 );
rain_perssian(6,4) = avg_rain_eval(psep,lat1_perssian,lon1_perssian,33,35,76,78 );
%% imd oct for all regions
rain_perssian(1,5) = avg_rain_eval(poct,lat1_perssian,lon1_perssian,26,28,72,74 );
rain_perssian(2,5) = avg_rain_eval(poct,lat1_perssian,lon1_perssian,24,26,84,86 );
rain_perssian(3,5) = avg_rain_eval(poct,lat1_perssian,lon1_perssian,16,18,74,76 );
rain_perssian(4,5) = avg_rain_eval(poct,lat1_perssian,lon1_perssian,10,12,77,79 );
rain_perssian(5,5) = avg_rain_eval(poct,lat1_perssian,lon1_perssian,22,24,76,78 );
rain_perssian(6,5) = avg_rain_eval(poct,lat1_perssian,lon1_perssian,33,35,76,78 );
%% imd nov for all regions
rain_perssian(1,6) = avg_rain_eval(pnov,lat1_perssian,lon1_perssian,26,28,72,74 );
rain_perssian(2,6) = avg_rain_eval(pnov,lat1_perssian,lon1_perssian,24,26,84,86 );
rain_perssian(3,6) = avg_rain_eval(pnov,lat1_perssian,lon1_perssian,16,18,74,76 );
rain_perssian(4,6) = avg_rain_eval(pnov,lat1_perssian,lon1_perssian,10,12,77,79 );
rain_perssian(5,6) = avg_rain_eval(pnov,lat1_perssian,lon1_perssian,22,24,76,78 );
rain_perssian(6,6) = avg_rain_eval(pnov,lat1_perssian,lon1_perssian,33,35,76,78 );
%% imd dec for all regions
rain_perssian(1,7) = avg_rain_eval(pdec,lat1_perssian,lon1_perssian,26,28,72,74 );
rain_perssian(2,7) = avg_rain_eval(pdec,lat1_perssian,lon1_perssian,24,26,84,86 );
rain_perssian(3,7) = avg_rain_eval(pdec,lat1_perssian,lon1_perssian,16,18,74,76 );
rain_perssian(4,7) = avg_rain_eval(pdec,lat1_perssian,lon1_perssian,10,12,77,79 );
rain_perssian(5,7) = avg_rain_eval(pdec,lat1_perssian,lon1_perssian,22,24,76,78 );
rain_perssian(6,7) = avg_rain_eval(pdec,lat1_perssian,lon1_perssian,33,35,76,78 );
 
%% graph region vs months for imd
figure,bar(rain_perssian','DisplayName','rain_perssian'),legend('rajastan','bihar','maharashtra','tamilnadu','madhya pradesh','jammu and kashmir'),title('PERSSIAN -precipitation in mm - region (vs) month '),xlabel('months'),ylabel('precipitation');



% month = june;
% des_lowlat = 26;
% des_uplat = 28;
% des_lowlon = 72;
% des_uplon = 74;
% 
% ind5=find(imd_lat1>des_lowlat,1,'first');
% ind6=find(imd_lat1>des_uplat,1,'first');
% latdes=imd_lat1(ind5:ind6,1)
%  
% ind7=find(imd_lon1>des_lowlon,1,'first');
% ind8=find(imd_lon1>des_uplon,1,'first');
% londes=imd_lon1(ind7:ind8,1)
%  
% des=month(ind7:ind8,ind5:ind6,:);
% r1_june=sum(sum(sum(des)))/30;
