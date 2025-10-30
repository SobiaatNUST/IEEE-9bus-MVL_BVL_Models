import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

# ===== X-axis =====
ied_x = np.arange(0, 1.01, 0.1)
com_x = np.arange(0, 1.01, 0.1)

# ===== Data =====
ied_y = [0.00, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.00, 0.00, 0.00]
com_y = [0.00, 0.01, 0.05, 0.18, 0.44, 0.88, 1.53, 2.42, 3.54, 4.90, 6.49]

# ===== Styling =====
line_width = 8
marker_size = 18
font_size = 28
tick_size = 28
font_name = 'Times New Roman'

# ===== Main Figure =====
fig, ax = plt.subplots(figsize=(18, 15))

# Plot COM data
ax.plot(com_x, com_y, '--s', color="darkred", linewidth=line_width,
        markersize=marker_size, label="P7-COM")

# Plot IED data (main plot as well)
ax.plot(ied_x, ied_y, '-o', color="navy", linewidth=line_width,
        markersize=marker_size, label="P7-IED")

# Axis labels
ax.set_xlabel("Failure Probability", fontsize=font_size, fontname=font_name, labelpad=9)
ax.set_ylabel("False Trip and Risk (%)", fontsize=font_size, fontname=font_name, labelpad=9)

# X-axis and Y-axis ticks
ax.set_xticks(np.arange(0, 1.1, 0.2))
ax.set_xlim([0.001, 1.0])

ymax = max(max(ied_y), max(com_y)) + 0.1 * max(max(ied_y), max(com_y))
ax.set_ylim([0.00, ymax])
ax.set_yticks(np.linspace(0, ymax, 6))

# Format ticks to 2 decimals
ax.xaxis.set_major_formatter(ticker.FormatStrFormatter('%.1f'))
ax.yaxis.set_major_formatter(ticker.FormatStrFormatter('%.2f'))

ax.tick_params(axis='both', which='major', labelsize=tick_size)
for spine in ax.spines.values():
    spine.set_linewidth(5)

# ===== Inset Plot for IED data =====
inset_ax = ax.inset_axes([0.15, 0.40, 0.35, 0.35])  
inset_ax.plot(ied_x, ied_y, '-o', color="navy", linewidth=3,
              markersize=10, label="IED Trend")
inset_ax.set_title("P7-IED Trend", fontsize=16, fontname=font_name)



# Scale inset axis to IED data range

inset_ax.set_xlim([0, 1])
inset_ax.set_ylim([0, 0.02])
inset_ax.set_yticks(np.arange(0, 0.021, 0.01))
inset_ax.yaxis.set_major_formatter(ticker.FormatStrFormatter('%.2f'))
inset_ax.tick_params(axis='both', labelsize=12)



# ===== Legend =====
ax.legend(fontsize=22, frameon=False, loc="best")

# ===== Save & Show =====
#plt.grid(True, linestyle="--", alpha=0.6)
plt.tight_layout(pad=9.0)
plt.savefig("P7_Risk_FalseTrip_inset.pdf", format='pdf')
plt.show()
