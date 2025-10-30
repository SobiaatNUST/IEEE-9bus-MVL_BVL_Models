import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

# ===== X-axis values =====
ied_x = np.arange(0, 1.01, 0.1)   # IED failure probability
com_x = np.arange(0, 1.01, 0.1)   # COM failure probability

# ===== Data (% probabilities) =====
ied_y = [0.89, 0.72, 0.57, 0.44, 0.32, 0.22, 0.14, 0.08, 0.04, 0.01, 0.00]
com_y = [0.00, 0.72, 1.43, 2.12, 2.79, 3.45, 4.09, 4.71, 5.32, 5.92, 6.49]

# ===== Plot styling =====
line_width = 8
marker_size = 18
font_size = 28
tick_size = 28
font_name = 'Times New Roman'

# ===== Create Figure =====
fig, ax = plt.subplots(figsize=(18, 15))

# ===== Plot IED vs COM curves =====
ax.plot(ied_x, ied_y, '-o', color="navy",
        linewidth=line_width, markersize=marker_size, label="P4-IED")
ax.plot(com_x, com_y, '--s', color="darkred",
        linewidth=line_width, markersize=marker_size, label="P4-COM")

# ===== Axis labels =====
ax.set_xlabel("Failure Probability", fontsize=font_size, fontname=font_name, labelpad=9)
ax.set_ylabel("False Trip (%)", fontsize=font_size, fontname=font_name, labelpad=9)

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
ax.set_yticklabels([f"{val:.2f}" for val in np.linspace(0, ymax, 6)],
                   fontsize=font_size, fontname=font_name)

# ===== Style (spines & ticks) =====
ax.tick_params(axis='both', which='major', labelsize=tick_size)
for spine in ax.spines.values():
    spine.set_linewidth(5)

# ===== Inset Plot for IED curve =====
inset_ax = ax.inset_axes([0.6, 0.15, 0.35, 0.35])  # inset position
inset_ax.plot(ied_x, ied_y, '-o', color="navy", linewidth=3, markersize=10, label="IED Zoom")

inset_ax.set_title("P4-IED Trend", fontsize=16, fontname=font_name)
#inset_ax.set_xlim([0, 1])
#inset_ax.set_ylim([0, max(ied_y) + 0.2])  # zoomed y-range

inset_ax.set_xlim([0, 1])
inset_ax.set_ylim([0, 1])
inset_ax.set_yticks(np.arange(0, 1.01, 0.2))
inset_ax.yaxis.set_major_formatter(ticker.FormatStrFormatter('%.1f'))
inset_ax.tick_params(axis='both', labelsize=12)





# ===== Legend =====
ax.legend(fontsize=22, frameon=False, loc="best")

# ===== Grid and Save =====
#plt.grid(True, linestyle="--", alpha=0.6)
plt.tight_layout(pad=9.0)
plt.savefig("P4_L1_False_Trip_inset.pdf", format='pdf')
plt.show()
