% Παράδειγμα Χρήσης
% (a) Σήμα με θόρυβο
fs = 1000;
t  = 0:1/fs:1;
x  = sin(2*pi*5*t) + 0.2*randn(size(t));

% (b) Φίλτρο sharpening
h3 = [0,-1,5,-1,0];

% (c) Valid συνέλιξη
y3_valid = convolution1D(x, h3);  % μήκος = Nx − 4

% (d) Οπτικοποίηση
t_valid = t(3:end-2);  % η valid σειρά ξεκινάει από 3ο και τελειώνει στο (T−2)-ιο δείγμα
figure;
plot(t, x, 'b'); hold on;
plot(t_valid, y3_valid, 'r');
legend('x','valid y = convolution1D(x,[0,-1,5,-1,0])');
title('Sharpening (Spike Enhancer) – valid');
xlabel('Χρόνος (s)'); ylabel('Τιμή');