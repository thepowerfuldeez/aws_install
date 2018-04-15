# Installing Miniconda
wget -c http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p ~/miniconda
export PATH=~/miniconda/bin:$PATH

#Installing neccesary libraries
conda install -y numpy scipy pandas scikit-learn jupyter tqdm matplotlib seaborn
conda install -yc conda-forge jupyter_contrib_nbextensions

#Can add whatever you want to install
sudo apt-get update
sudo apt-get -qq install git
sudo apt-get -qq install -y build-essential
sudo apt-get -qq install -y libboost-program-options-dev zlib1g-dev
sudo apt-get -qq install -y default-jdk
sudo git clone git://github.com/JohnLangford/vowpal_wabbit.git
cd vowpal_wabbit
sudo CPLUS_INCLUDE_PATH='/usr/lib/jvm/java-8-openjdk-amd64/include:/usr/lib/jvm/java-8-openjdk-amd64/include/linux' make install
cd ..

wget "https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA" -O gdrive
chmod +x gdrive

mkdir ~/.jupyter
printf "\n# Configuration file for jupyter notebook.\n
c = get_config()\n
# Notebook config\n
c.NotebookApp.ip = '*'\n
c.NotebookApp.open_browser = False\n
c.NotebookApp.port = 8888\n" > ~/.jupyter/jupyter_notebook_config.py

jupyter notebook --config="~/.jupyter/jupyter_notebook_config.py"
