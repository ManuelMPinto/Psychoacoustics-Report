### Psychoacoustics Report 1
# Measurement of Critical Bands

## Introduction

Psychoacoustics is a science that investigates how animals, primarily humans, perceive the physical characteristics of sound (Moore 2014; Yost, 2015). The perception of sound is individualistic, but it is also species-specific (Heffner & Heffner, 2007). One practical application of psychoacoustics is the development of hearing aids, where understanding the optimal frequency range is vital (Rosen et al., 1990). In addition, psychoacoustics can be used to test a person's auditory threshold, which would tell, if there has been any damage to a person's hearing or not.

An important concept of psychoacoustics is critical bands, which refers to the range of frequencies within which two tones interfere with each other through auditory masking (Healy & Bacon, 2006). The notch-noise method is a technique that estimates the shape of the auditory filter (Oxenham & Shera, 2003). It is commonly used to measure critical bandwidth, providing insight into how the auditory system processes different frequencies of sound (Oxenham & Shera, 2003). This experiment aims to measure the width of critical bands at two different frequencies using this technique.

## Methods

The goal of the experiment was to measure the width of critical bands at different frequencies. For this, the 2024 version of MATLAB (Mathworks) was used, both for experimental setup and execution, as well as for the analysis of the data. 

To set up the experiment, the program file was opened and generally tested, by playing a test tone and noise, in MATLAB.  Sound level as well as center frequency were then adjusted and set to the wanted values, and the largest possible band width was selected. For this experiment, two different center frequencies (2000 Hz and 4000 Hz) were tested on two examinees respectively. For all experiment runs, the starting tone volume was set to 40 dB, and each participant was tested twice for the same frequency, to ensure accuracy.

After starting the experiment, the sound pressure (in dB) was turned down more and more, until the examinee was no longer able to detect the tones. This was repeated for every gap width (2000, 1040, 560, 320, 160, 80 and 0 Hz for a center frequency of 2000 Hz and 4000, 2080, 960, 480, 320, 160 and 0 for a center frequency of 4000 Hz). In between the different sound pressure levels and band width levels, test noises were played to the examinee from time to time, where no tone was played, to double proof the accuracy of the results. After the band width tests, a tone “in quiet”, meaning without any noise, was played to each examinee, while also lowering the sound pressure until they couldn’t detect the tone anymore. This value was used as a reference threshold.

The sampled thresholds, meaning the sound pressure values (in dB), at which the test subject was last able to detect the tones, were written down with the respective gap/band width (in Hz). This data was transferred to an Excel sheet to further analyze. 

The data analysis was carried out with the latest versions of Microsoft Excel and MATLAB. The data acquired was first organized in a table in Excel, for both 2000 Hz and 4000 Hz, in order to import the file into MATLAB. In MATLAB, the data was read into the program using ‘readtable’ and then manually checked for accuracy. The following treatment of the data was done once per frequency test, to gain two different plots in the end. First, the columns of the table were assigned to their respective values, the frequency gap (Hz) and the two columns of the lowest decibel values perceived by the examinee. Next, the plot was created, containing two lines, one for each examinee, as well as two dashed threshold lines, which resemble the lowest value the test persons perceived of a tone without any noise. In the end, formatting of the plots was conducted, as well as creating a legend.
 
## Results and Discussion

![Figure 1.A.](https://github.com/ManuelMPinto/Psychoacoustics-Report/blob/main/report1/output/2000_Hz.jpg) 
![Figure 1.B.](https://github.com/ManuelMPinto/Psychoacoustics-Report/blob/main/report1/output/4000_Hz.jpg)

*Figure 1. Test tone decibel levels (dB) and noise band gap width; A. 2000 Hz Test tone B. 4000 Hz Test tone*

The first tone, played at 2000 Hz, was tested with a maximum of 2000 Hz gap between the noise bands, as expected, the wider the gap the easier it was to distinguish the test tone from the noise. The effect of the noise in the perception of the test tone exponentially decreases from 0 to a 500 Hz gap width (Figure 1A). It seems like its effect starts plateauing for both subjects at around 2000 Hz width, however, further testing with higher gap widths could be necessary to pinpoint exactly at what point the noise stops having effect on the perception of the test tone.

The second tone, at 4000 Hz, was tested with a maximum of 4000 Hz gap between the noise bands. The effect of noise in the perception of the test tone reduces rapidly, until around 1000 Hz (Figure 1B), where its effect starts to reduce and at around 4000 Hz seems to be plateauing. This means that increasing the gap width has less of an effect on the perception of the test tone than in the previous test.

The results presented in Figure 1 suggest that we could identify the critical bands if the threshold values leveled off, as this would indicate the gap width at which noise no longer affects the perception of the test tone. While some results appear to plateau, none fully do in the plotted data. As a result, we cannot directly determine the critical bands, but we can make estimations based on the trends in the graphs.

From the results obtained, it is possible to estimate that the critical bandwidth of the 2000 Hz tone seems to be a little over 2000 Hz wide for the tested subjects, while the 4000 Hz tone seems to have a critical bandwidth of a little higher than 4000 Hz wide. The obtained results with previously acquired knowledge suggest that the higher the center frequency, the wider the critical bandwidth tends to be (Alves-Pinto et al., 2016). 

## References

Alves-Pinto, A., Sollini, J., Wells, T., & Sumner, C. (2016). Behavioural estimates of auditory filter widths in ferrets using notched-noise maskers. The Journal of the Acoustical Society of America, 139(2), EL19-EL24. https://doi.org/10.1121/1.4941772
Healy, E. W. and Bacon, S. P. (2006). Measuring the critical band for speech. The Journal of the Acoustical Society of America, 119(2), 1083-1091. https://doi.org/10.1121/1.2162176
Heffner, H. E., & Heffner, R. S. (2007). Hearing ranges of laboratory animals. Journal of the American Association for Laboratory Animal Science, 46(1), 20-22.
King, J., Insanally, M., Jin, M. M., Martins, A. R. O., D’amour, J. A., & Froemke, R. C. (2015). Rodent auditory perception: critical band limitations and plasticity. Neuroscience, 296, 55-65. https://doi.org/10.1016/j.neuroscience.2015.03.053
Moore, B. C. (2014). Psychoacoustics. Springer handbook of acoustics, 475-517.
Oxenham, A. J., & Shera, C. A. (2003). Estimates of human cochlear tuning at low levels using forward and simultaneous masking. Journal of the Association for Research in Otolaryngology, 4, 541-554.
Rosen, S., Faulkner, A., & Smith, D. A. (1990). The psychoacoustics of profound hearing impairment. Acta Oto-Laryngologica, 109(sup469), 16-22.
Yost, W. A. (2015). Psychoacoustics: A brief historical overview. Acoustics Today, 11(3), 46-53.
