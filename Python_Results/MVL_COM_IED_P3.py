import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

ied_x = np.arange(0, 1.01, 0.1)
com_x = np.arange(0, 1.01, 0.1)

ied_y = [0.17, 0.30, 0.48, 0.69, 0.94, 1.23, 1.55, 1.91, 2.30, 2.72, 3.17]
com_y = [0.00, 0.30, 1.14, 2.62, 4.71, 7.23, 9.93, 12.49, 14.65, 16.12, 16.67]

line_width = 8
marker_size = 18
font_size = 28
tick_size = 28
font_name = 'Times New Roman'

fig, ax = plt.subplots(figsize=(18, 15))
ax.plot(ied_x, ied_y, '-o', color="navy", linewidth=line_width, markersize=marker_size, label="P3_IED")
ax.plot(com_x, com_y, '--s', color="darkred", linewidth=line_width, markersize=marker_size, label="P3-COM")

ax.set_xlabel("Failure Probability", fontsize=font_size, fontname=font_name, labelpad=9)
ax.set_ylabel("Risk (%)", fontsize=font_size, fontname=font_name, labelpad=9)

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
plt.savefig("P3_L1_Risk.pdf", format='pdf')
plt.show()
