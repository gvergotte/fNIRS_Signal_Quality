%% SCI and Power



similarity = xcorr(filtered_nirs_data1(:,col),filtered_nirs_data2(:,col),'unbiased');
 similarity=length(filtered_nirs_data1(:,col))*similarity./sqrt(sum(abs(filtered_nirs_data1(:,col)).^2)*sum(abs(filtered_nirs_data2(:,col)).^2));  
 [pxx,f] = periodogram(similarity,hamming(length(similarity)),length(similarity),handles.fs,'power'); 
[pwrest,idx] = max(pxx(f<fcut_max)); 
sci = similarity(length(filtered_nirs_data1(1:end,i))); 
power = pwrest;