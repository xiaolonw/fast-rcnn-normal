# Testing alexnet_rgb and alexnet_hha models
model='alexnet_rgb_alexnet_hha'; tr_set='trainval'; test_set='test'; modality="images+norm";
PYTHONPATH='.' PYTHONUNBUFFERED="True" python tools/test_net.py --gpu 1 \
  --def scripts/joint_rgbnorm2/test.prototxt.images+hha \
  --net /nfs.yoda/xiaolonw/fast_rcnn/models/dcgan_rgb2/fast_rcnn_joint.caffemodel \
  --imdb nyud2_"$modality"_2015_"$test_set" \
  --cfg scripts/joint_rgbnorm2/config.prototxt


