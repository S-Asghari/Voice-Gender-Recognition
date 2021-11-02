function [max_x] = findPeak(address)
[data, fs] = audioread(address);
N = length(data);
hz = linspace(0, fs, N);
power = abs(fft(data)/N).^2;

max_x = 0;
max_y = 0;

for i=1:length(power) 
    if power(i, 1) > max_y
        max_y = power(i, 1);
        max_x = hz(1, i);
    end
end

end
