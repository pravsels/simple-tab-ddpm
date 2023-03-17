# TabDDPM: Modelling Tabular Data with Diffusion Models
This is the official code for our paper "TabDDPM: Modelling Tabular Data with Diffusion Models" ([paper](https://arxiv.org/abs/2209.15421))

<!-- ## Results
You can view all the results and build your own tables with this [notebook](notebooks/Reports.ipynb). -->

## Running the experiments

Here we describe the neccesary info for reproducing the experimental results.  

### File structure
`tab-ddpm/` -- implementation of the proposed method  
`tuned_models/` -- tuned hyperparameters of evaluation model (CatBoost or MLP)

All main scripts are in `scripts/` folder:

- `scripts/pipeline.py` are used to train, sample and eval TabDDPM using a given config  
- `scripts/tune_ddpm.py` -- tune hyperparameters of TabDDPM
- `scripts/eval_[catboost|mlp|simple].py` -- evaluate synthetic data using a tuned evaluation model or simple models
- `scripts/eval_seeds.py` -- eval using multiple sampling and multuple eval seeds
- `scripts/eval_seeds_simple.py` --  eval using multiple sampling and multuple eval seeds (for simple models)
- `scripts/tune_evaluation_model.py` -- tune hyperparameters of eval model (CatBoost or MLP)
- `scripts/resample_privacy.py` -- privacy calculation  

Experiments folder (`exp/`):
- All results and synthetic data are stored in `exp/[ds_name]/[exp_name]/` folder
- `exp/[ds_name]/config.toml` is a base config for tuning TabDDPM
- `exp/[ds_name]/eval_[catboost|mlp].json` stores results of evaluation (`scripts/eval_seeds.py`)  

To understand the structure of `config.toml` file, read `CONFIG_DESCRIPTION.md`.
