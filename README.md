## Notice
- French and Spanish translations of this official README are available in *doc/*, titled as [LISMOI](https://github.com/tek-cub/nlp_job-postings/blob/master/doc/LISMOI.md) and [LEAME](https://github.com/tek-cub/nlp_job-postings/blob/master/doc/LEAME.md) respectively.
- In order to conveniently update the repository, the Bash script *git-flow.sh* was added.

## Project: Natural Language Processing (NLP) of Job Postings Data
This is an implementation of the Manning liveProject [Decoding Data Science Job Postings to Improve Your Resume](https://www.manning.com/liveproject/decoding-data-science-job-postings-to-improve-your-resume). The goal is to glean insights of the data science job market from web scraped job postings (also with respect to the resume of an individual). Job seekers could then use these insights to improve their chances of success by helping them prioritize what to focus on.

An overview of the project's scope and tasks:
- processing data with Pandas;  NLP and machine learning with Scikit-learn
- statistics to better understand problems, make decisions, and interpret results
- extract, transform, load the job postings dataset from web scraped HTML
- vectorizing text (a user's resume and job postings), by means of the TF-IDF word embedding
- ranking similarity (cosine) of a user’s resume document with entries in the dataset
- feature extraction of select data using a singular value decomposition: reducing its dimensionality
- k-means clustering of extracted features: allowing the analysis of different types of job requirements
- visualizing clusters' contents, that is, most frequent words: to represent desired items from employers 
- ranking similarity of a user’s resume to a cluster

The main techniques used in the analysis are cosine similarity comparisons and a k-means clustering. Conversely, the techniques used in this project can be used from the perspective of a hiring manager or so forth, who is looking to filter job applicants down to a workable level or to group them based on similarity to other applicants for a better idea of the available talent pool.

Manning provided the job postings sample data with no details of its collection. So no assumptions were made about how well it represents its population (which was not firmly defined): this was not part of the project. So from the project's perspective, it is being assumed that the data was properly sampled for a well-defined population.

## Instructions

### 1. Environment
The project was built using Python 3.7, and the [Anaconda Python Distribution](https://www.anacondacom/distribution/#download-section) is recommended. After installing Anaconda, run `conda env create -f environment.yml` to create a conda environment called *nlp_job-postings*. Activate and deactivate the environment with `conda activate nlp_job-postings` and `conda deactivate`. If the environment is activated, Jupyter Notebook will launch from within that terminal window via `jupyter notebook`.

### 2. Data
*data/* contains what is needed to run the notebooks as stated in the Code section, but *data/html_jop_postings.zip* must be unzipped beforehand. The resume document and data outputs from the code are stored in this folder.

### 3. Configuration
*config.json* contains parameters which can be changed to alter the project's behavior; namely the n-gram range for the documents and the number of clusters used by the k-means algorithm. However the value of *k_hyperparam* gets assigned in the third notebook *3_clustering.ipynb*.

### 4. Code
The notebooks and their cells are meant to be run sequentially (as indicated by the file name prefixes, 1–4). Comments in the code mostly serve to state explicitly the general flow of tasks; but they are also used to journal some of the methods and reflections of the analysis. Each notebook's objective is stated at the top of the file.
