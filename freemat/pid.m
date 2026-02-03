Kp = 2;
Ki = 10;
Kd = 0.01;

dt = 0.01;
endTime = 10-dt;
time = 0:dt:endTime;

pv = zeros(size(time));
%input = sin(time);
input(1) = 0;
j = 1;
for i = 2:1000
    if i < length(time) / 5
        input(i) = 0.1;
    else
        input(i) = 0.1 + 0.01 * j;
        j = j+1;
        if input(i) > 1
            input(i) = 1;
        end
    end
end
integral = 0;
error(1) = 0;
pv(1) = 0;

for i = 2:1000
    error(i) = input(i) - pv(i-1);
    integral = integral + (error(i) * dt);
    derivative = (error(i) - error(i-1)) / dt;
    %if derivative > 10
    %    derivative = 10;
    %end
    %if derivative < -10
    %    derivative = -10;
    %end
    control(i) = (Kp * error(i)) + (Ki * integral) + (Kd * derivative);
    pv(i) = pv(i-1) + (control(i) * dt);
    if rem(i, 100) == 0
        printf('I=%0.2f; D=%0.2f; E=%.2f; Pv=%0.2f\n', integral, derivative, error(i), pv(i));
    end
    %if (control(i) > 400) || (control(i) < -400)
    %    break;
    %end
end

%plot(time, input);
plot(time, input, time, pv, time, control);
%plot(error);
