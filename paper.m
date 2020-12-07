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
IMD2010 = imd_precip(:,:,1:365);
IMD2011 = imd_precip(:,:,366:730);
IMD2012 = imd_precip(:,:,731:1096);
IMD2013 = imd_precip(:,:,1097:1461);
IMD2014 = imd_precip(:,:,1462:1826);
IMD2015 = imd_precip(:,:,1827:2191);
IMD2016 = imd_precip(:,:,2192:2557);
IMD2017 = imd_precip(:,:,2558:2922);
IMD2018 = imd_precip(:,:,2923:3287);
IMD2019 = imd_precip(:,:,3288:3652);
% plot
precip1 = IMD2015;
for i=153:182
A=precip1(:,:,i);
A(A ==-999) = nan ;
A1(:,:,i)=A;
if i==153
    A2=A;
else
A2=A2+A;
end
end
A2(A2<0)=nan;
A2(A2 > 1200) = 1200;
Rain_imd=A2';
% plotting  total rain fall
figure;subplot(2,3,1);
contourf(imd_lon1,imd_lat1,A2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('june IMD Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% a2_rainydays = find(A2 >0);
% a2_rain = A2(a2_rainydays);
% a2_total = sum(a2_rain)/4952;
%%mask
mask = A2;
mask(mask>0)=1;

for i=183:213
A=precip1(:,:,i);
A(A ==-999) = nan ;
A1(:,:,i)=A;
if i==183
    A2=A;
else
A2=A2+A;
end
end
A2(A2<0)=nan;
A2(A2 > 1000) = 1000;
Rain_imd=A2';
% plotting  total rain fall
subplot(2,3,2);
contourf(imd_lon1,imd_lat1,A2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('july IMD Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% a2_rainydays = find(A2 >0);
% a2_rain = A2(a2_rainydays);
% a2_total = sum(a2_rain)/4952;
%%mask
% mask = A2;
% mask(mask>0)=1;

for i=214:244
A=precip1(:,:,i);
A(A ==-999) = nan ;
A1(:,:,i)=A;
if i==214
    A2=A;
else
A2=A2+A;
end
end
A2(A2<0)=nan;
A2(A2 > 1500) = 1500;
Rain_imd=A2';
% plotting  total rain fall
subplot(2,3,4);
contourf(imd_lon1,imd_lat1,A2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('aug IMD Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% a2_rainydays = find(A2 >0);
% a2_rain = A2(a2_rainydays);
% a2_total = sum(a2_rain)/4952;
% %%mask
% mask = A2;
% mask(mask>0)=1;

for i=245:274
A=precip1(:,:,i);
A(A ==-999) = nan ;
A1(:,:,i)=A;
if i==245
    A2=A;
else
A2=A2+A;
end
end
A2(A2<0)=nan;
A2(A2 > 1000) = 1000;
Rain_imd=A2';
% plotting  total rain fall
subplot(2,3,5);
contourf(imd_lon1,imd_lat1,A2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('sep IMD Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);
% 
% a2_rainydays = find(A2 >0);
% a2_rain = A2(a2_rainydays);
% a2_total = sum(a2_rain)/4952;
% %%mask
% mask = A2;
% mask(mask>0)=1;

for i=153:274
A=precip1(:,:,i);
A(A ==-999) = nan ;
A1(:,:,i)=A;
if i==152
    A2=A;
else
A2=A2+A;
end
end
A2(A2<0)=nan;
A2(A2 > 3000) = 3000;
Rain_imd=A2';
% plotting  total rain fall
subplot(2,3,[3,6]);
contourf(imd_lon1,imd_lat1,A2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('jjas IMD Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% a2_rainydays = find(A2 >0);
% a2_rain = A2(a2_rainydays);
% a2_total = sum(a2_rain)/4952;
% %%mask
% mask = A2;
% mask(mask>0)=1;



%%trmm
data = 'TRMM2015.nc';

lon1_TRMM=ncread(data,'longitude');
lat1_TRMM=ncread(data,'latitude');

tprecip1=ncread(data,'precipitation');

for i=153:182
tA=tprecip1(:,:,i);

tA1(:,:,i)=tA;
if i==153
    tA2=tA;
else
tA2=tA2+tA;
end
end

tA2(tA2 > 1000) =1000;
tA2=tA2(2:136,3:131).*mask;
tRain_trmm=tA2';

% plotting  total rain fall
figure;subplot(2,3,1);
contourf(lon1_TRMM(2:136),lat1_TRMM(3:131),tA2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('june TRMM Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% ta2_rainydays = find(tA2 >0);
% ta2_rain = tA2(ta2_rainydays);
% ta2_total = sum(ta2_rain)/4952;

for i=183:213
tA=tprecip1(:,:,i);

tA1(:,:,i)=tA;
if i==183
    tA2=tA;
else
tA2=tA2+tA;
end
end

tA2(tA2 > 1000) =1000;
tA2=tA2(2:136,3:131).*mask;
tRain_trmm=tA2';

% plotting  total rain fall
subplot(2,3,2);
contourf(lon1_TRMM(2:136),lat1_TRMM(3:131),tA2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('july TRMM Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% ta2_rainydays = find(tA2 >0);
% ta2_rain = tA2(ta2_rainydays);
% ta2_total = sum(ta2_rain)/4952;

for i=214:244
tA=tprecip1(:,:,i);

tA1(:,:,i)=tA;
if i==214
    tA2=tA;
else
tA2=tA2+tA;
end
end

tA2(tA2 > 1000) =1000;
tA2=tA2(2:136,3:131).*mask;
tRain_trmm=tA2';

% plotting  total rain fall
subplot(2,3,4);
contourf(lon1_TRMM(2:136),lat1_TRMM(3:131),tA2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('aug TRMM Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% ta2_rainydays = find(tA2 >0);
% ta2_rain = tA2(ta2_rainydays);
% ta2_total = sum(ta2_rain)/4952;

for i=245:273
tA=tprecip1(:,:,i);

tA1(:,:,i)=tA;
if i==245
    tA2=tA;
else
tA2=tA2+tA;
end
end

tA2(tA2 > 1000) =1000;
tA2=tA2(2:136,3:131).*mask;
tRain_trmm=tA2';

% plotting  total rain fall
subplot(2,3,5);
contourf(lon1_TRMM(2:136),lat1_TRMM(3:131),tA2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('sep TRMM Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);
% 
% ta2_rainydays = find(tA2 >0);
% ta2_rain = tA2(ta2_rainydays);
% ta2_total = sum(ta2_rain)/4952;

for i=153:274
tA=tprecip1(:,:,i);

tA1(:,:,i)=tA;
if i==153
    tA2=tA;
else
tA2=tA2+tA;
end
end

tA2(tA2 > 2000) =2000;
tA2=tA2(2:136,3:131).*mask;
tRain_trmm=tA2';

% plotting  total rain fall
subplot(2,3,[3,6]);
contourf(lon1_TRMM(2:136),lat1_TRMM(3:131),tA2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('jjas TRMM Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% ta2_rainydays = find(tA2 >0);
% ta2_rain = tA2(ta2_rainydays);
% ta2_total = sum(ta2_rain)/4952;



%%cmorph
data1=load('CMORPH2015.mat');
CMORPH2015=data1.CMORPH2015;
data1=load('CMORPH_LAT.mat');
lat1_cmorph=data1.lati;
data1=load('CMORPH_LON.mat');
lon1_cmorph=data1.long;

cprecip1=CMORPH2015;

for i=153:182
cA=cprecip1(:,:,i);
cA(cA ==-99) = nan ;
cA1(:,:,i)=cA;
if i==153
    cA2=cA;
else
cA2=cA2+cA;
end
end

cA2(cA2 > 1000) = 1000;
cA2=cA2(2:136,3:131).*mask;

cRain_imd=cA2';
% plotting  total rain fall
figure;subplot(2,3,1);

contourf(lon1_cmorph(2:136),lat1_cmorph(3:131),cA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('june cmorph Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);
% 
% ca2_rainydays = find(cA2 >0);
% ca2_rain = cA2(ca2_rainydays);
% ca2_total = sum(ca2_rain)/4952;

for i=183:213
cA=cprecip1(:,:,i);
cA(cA ==-99) = nan ;
cA1(:,:,i)=cA;
if i==183
    cA2=cA;
else
cA2=cA2+cA;
end
end

cA2(cA2 > 1000) = 1000;
cA2=cA2(2:136,3:131).*mask;

cRain_imd=cA2';
% plotting  total rain fall
subplot(2,3,2);
contourf(lon1_cmorph(2:136),lat1_cmorph(3:131),cA2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('july cmorph Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% ca2_rainydays = find(cA2 >0);
% ca2_rain = cA2(ca2_rainydays);
% ca2_total = sum(ca2_rain)/4952;

for i=214:244
cA=cprecip1(:,:,i);
cA(cA ==-99) = nan ;
cA1(:,:,i)=cA;
if i==214
    cA2=cA;
else
cA2=cA2+cA;
end
end

cA2(cA2 > 1000) = 1000;
cA2=cA2(2:136,3:131).*mask;

cRain_imd=cA2';
% plotting  total rain fall
subplot(2,3,4);

contourf(lon1_cmorph(2:136),lat1_cmorph(3:131),cA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('aug cmorph Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% ca2_rainydays = find(cA2 >0);
% ca2_rain = cA2(ca2_rainydays);
% ca2_total = sum(ca2_rain)/4952;

for i=245:274
cA=cprecip1(:,:,i);
cA(cA ==-99) = nan ;
cA1(:,:,i)=cA;
if i==245
    cA2=cA;
else
cA2=cA2+cA;
end
end

cA2(cA2 > 1000) = 1000;
cA2=cA2(2:136,3:131).*mask;

cRain_imd=cA2';
% plotting  total rain fall
subplot(2,3,5);

contourf(lon1_cmorph(2:136),lat1_cmorph(3:131),cA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('sep cmorph Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% ca2_rainydays = find(cA2 >0);
% ca2_rain = cA2(ca2_rainydays);
% ca2_total = sum(ca2_rain)/4952;

for i=153:274
cA=cprecip1(:,:,i);
cA(cA ==-99) = nan ;
cA1(:,:,i)=cA;
if i==153
    cA2=cA;
else
cA2=cA2+cA;
end
end

cA2(cA2 > 2000) = 2000;
cA2=cA2(2:136,3:131).*mask;

cRain_imd=cA2';
% plotting  total rain fall
subplot(2,3,[3,6]);

contourf(lon1_cmorph(2:136),lat1_cmorph(3:131),cA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('jjas cmorph Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

% ca2_rainydays = find(cA2 >0);
% ca2_rain = cA2(ca2_rainydays);
% ca2_total = sum(ca2_rain)/4952;

%%persian
lon1_perssian=ncread('CDR_2020-09-04084752AM_2016.nc','lon');
lat1_perssian=ncread('CDR_2020-09-04084752AM_2016.nc','lat');
lat1_perssian = sortrows( lat1_perssian );
pprecip1=ncread('CDR_2020-09-04084752AM_2011.nc','precip');
pprecip1 = fliplr( pprecip1 );
for i=153:183
pA=pprecip1(:,:,i);
% A(A ==-999) = nan ;
pA1(:,:,i)=pA;
if i==153
    pA2=pA;
else
pA2=pA2+pA;
end
end
pA2(pA2<0)=nan;
pA2=pA2(:,1:129).*mask(1:131,:);
pA2(pA2 > 1000) = 1000;
pRain_imd=pA2';
% plotting  total rain fall
figure;subplot(2,3,1);

contourf(lon1_perssian,lat1_perssian(1:129),pA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('june per Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);


% pa2_rainydays = find(pA2 >0);
% pa2_rain = pA2(pa2_rainydays);
% pa2_total = sum(pa2_rain)/4952;

for i=183:213
pA=pprecip1(:,:,i);
% A(A ==-999) = nan ;
pA1(:,:,i)=pA;
if i==183
    pA2=pA;
else
pA2=pA2+pA;
end
end
pA2(pA2<0)=nan;
pA2=pA2(:,1:129).*mask(1:131,:);
pA2(pA2 > 1000) = 1000;
pRain_imd=pA2';
% plotting  total rain fall
subplot(2,3,2);

contourf(lon1_perssian,lat1_perssian(1:129),pA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('july per Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);


% pa2_rainydays = find(pA2 >0);
% pa2_rain = pA2(pa2_rainydays);
% pa2_total = sum(pa2_rain)/4952;
for i=214:244
pA=pprecip1(:,:,i);
% A(A ==-999) = nan ;
pA1(:,:,i)=pA;
if i==214
    pA2=pA;
else
pA2=pA2+pA;
end
end
pA2(pA2<0)=nan;
pA2=pA2(:,1:129).*mask(1:131,:);
pA2(pA2 > 1000) = 1000;
pRain_imd=pA2';
% plotting  total rain fall
subplot(2,3,4);

contourf(lon1_perssian,lat1_perssian(1:129),pA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('aug per Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);


% pa2_rainydays = find(pA2 >0);
% pa2_rain = pA2(pa2_rainydays);
% pa2_total = sum(pa2_rain)/4952;
for i=245:274
pA=pprecip1(:,:,i);
% A(A ==-999) = nan ;
pA1(:,:,i)=pA;
if i==245
    pA2=pA;
else
pA2=pA2+pA;
end
end
pA2(pA2<0)=nan;
pA2=pA2(:,1:129).*mask(1:131,:);
pA2(pA2 > 1000) = 1000;
pRain_imd=pA2';
% plotting  total rain fall
subplot(2,3,5);

contourf(lon1_perssian,lat1_perssian(1:129),pA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('sep per Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);


% pa2_rainydays = find(pA2 >0);
% pa2_rain = pA2(pa2_rainydays);
% pa2_total = sum(pa2_rain)/4952;
for i=153:274
pA=pprecip1(:,:,i);
% A(A ==-999) = nan ;
pA1(:,:,i)=pA;
if i==153
    pA2=pA;
else
pA2=pA2+pA;
end
end
pA2(pA2<0)=nan;
pA2=pA2(:,1:129).*mask(1:131,:);
pA2(pA2 > 2000) = 2000;
pRain_imd=pA2';
% plotting  total rain fall
subplot(2,3,[3,6]);

contourf(lon1_perssian,lat1_perssian(1:129),pA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('jjas per Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);


% pa2_rainydays = find(pA2 >0);
% pa2_rain = pA2(pa2_rainydays);
% pa2_total = sum(pa2_rain)/4952;
%%
for i=1:365
A=precip1(:,:,i);
A(A ==-999) = nan ;
A1(:,:,i)=A;
if i==1
    A2=A;
else
A2=A2+A;
end
end
A2(A2<0)=nan;
A2(A2 > 3000) = 3000;
Rain_imd=A2';
% plotting  total rain fall
figure,subplot(2,2,1);
contourf(imd_lon1,imd_lat1,A2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('IMD Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

a2_rainydays = find(A2 >0);
a2_rain = A2(a2_rainydays);
a2_total = sum(a2_rain)/4952;
for i=1:365
tA=tprecip1(:,:,i);

tA1(:,:,i)=tA;
if i==1
    tA2=tA;
else
tA2=tA2+tA;
end
end

tA2(tA2 > 3000) =3000;
tA2=tA2(2:136,3:131).*mask;
tRain_trmm=tA2';

% plotting  total rain fall
subplot(2,2,2);
contourf(lon1_TRMM(2:136),lat1_TRMM(3:131),tA2','LineStyle','none');
colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title(' TRMM Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

ta2_rainydays = find(tA2 >0);
ta2_rain = tA2(ta2_rainydays);
ta2_total = sum(ta2_rain)/4948;

for i=1:365
cA=cprecip1(:,:,i);
cA(cA ==-99) = nan ;
cA1(:,:,i)=cA;
if i==1
    cA2=cA;
else
cA2=cA2+cA;
end
end

cA2(cA2 > 3000) = 3000;
cA2=cA2(2:136,3:131).*mask;

cRain_imd=cA2';
% plotting  total rain fall
subplot(2,2,3);

contourf(lon1_cmorph(2:136),lat1_cmorph(3:131),cA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);

 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('cmorph Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);

ca2_rainydays = find(cA2 >0);
ca2_rain = cA2(ca2_rainydays);
ca2_total = sum(ca2_rain)/4929;


for i=1:365
pA=pprecip1(:,:,i);
% A(A ==-999) = nan ;
pA1(:,:,i)=pA;
if i==1
    pA2=pA;
else
pA2=pA2+pA;
end
end
pA2(pA2<0)=nan;
pA2=pA2(:,1:129).*mask(1:131,:);
pA2(pA2 > 3000) = 3000;
pRain_imd=pA2';
% plotting  total rain fall
subplot(2,2,4);
contourf(lon1_perssian,lat1_perssian(1:129),pA2','LineStyle','none');

colorbar;
hold on;
xlim([65 105]); ylim([0 40]);


 for j=1:r
     plot(s1(j,1).X,s1(j,1).Y,'LineWidth',2,'color',[0 0 0]);  
 end
title('per Rainfall');

grid on;
set(gca,'XColor', [0 0 0],'YColor',[0 0 0],'ZColor',[0 0 0]);


pa2_rainydays = find(pA2 >0);
pa2_rain = pA2(pa2_rainydays);
pa2_total = sum(pa2_rain)/4948;

%%scatter plot
figure,scatter(a2_rain(1:4929),ta2_rain(1:4929));title('scatter plot b/ imd-trmm');
trmm=corrcoef(a2_rain(1:4929),ta2_rain(1:4929))
figure,scatter(a2_rain(1:4929),ca2_rain(1:4929));title('scatter plot b/ imd-trmm');
cmr=corrcoef(a2_rain(1:4929),ca2_rain(1:4929))
figure,scatter(a2_rain(1:4929),pa2_rain(1:4929));title('scatter plot b/ imd-trmm');
pers=corrcoef(a2_rain(1:4929),pa2_rain(1:4929))
