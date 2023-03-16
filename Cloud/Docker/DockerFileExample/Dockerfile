# use ubuntu as base image
FROM ubuntu

# use "workspace as default directory"
WORKDIR /workspace

# copy current directory to workpace dir
COPY . /workspace

# run startup commands (like apt-gets)
RUN touch hi

# Run commands once loaded (like starting services)
CMD ["touch", "$(date)"]
