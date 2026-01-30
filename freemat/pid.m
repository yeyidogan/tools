Kp = 0.11;
Ki = 1;
Kd = 0.1;

dt = 0.01;
endTime = 10;
time = 0:dt:endTime;

output = zeros(size(time));
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
input(length(time)) = 1.1;
integral = 0;
error(1) = 0;

for i = 2:1000
    error(i) = input(i) - output(i-1);
    integral = integral + (error(i) * dt);
    derivative = (error(i) - error(i-1)) / dt;
    if derivative > 10
        derivative = 10;
    end
    if derivative < -10
        derivative = -10;
    end
    output(i) = (Kp * error(i)) + (Ki * integral) + (Kd * derivative);
    if rem(i, 100) == 0
        printf('I=%0.2f; D=%0.2f; E=%.2f;\n', integral, derivative, error(i));
    end
    if (output(i) > 400) || (output(i) < -400)
        break;
    end
end

%plot(time, input);
plot(time, input, time, output);
%plot(error);
