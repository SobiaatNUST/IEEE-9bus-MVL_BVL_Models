import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

# ===== Fault case labels =====
fc_labels = ["FC1", "FC1-FC2", "FC1-FC3", "FC1-FC4", "FC1-FC5", "FC1-FC6"]
x = np.arange(len(fc_labels))  # numeric positions for plotting

# ===== Data (seconds) =====
properties = {
    "P1": {"MVL": [8.221, 10.039, 11.850, 13.688, 15.602, 17.296],
           "BVL": [8.359, 10.203, 12.023, 13.849, 15.704, 17.498]},
    "P2": {"MVL": [5.265, 7.066, 8.896, 10.704, 12.583, 14.345],
           "BVL": [5.304, 7.155, 8.967, 10.769, 12.632, 14.446]},
    "P3": {"MVL": [10.119, 11.939, 13.745, 15.570, 17.452, 19.193],
           "BVL": [10.124, 11.963, 13.789, 15.611, 17.56, 19.236]},
    "P4": {"MVL": [2.870, 4.704, 6.521, 8.332, 10.210, 11.961],
           "BVL": [2.919, 4.783, 6.604, 8.406, 10.257, 12.063]},
    "P5": {"MVL": [2.742, 4.526, 6.357, 8.168, 10.015, 11.790],
           "BVL": [2.794, 4.621, 6.434, 8.239, 10.094, 11.904]},
    "P6": {"MVL": [3.307, 5.105, 6.929, 8.746, 10.604, 12.387],
           "BVL": [3.366, 5.185, 7.007, 8.809, 10.675, 12.454]},
    "P7": {"MVL": [3.042, 4.847, 6.671, 8.478, 10.314, 12.097],
           "BVL": [3.026, 4.886, 6.687, 8.512, 10.353, 12.133]},
    "P8": {"MVL": [4.902, 6.708, 8.525, 10.361, 12.216, 13.993],
           "BVL": [4.923, 6.759, 8.564, 10.386, 12.239, 14.020]}
}

# ===== Styling =====
line_width = 3
marker_size = 10
font_size = 24
tick_size = 24
font_name = 'Times New Roman'


#line_width = 8
#marker_size = 18
#font_size = 28
#tick_size = 28
#font_name = 'Times New Roman'

# Distinct colors
#colors = ["black", "purple", "brown", "red", "orange", "green", "blue", "gray"]

colors = ["navy", "purple", "brown", "red", "orange", "green", "blue", "teal"]
markers = ["o", "s", "D", "^", "v", ">", "<", "p"]

fig, ax = plt.subplots(figsize=(14, 10))

for (prop, data), color, marker in zip(properties.items(), colors, markers):
    # MVL = solid line
    ax.plot(fc_labels, data["MVL"], linestyle='-', marker=marker, color=color,
            linewidth=line_width-1, markersize=marker_size, label=f"{prop} (MVL)")
    # BVL = dashed line
    ax.plot(fc_labels, data["BVL"], linestyle='--', marker=marker, color=color,
            linewidth=line_width-1, markersize=marker_size, label=f"{prop} (BVL)")

# ===== Axis labels =====
ax.set_xlabel("Fault Scenarios", fontsize=font_size, fontname=font_name, labelpad=9)
ax.set_ylabel("Verification Time (seconds)", fontsize=font_size, fontname=font_name, labelpad=9)

# ===== Ticks =====
ax.tick_params(axis='both', which='major', labelsize=tick_size)
for spine in ax.spines.values():
    spine.set_linewidth(2.5)

# ===== Legend =====
#ax.legend(fontsize=14, frameon=False, loc='upper left', bbox_to_anchor=(1.02, 1), ncol=2)

ax.legend(fontsize=14, frameon=False, loc='best', ncol=2)

# ===== Grid =====
#plt.grid(True, linestyle="--", alpha=0.6)

ax.yaxis.set_major_formatter(ticker.FormatStrFormatter('%.1f'))


#plt.tight_layout()

#plt.tight_layout(rect=[0, 0.05, 1, 1])  # leave extra space at bottom

plt.show()
