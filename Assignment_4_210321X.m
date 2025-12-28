hhconst;

%% 1. Threshold


amp1 = 6; 
width1 = 1; 
hhmplot(0,50,0);
amp1 = 7; 
hhmplot(0,50,1);
%% Question 01

amp1=6;
width1=1;
disp(amp1);
for n= 1:6
    amp1=(amp1+7)/2;
    hhmplot(0,50,1);
    disp(amp1);
end

% Action potentials for the above values
% Based on the presented data in amp1, it is evident that all values up to 6.9375 do not
% surpass the threshold. Only the value 6.9688 surpasses the threshold. So, among the given
% values, 6.9688 is the amplitude that meets the threshold requirement.

amp1=6.93;
width1=1;
for n= 1:5
    hhmplot(0,50,1);
    disp(amp1);
    amp1=(amp1+0.01);
end

% Based on these plots, the threshold value is 6.96 uAcm^(-2)

%Question 02


amp1 = 6.9;
for n=1:7
     [qna, qk, ql] = hhsplot(0, 50);
     display(amp1);
     
     Jiedt = width1 * amp1;
     Jkdt= qna + qk + ql;
     
     fprintf('\n');
     fprintf('Int_Jie: %f\n', Jiedt);
     fprintf('Int_Sigma_Jk: %f\n', Jkdt);
     fprintf('\n');
     
     amp1 = amp1 + 0.01;
end

% From the above values it is evident that ∫(t0 to tf) ∑Jk dt and ∫(t0 to tf) Jei dt are equal

%2. Refractoriness
%Question 3
%Obtained 𝐼2𝑡ℎ for delay of 25ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 25;
amp2 = 13.4;
width2 = 0.5;
hhsplot(0,35);

%13.4 uAcm^(-2) is not enough to elicit an action potential. So by increasing the value for
%amp2, threshold value should be found.

amp1 = 26.8;
width1 = 0.5;
delay2 = 25;
amp2 = 13.7;
width2 = 0.5;
hhsplot(0,35);

%Obtained 𝐼2𝑡ℎ for delay of 20ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 20;
amp2 = 11.6;
width2 = 0.5;
disp("Threshold value: " + amp2);
hhsplot(0,35);

%Obtained 𝐼2𝑡ℎ for delay of 18ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 18;
amp2 = 11.3;
width2 = 0.5;
disp("Threshold value: " + amp2);
hhsplot(0,35);

%Obtained 𝐼2𝑡ℎ for delay of 16ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 16;
amp2 = 12.7;
width2 = 0.5;
disp("Threshold value: " + amp2);
hhsplot(0,35);

%Obtained 𝐼2𝑡ℎ for delay of 14ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 14;
amp2 = 17;
width2 = 0.5;
disp("Threshold value: " + amp2);
hhsplot(0,35);

%Obtained 𝐼2𝑡ℎ for delay of 12ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 12;
amp2 = 25.5;
width2 = 0.5;
disp("Threshold value: " + amp2);
hhsplot(0,35);

%Obtained 𝐼2𝑡ℎ for delay of 10ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 10;
amp2 = 40.8;
width2 = 0.5;
disp("Threshold value: " + amp2);
hhsplot(0,35);

%Obtained 𝐼2𝑡ℎ for delay of 8ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 8;
amp2 = 70.1;
width2 = 0.5;
disp("Threshold value: " + amp2);
hhsplot(0,35);

%Obtained 𝐼2𝑡ℎ for delay of 6ms

amp1 = 26.8;
width1 = 0.5;
delay2 = 6;
amp2 = 145.2;
width2 = 0.5;
disp("Threshold value: " + amp2);
hhsplot(0,35);

%Threshold values and the ratio I2th/I1th with respective delay

delay_2 = [6, 8, 10, 12, 14, 16, 18, 20, 25];
I2th = [145.2, 70.1, 40.8, 25.5, 17, 12.7, 11.3, 11.6, 13.7];
I1th = 26.8 * ones(size(I2th));
Ratio = I2th ./ I1th;
% Display the table
disp(table(delay_2', I2th', Ratio', 'VariableNames', {'Delay_2', 'Second_Impulse',

% Question 04
%Plot of the ratio 𝐼2𝑡ℎ/ 𝐼1𝑡ℎ as a function of inter-pulse interval

delay2=[6 8 10 12 14 16 18 20 25];
Ratio=[145.2 70.1 40.8 25.5 17 12.7 11.3 11.6 13.7]./26.8;
figure;
plot(delay2,Ratio,'*-');
xlabel("delay2");
ylabel('ratio');
grid on;
xlim([6, 25])
title('𝐼_{2𝑡ℎ}/ 𝐼_{1𝑡ℎ} as a function of inter-pulse interval')

%Absolute refractory period- from 0ms to 6ms : The absolute refractory period,
%denoted by the absence of a second action potential regardless of stimulus intensity, is
%characterized by a region where the ratio 𝐼2th/𝐼1th becomes infinite. This region
%signifies the period during which the neuron is unresponsive to additional stimuli due to
%the refractory state induced by the preceding action potential. The graph illustrates an
%exponential increase in current as the time delay decreases. Notably, at a time delay of 6
%ms, the value is more than five times the current, indicating a relatively substantial delay.
%This prolonged delay signifies the absolute refractory period, estimated at 6 ms.

%Relative refractory period- from 6ms to 10ms: Conversely, the relative refractory
%period, distinguished by a progressively increasing threshold for eliciting a second
%action potential, manifests as a region where the ratio I2th𝐼I1th exceeds 1 but decreases
%as the inter-pulse interval increases. Beyond the 6 ms mark, it becomes evident that the
%value surpasses the current at 10 ms for the first instance. Consequently, the relative
%refractory period extends to 10 ms.

%% 3. Repetitive activity
%Long duration supra-threshold currents elicit multiple action potentials, a phenomenon
%called repetitive activity.
%%Question 05

%Stimulating current amplitude= 5 µAcm^-2

amp1=5;
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);

%Stimulating current amplitude= 10 µAcm^-2
amp1=10;
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);

%Stimulating current amplitude= 20 µAcm^-2

amp1=20;
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);

%Stimulating current amplitude= 30 µAcm^-2

amp1=30;
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);

%Stimulating current amplitude= 50 µAcm^-2

amp1=50;
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);

%Stimulating current amplitude= 70 µAcm^-2

amp1=70;
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);

Amplitudes = [5, 10, 20, 30, 50, 70, 100]; % Stimulating current amplitudes (µA/cm^
No_of_AP = [1, 6, 7, 8, 10, 11, 12]; % Number of action potentials observed within 
stim_duration_s = 80 / 1000;
AP_frequency = No_of_AP / stim_duration_s; % Action potential frequencies (Hz)
T = table(Amplitudes', No_of_AP', AP_frequency', ...
 'VariableNames', {'Amplitude', 'No_of_Action_Potentials', 'Frequency'});
disp(T);

%Plotting action potential frequency as a function of stimulating current
%amplitude.

Amplitudes = [5, 10, 20, 30, 50, 70, 100];
No_of_AP = [1, 6, 7, 8, 10, 11, 12];
stim_duration_s = 80 / 1000;
AP_frequency = No_of_AP / stim_duration_s;
T = table(Amplitudes', No_of_AP', AP_frequency', ...
 'VariableNames', {'Amplitude', 'No_of_Action_Potentials', 'Frequency'});
disp(T);

figure;
plot(Amplitudes, AP_frequency, 'x-');
xlabel('Stimulating current amplitude (µA/cm^2)');
ylabel('Action Potential Frequency (Hz)');
title('Action Potential Frequency as a Function of Stimulating Current Amplitude');
grid on;

% Observations:
% Amplitude of Action Potentials: As stimulus intensity or amplitude increases, the
% amplitude of action potentials decreases.
% Action Potential Frequency: Conversely, when stimulus intensity or amplitude
% increases, the frequency of action potentials increases.

%Qusetion 06
%Stimulating current amplitude = 200 µAcm^-2. This result is known as a depolarisation
%block.

amp1=200;
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);

% In response to increased electrical current intensity, the neuron undergoes depolarization,
%primarily mediated by the opening of voltage-gated sodium channels (referred to as the "m"
%factor). This depolarization leads to a rapid influx of sodium ions into the neuron, initiating
%an action potential. However, heightened depolarization also affects the "h" factor, which
%regulates the activation and inactivation of sodium channels. As membrane potential
%increases, the "h" factor becomes more pronounced, causing the inactivation of a portion of
%sodium channels. This results in fewer sodium channels available to contribute to the rising
%phase of the action potential, leading to a diminished amplitude.

%Moreover, the "n" factor in the Hodgkin-Huxley equations represents the activation state for
%potassium channels, crucial for repolarizing the neuron's membrane. At extremely high levels
%of depolarization, the "n" factor decreases significantly, leading to reduced potassium
%channel activity. Consequently, the repolarization process is hindered by the "h" factors, as
%potassium ions remain inactive, thus maintaining the membrane voltage in a depolarized
%state.

%In summary, heightened depolarization not only influences sodium channel dynamics
%through the "m" and "h" factors but also affects potassium channel activity via the "n" factor.
%These interactions contribute to the mo

%Question 07

%4. Temperature dependence

%The effects of the following temperatures on the duration and amplitude of the resulting
%action potential: 0, 5, 10, 15, 20, 24, 25, 26 and 30 Celsius

vc1amp = 0;
amp1 = 20;
width1 = 0.5;
tempc = 0;
hhmplot(0,30,0);
hhsplot(0,30)

tempc = 5;
hhmplot(0,30,1);

tempc = 10;
hhmplot(0,30,2);

tempc = 15;
hhmplot(0,30,3);

tempc = 20;
hhmplot(0,30,4);

tempc = 24;
hhmplot(0,30,5);

tempc = 25;
hhmplot(0,30,6);

tempc = 26;
hhmplot(0,30,7);

tempc = 30;
hhmplot(0,30,8);

%Observations
%Amplitude of action potential decreases with the increase in temperature

%Features of the action potential tha are affected by increasing temperature

%Increasing temperature affects various features of the action potential. Some of the key
%effects of temperature on action potentials include:

%Action Potential Duration: The duration of the action potential can decrease with
%increasing temperature. At temperatures below approximately 37°C, the afterhyperpolarization (AHP) duration decreases slowly, while it decreases rapidly for higher
%temperatures. This change in duration can impact the overall firing pattern of neurons.

%Firing Rate: Temperature can influence the firing rate of neurons. Warm-induced
%increases in temperature can lead to a substantial increase in firing rate in warm- Out[56]: Out[56]:
%sensitive neurons, while the firing rate of temperature-insensitive neurons may be less
%affected by temperature changes.

%Amplitude: Changes in temperature can affect the amplitude of action potentials.
%Warming can decrease the action potential amplitudes, while cooling can increase them.
%This alteration in amplitude can impact the strength and efficiency of signal

%transmission.
%Threshold: Temperature can influence the threshold for action potential generation.
%Cooling can increase the threshold for impulse propagation, making it more difficult for
%the impulse to supply the necessary charge for excitation of the region ahead.
%Conversely, warming can cause a transient hyperpolarization, affecting the threshold
%stimulus required for excitation.

%Refractory Period: The relative refractory period, which is the period after an action
%potential during which the threshold is elevated, is highly sensitive to temperature
%changes. Cooling can increase the relative refractory period, affecting the neuron's
%ability to generate subsequent action potentials.
%Conductance and Channel Gating: Temperature affects the kinetics of channel gating,
%including the rates at which ion channels open, close, and inactivate. The speed of ionic

%conductances turning on and off is influenced by temperature changes, impacting the
%overall dynamics of action potential generation. In summary, increasing temperature can
%have significant effects on the duration, firing rate, amplitude, threshold, refractory
%period, and ion conductances of action potentials. These temperature-induced changes
%play a crucial role in modulating the excitability and signaling properties of neurons