#https://docs.python.org/3/library/venv.html
sudo apt-get install python3-venv -y

#in current dir
python3 -m venv venv
#chmod u+x venv/bin/*

#cd ~ && ln -s /{path_to}/{cur_dir}/venv
source ~/venv/bin/activate
