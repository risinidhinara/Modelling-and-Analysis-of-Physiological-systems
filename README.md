# Modelling and Analysis of Physiological Systems ✅

**Overview**

This repository collects MATLAB/Simulink models, live scripts (.mlx), analysis scripts (.m), and reports used in coursework and projects exploring compartmental models (iodine, insulin–glucose), biosignal processing, and neuronal models.

---

## Project structure 📁

- `investigate_compartmental_systems/` — Central workspace for compartmental analyses. Contains:
  - MATLAB live scripts: `assignment_compartmental_systems.mlx`, `part3_compartmental_analysis.mlx`, `part3_compartmental_simulation.mlx`
  - Simulink models: `insulin_glucose_compartmental_model.slx`, `riggs_iodine_compartmental_model.slx`
  - MATLAB scripts: multiple `Riggs_Iodine*.m`, `Hypothyroidism*.m`, `diabetic.m`, `insuline_infused_patient.m`, etc.
  - PDFs and supporting documents.
  - Note: Several files were recently renamed and organized (file history preserved in git).

- `Biosignal_Processing/` — Cardiac and respiratory biosignal analysis materials and README.
- `Neuronal_Dendrite/` — Dendrite voltage profile scripts and notes (`03_dendrite_voltage_profiles.m`).
- `Signal_Processing/` — Signal processing overview and `signal_processing_analysis.m`.

---

## Requirements & How to run ▶️

- MATLAB (R2021a or newer recommended) for `.m` and `.mlx` files.
- Simulink to open and simulate `.slx` models.
- To run scripts: open MATLAB, add the project root to the path, and run desired `.m` or open `.mlx` live scripts in the editor.
- Example: open MATLAB -> Current Folder -> `investigate_compartmental_systems/` -> run `diabetic.m` or open `part3_compartmental_simulation.mlx`.

---

## Recent repository housekeeping ✨

- Removed a leading-space typo from the `investigate_compartmental_systems` folder name.
- Moved top-level `.m` scripts into `investigate_compartmental_systems/` for consistency.
- Standardized several filenames to be descriptive and consistent (see commit history for details).

---

## Contributing & Contact 🤝

- Please open an issue or submit a pull request for fixes, improvements, or to add documentation for specific models.
- Contact: repository owner (see GitHub profile `risinidhinara`).

---

## License

- If no license file is present, assume default (all rights reserved). Add a `LICENSE` file if you want to permit reuse.

---

If you'd like, I can also scan the repo and update any README files inside subfolders to include short summaries and instructions — should I proceed with that?
