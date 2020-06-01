# ListUSB_Docker_integration
Create a docker image to run the listusb tool

To integrate the listusb onto this image, we first have to copy the debian package to Dockerfile folder, so we avoid issues with build context. Go to dockerfile git repo and do:
cp ../listusb/listusb_1.0_amd64.deb .

Execute image build:
sudo docker build -t listusbint:v1 .

To execute the command listusb from this created container:
sudo docker run -it listusbint:v1 listusb
