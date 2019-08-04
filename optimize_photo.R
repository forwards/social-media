# script to "optimize" jpg files in a directory, i.e. reduce to reasonable size to use in blog banner

library(magick)
library(tools)

files <- dir(".", pattern = "jpg")

dir.create("optimized")
for (i in seq_along(files)){
    img <- image_read(files[i])

    # resize to 1000 px width, using Triangle filter for resample
    img <- image_resize(img, geometry_size_pixels(width = 1000),
                        filter = "Triangle")

    # strip metadata (loses date taken, keep here)
    #img <- image_strip(img)

    image_write(img, file.path("optimized", files[i]),
                format = "jpg", quality = 82)
}
