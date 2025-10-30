import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

# ===== X-axis values =====
ied_x = np.arange(0, 1.01, 0.1)   # IED failure probability
com_x = np.arange(0, 1.01, 0.1)   # COM failure probability

# ===== Data (% probabilities) =====
ied_y = [16.04, 15.78, 15.51, 15.25, 14.99, 14.74, 14.49, 14.24, 13.99, 13.74, 13.50]
com_y = [16.66, 15.78, 14.40, 12.62, 10.52, 8.23, 5.89, 3.68, 1.81, 0.50, 0.00]

# ===== Plot styling =====
line_width = 8
marker_size = 18
font_size = 28
tick_size = 28
font_name = 'Times New Roman'

# ===== Create Figure =====
fig, ax = plt.subplots(figsize=(18, 15))

# ===== Plot IED vs COM curves =====
ax.plot(ied_x, ied_y, linestyle='-', marker='o', color="navy",
        linewidth=line_width, markersize=marker_size, label="P1-IED")
ax.plot(com_x, com_y, linestyle='--', marker='s', color="darkred",
        linewidth=line_width, markersize=marker_size, label="P1-COM")

# ===== Axis labels =====
ax.set_xlabel("Failure Probability", fontsize=font_size, fontname=font_name, labelpad=9)
ax.set_ylabel("Isolation Success (%)", fontsize=font_size, fontname=font_name, labelpad=9)

# ===== X-axis ticks =====
ax.set_xticks(np.arange(0, 1.1, 0.2))
ax.set_xlim([0.001, 1.0])

# ===== Y-axis ticks (scaled with headroom) =====
ymax = max(max(ied_y), max(com_y)) + 0.1 * max(max(ied_y), max(com_y))
ax.set_ylim([0.001, ymax])
ax.set_yticks(np.linspace(0, ymax, 6))

# ===== Tick formatting =====
ax.set_xticklabels([f"{val:.1f}" for val in np.arange(0, 1.1, 0.2)],
                   fontsize=font_size, fontname=font_name)
ax.set_yticklabels([f"{val:.1f}" for val in np.linspace(0, ymax, 6)],
                   fontsize=font_size, fontname=font_name)

# ===== Style (spines & ticks) =====
ax.tick_params(axis='both', which='major', labelsize=tick_size)
ax.spines['top'].set_visible(True)
ax.spines['right'].set_visible(True)
for spine in ax.spines.values():
    spine.set_linewidth(5)

# ===== Legend =====
ax.legend(fontsize=22, frameon=False, loc="best")

# ===== Grid and Save =====
#plt.grid(True, linestyle="--", alpha=0.6)
plt.tight_layout(pad=9.0)
plt.savefig("P1_L1_Isol.pdf", format='pdf')
plt.show()
