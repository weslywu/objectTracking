
%ͨ��������ͼ��Χ����һ���Ƕ�����ת��ò�ͬͼ��,ͨ���Բ�ͬͼ����в���,�Ӷ���ø������岻ͬ��̬�Ľ�ͼ,����ϵͳ³����.
%ע��:���ǵ�ʱ��Ҫ�þ����˼��ȥ����ͼ��,�����ǵ�����ͼ����ʽ.��ת����֮��,��Ȼ�����ǲ���,������Χ��ֵ�����ı�,����ȡ���Сλ�ò���,��ʱ�ͻὫ������ȡ����
function img = rand_warp(img)
a = -180/16;
b = 180/16;
r = a + (b-a).*rand;%rand����һ�������� (0,1) �ھ��ȷֲ����������
sz = size(img);
scale = 1-0.1 + 0.2.*rand;
% trans_scale = randi([-4,4], 1, 1);
img = imresize(imresize(imrotate(img, r), scale), [sz(1) sz(2)]);
   %��ͼ��img��ͼ������ݾ�����ͼ������ĵ���תr��,������ʾ��ʱ����ת,������ʾ˳ʱ����ת.������ת���ͼ�����.
   %imresize(img,scale),����ͼ��ĳ�����img������scale��,��scale>1��Ŵ�ͼ��,��scale<1����Сͼ��.