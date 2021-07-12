
## SchNet_GCNN 
This folder hosts all the work related to paper [Graph Convolution Neural Network for predicting Photo-excited State Properties of Indole C8H7N Absorption Spectra]() Guidelines and requirements are specfied below.

## Requirements
* [SchNetPack](https://schnetpack.readthedocs.io/en/stable/#)
* [sympy 1.3.0](https://pypi.org/project/sympy/)
* [chempy](https://pypi.org/project/chempy/)
* Pytorch
* Tensorflow - for tensorboard

## Guidelines

1. [xyz_to_gaussian.ipynb](https://github.com/KhaiTTNguyen/Computational_Quantum_Chemistry/blob/master/SchNet_GCNN/%5Bsm%5Dxyz_to_gaussian.ipynb): Geometries in trajectory file --> Gaussian inputs 

* Input: trajectory file
* Output: GaussInput.zip
* Format the trajectory file as <em>UC-MM-PBC.xyz</em> & upload as a zip.

2. [prep_database.ipynb](https://github.com/KhaiTTNguyen/Computational_Quantum_Chemistry/blob/master/SchNet_GCNN/%5Bsm%5Dprep_database.ipynb): prepare ASE databases 

3. [train_model.ipynb](https://github.com/KhaiTTNguyen/Computational_Quantum_Chemistry/blob/master/SchNet_GCNN/%5Bsm%5Dtrain_model.ipynb): Train model


4. [generate_spectrum.ipynb](https://github.com/KhaiTTNguyen/Computational_Quantum_Chemistry/blob/master/SchNet_GCNN/%5Bsm%5Dgenerate_spectrum.ipynb): generate SchNet spectrum & compare with quantum calculated spectrum

5. [misc_processing.ipynb](https://github.com/KhaiTTNguyen/Computational_Quantum_Chemistry/blob/master/SchNet_GCNN/%5Bsm%5Dmisc_processing.ipynb): for removing files, efficient file move between folders

6. [abs-spec-config.f90](https://github.com/KhaiTTNguyen/Computational_Quantum_Chemistry/blob/master/SchNet_GCNN/abs-spec-config.f90): generate spectrum data from excitation energy and oscilator strengths.

## Contributors
For questions regarding this project please direct to the main author
* Khai Nguyen (カイ∙グエン): khainguyen@temple.edu (main author)
* Mushir ul Hasan: mushir@temple.edu (<em>abs-spec-config.f90</em> script)
* Salsabil Abou-Hatab: salsa.abouhatab@temple.edu
* Dr. Pratip Chakraborty: pratip.chakraborty@rutgers.edu
* Dr. Spiridoula Matsika: smatsika@temple.edu