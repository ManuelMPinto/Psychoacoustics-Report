% Close previous graphs generated
close

%% Making plot for 2000Hz

filename = 'Psychoacoustics.xlsx';  % Define the file name
data = readtable('Psychoacoustics.xlsx', 'Sheet', '2000_Hz', 'PreserveVariableNames', true);

% Extract frequency gaps and dB levels
gap_2000Hz = data{:, 1};  % First column: Gap (Hz)
subject1_2000Hz = data{:, 2}; % Subject1's dB values
subject2_2000Hz = data{:, 3}; % Subject2's dB values

% Create the plot
figure;
plot(gap_2000Hz, subject1_2000Hz, '-o', 'LineWidth', 1.5, 'DisplayName', 'Subject1');
hold on;
plot(gap_2000Hz, subject2_2000Hz, '-s', 'LineWidth', 1.5, 'DisplayName', 'Subject2');

threshold_value_subject1 = 10;  % Set the threshold level
line_subject1 = yline(threshold_value_subject1, '--b', 'LineWidth', 1);

threshold_value_subject2 = 6;
line_subject2 = yline(threshold_value_subject2, '--r', 'Linewidth', 1);

text(4000, threshold_value_subject1 + 0.3, sprintf('%d dB', threshold_value_subject1), 'Color', 'b', 'FontSize', 10, 'FontWeight', 'bold');
text(4000, threshold_value_subject2 + 0.3, sprintf('%d dB', threshold_value_subject2), 'Color', 'r', 'FontSize', 10, 'FontWeight', 'bold');

% Set the axis limits
xlim([0 4000]);

% Formatting
xlabel('Gap Width (Hz)');
ylabel('Threshold (dB)');
title('');

legend([findobj(gca, 'DisplayName', 'Subject1'), ...
        findobj(gca, 'DisplayName', 'Subject2'), ...
        line_subject1, line_subject2], ...
       {'Subject1', 'Subject2', 'Silence Threshold Subject1', 'Silence Threshold Subject2'}, 'Location', 'best');

grid on;

