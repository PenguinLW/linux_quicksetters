pamac build python39

#in current dir
python3.9 -m venv venv

#cd ~ && ln -s /{path_to}/{cur_dir}/venv
source ~/venv/bin/activate

which pip python python3 python3.9
pip install --upgrade pip
pip list

#for install something
pip install nodeenv

#in current dir
nodeenv nenv

#cd ~ && ln -s /{path_to}/{cur_dir}/nenv
source ~/nenv/bin/activate
which npm npx node
