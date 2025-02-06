# Load the PDB structure
load open_Calpha.pdb

# Load the aligned trajectory
load_traj filtered_open_force_aligned.dcd

# Run modevectors.py (ensures the plugin is loaded for vector visualization)
run modevectors.py

# Split trajectory into states for porcupine plot generation
split_states "open_Calpha", 1, 20001

# Generate mode vectors (porcupine plot) with specific visualization options
modevectors "open_Calpha_0001", "open_Calpha_0201", cutoff=0.0, head_length=2, head=0.4, headrgb=(1, 0.2, 0.1), tailrgb=(1, 0.2, 0.1), notail=0

# Enhance the visualization of the structure
set cartoon_trace, 1
set cartoon_tube_radius, 0.3

# Disable all other objects for clarity
cmd.disable('all')

# Enable the specific states and the mode vectors for visualization
cmd.enable('open_Calpha_0001', 1)
cmd.enable('modevectors', 1)

# Disable ray tracing shadow for a clearer plot
set ray_shadow, 0

# Save the session with the name of the structure for clarity
save open_force.pse, format=pse
