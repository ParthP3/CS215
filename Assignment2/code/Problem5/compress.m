% A function to compress data
% Input parameters:
% 1. main_data: The data to be compressed 
% 2. DIM_END: The final dimension required
% Output Parameters:
% 1. compress: The compressed data
% 2. eig_vec: The DIM_END eigen vectors required to extract the data

function [compress, eig_vec] = compress(main_data, DIM_END)
    % First we get the size
    sz = size(main_data);
    data_sz = sz(2);

    % Transpose the main data so that each column represents one sample
    main_data= main_data';

    % Get the eigen values of the covariance matrix
    [V,~] = eig(cov(main_data));
     
    % This gives eigen vectors in increasing order of eigen values and
    % hence for our purposen we take the last DIM_END of them
    eig_vec = V(:,785-DIM_END:784);
    
    % The matrix to store the data to be returned
    compress = zeros(DIM_END,data_sz);
    for m=1:data_sz
        for t=1:DIM_END
            compress(t,m) = main_data(m,:)*eig_vec(:,t);
        end
    end
end