function vi = myNeuron(x, w, c)
    s = sum(w .* x);


    switch c
     case 'linear'
        y = linear_func (s)

     case 'tanh'
        y = tanh_func(s);

    case 'sigmoid'
        a = rand;
        y = sigmoid_func(a, s);

    case 'threshold'
        y = threshold_func(s);

    otherwise
        disp('Unknown');
    end
end

function y = linear_func(v)
    y = v;
end

function y = tanh_func(v)
    y = (exp(v) - exp(-v)) ./ (exp(v) + exp(-v));
end

function y = sigmoid_func(a, v)
    y = 1 ./ (1 + exp(-a * v));
end

function y = threshold_func(v)
    y = double(v >= 0);
end