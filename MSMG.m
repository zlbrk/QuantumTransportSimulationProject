function [ dx, xc ] = MSMG( d, k )
%% MSMG = Multiple-Scale Mesh Generator
%% �������� ����������
% xc -- ����������� ����������� �����, ��
% dx -- ������������� �����, ��
%
% d  -- ���������� ����� �����������, ��
% k  -- ������� �������������, nil
%% ������������ �����

xmin = -d/2; % ����� ������� �������
xmax = d/2; % ������ ������� �������
xpts = 2^k +1; % ����� ����� ������� �����

x = linspace(xmin, xmax, xpts); % ��������� ������� �����
dx = diff(x); % ������������� �����, ���������� �������� ��� ������������

xx = x(1:length(x)-1) + dx./2; % ���������� ����� ����������� �����
xc = cat(2, (xmin-dx(1)/2), xx, (xmax+dx(xpts-1)/2)); % ����������� ����������� �����
% ����� ����������� ����� ������������� ��������� ��������, ������������
% ��������� ������� ������� �����

