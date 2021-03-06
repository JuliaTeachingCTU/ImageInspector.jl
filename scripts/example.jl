using ImageInspector, MLDatasets, Plots

# gray images
x = FashionMNIST.traintensor(1);
plot(
    plot(image(x; flip = true); title = "flip = true"),
    plot(image(x; flip = false); title = "flip = false");
    axis = nothing,
    border = :none,
)

# color images
x1 = FashionMNIST.traintensor(1);
x2 = CIFAR10.traintensor(2);
plot(
    plot(image(x1)),
    plot(image(x2));
    axis = nothing,
    border = :none
)

# imagegrid
xs = FashionMNIST.traintensor(1:10);
plot(imagegrid(xs, 1:10; nrows = 2, sep = 2); axis = nothing, border = :none)

# imageplot
x = CIFAR10.traintensor(1:10);
imageplot(x, 1:10; nrows = 2, sep = 1)
