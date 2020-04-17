# Prerequisite
Add these into pycham
robotframework	3.1.2	3.1.2
robotframework-datadriver	0.3.6	0.3.6
robotframework-pabot	1.2.1	1.2.1
robotframework-seleniumlibrary	4.3.0	4.3.0
robotremoteserver	1.1	1.1
selenium	3.141.0	3.141.0

# Parallel execution
1.install pip install -U robotframework-pabot

2.add library in pycham robotframeworkpabot

Run command for parallel exrcution pabot --processes 2 TestCases/
Run command for reports in folder pabot --processes 6 --outputdir reports TestCases/

# Headless execution
Give browser name headlesschrome or headlessfirefox

