function avg_rain = avg_rain_eval( month,lat,lon,des_lowlat,des_uplat,des_lowlon,des_uplon )
[a,b,c]=size(month);
ind5=find(lat>des_lowlat,1,'first');
ind6=find(lat>des_uplat,1,'first');
latdes=lat(ind5:ind6,1)
 
ind7=find(lon>des_lowlon,1,'first');
ind8=find(lon>des_uplon,1,'first');
londes=lon(ind7:ind8,1)
 
des=month(ind7:ind8,ind5:ind6,:);
avg_rain=sum(sum(sum(des)))/c;
end

