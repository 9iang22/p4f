#！/bin/bash
# Program:
#   This program is to update the tool to save time
# History:
# 2020/01/04    Msk     First release
rm dist/*
python setup.py check
python setup.py sdist
twine upload dist/*

pip uninstall p4f

sleep 10
pip install p4f --user
