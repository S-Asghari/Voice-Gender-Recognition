% read audio files from a folder
audioFiles = dir(fullfile('C:\Users\Sara\Desktop\Term6\signal\project_g2\project_g2\voices\','*.mp3'));

    for k=1:numel(audioFiles)
        fName=audioFiles(k).name;        
        x=strcat('C:\Users\Sara\Desktop\Term6\signal\project_g2\project_g2\voices\',fName);
        
% find peak frequency
        hz =findPeak(x);
        
        
        man_dif = abs(hz - 122 )
        woman_dif = abs(hz - 212 )
        
%         if difference from man average is bigger then voice is for a
%         woman and vice versa 

        if man_dif > woman_dif 
               newLable=strcat('C:\Users\Sara\Desktop\Term6\signal\project_g2\project_g2\voices\','woman-',fName);
                copyfile(x,newLable);
        else
                newLable=strcat('C:\Users\Sara\Desktop\Term6\signal\project_g2\project_g2\voices\','man-',fName);
                copyfile(x,newLable); 
        end
    end
