import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

ied_x = np.arange(0, 1.01, 0.1)
com_x = np.arange(0, 1.01, 0.1)

ied_y = [0.86, 0.69, 0.55, 0.41, 0.30, 0.21, 0.13, 0.07, 0.03, 0.01, 0.00]
com_y = [0.00, 0.69, 1.27, 1.67, 1.86, 1.81, 1.55, 1.12, 0.63, 0.19, 0.00]

line_width = 8
marker_size = 18
font_size = 28
tick_size = 28
font_name = 'Times New Roman'

fig, ax = plt.subplots(figsize=(18, 15))
ax.plot(ied_x, ied_y, '-o', color="navy", linewidth=line_width, markersize=marker_size,
        label="P5-IED")
ax.plot(com_x, com_y, '--s', color="darkred", linewidth=line_width, markersize=marker_size,
        label="P5-COM")

ax.set_xlabel("Failure Probability", fontsize=font_size, fontname=font_name, labelpad=9)
ax.set_ylabel("False Trip and Isolation (%)", fontsize=font_size, fontname=font_name, labelpad=9)

ax.set_xticks(np.arange(0, 1.1, 0.2))
ax.set_xlim([0.001, 1.0])
ymax = max(max(ied_y), max(com_y)) + 0.1 * max(max(ied_y), max(com_y))
ax.set_ylim([0.001, ymax])
ax.set_yticks(np.linspace(0, ymax, 6))

ax.set_xticklabels([f"{val:.1f}" for val in np.arange(0, 1.1, 0.2)], fontsize=font_size, fontname=font_name)
ax.set_yticklabels([f"{val:.2f}" for val in np.linspace(0, ymax, 6)], fontsize=font_size, fontname=font_name)

ax.tick_params(axis='both', which='major', labelsize=tick_size)
for spine in ax.spines.values():
    spine.set_linewidth(5)

ax.legend(fontsize=22, frameon=False, loc="best")
#plt.grid(True, linestyle="--", alpha=0.6)
plt.tight_layout(pad=9.0)
plt.savefig("P5_Isol_FalseTrip.pdf", format='pdf')
plt.show()
