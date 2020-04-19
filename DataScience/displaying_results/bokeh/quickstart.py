from bokeh.models import HoverTool
from bokeh.plotting import figure, show
from bokeh.plotting import output_file

# prepare some data
x = [0, 1, 2, 3, 4, 5]
y = [0, 1, 4, 9, 16, 25]

# set output to static HTML file
output_file("quad.html")

# create a new plot with a title and axis labels
p = figure(title="x^2 example", x_axis_label='x', y_axis_label='y', active_scroll="wheel_zoom")

# add a line renderer with legend and line thickness
p.line(x, y, legend_label="x-val legend label", line_width=2)


# customize the hover_tool/tooltip

hover_tool = HoverTool(tooltips=[("x val","$x"),("y val","$y")])
hover_tool.point_policy = "snap_to_data"
hover_tool.line_policy = "interp" # interpolate if between data points, makes it more continuous
hover_tool.mode = "vline" #shows value if in line vertically (no need to be directly on top of graph line)

p.add_tools(hover_tool)

# remove tools on the right and logo for clean look
p.toolbar.logo = None
p.toolbar_location = None

# show graph
show(p)

