FasdUAS 1.101.10   ��   ��    k             l     ��  ��    E ? This script is based on the Growl / AppleScript template from:     � 	 	 ~   T h i s   s c r i p t   i s   b a s e d   o n   t h e   G r o w l   /   A p p l e S c r i p t   t e m p l a t e   f r o m :   
  
 l     ��  ��    @ :   http://growl.info/documentation/applescript-support.php     �   t       h t t p : / / g r o w l . i n f o / d o c u m e n t a t i o n / a p p l e s c r i p t - s u p p o r t . p h p   ��  i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k     `       l     ��������  ��  ��        l     ��  ��    %  Get working dir of this script     �   >   G e t   w o r k i n g   d i r   o f   t h i s   s c r i p t      r         n          1    ��
�� 
psxp   l     !���� ! c      " # " 4     �� $
�� 
psxf $ l    %���� % b     & ' & l   	 (���� ( n    	 ) * ) 1    	��
�� 
psxp * l    +���� + I   �� ,��
�� .earsffdralis        afdr ,  f    ��  ��  ��  ��  ��   ' m   	 
 - - � . .  / . .��  ��   # m    ��
�� 
ctxt��  ��    o      ���� 0 
workingdir 
workingDir   / 0 / l   ��������  ��  ��   0  1 2 1 O    ^ 3 4 3 k    ] 5 5  6 7 6 l   ��������  ��  ��   7  8 9 8 l   �� : ;��   : #  Define our notification type    ; � < < :   D e f i n e   o u r   n o t i f i c a t i o n   t y p e 9  = > = r     ? @ ? J     A A  B�� B m     C C � D D ( T i m e   t o   w o r k   o r   p l a y��   @ l      E���� E o      ���� &0 notificationslist notificationsList��  ��   >  F G F l   ��������  ��  ��   G  H I H l   �� J K��   J S M Register this helper script with Growl, in case we're not already registered    K � L L �   R e g i s t e r   t h i s   h e l p e r   s c r i p t   w i t h   G r o w l ,   i n   c a s e   w e ' r e   n o t   a l r e a d y   r e g i s t e r e d I  M N M I   (���� O
�� .registernull��� ��� null��   O �� P Q
�� 
appl P l 	    R���� R m      S S � T T : ( 1 0 + 2 ) 5   W i d g e t   S u p p o r t   S c r i p t��  ��   Q �� U V
�� 
anot U l 
 ! " W���� W o   ! "���� &0 notificationslist notificationsList��  ��   V �� X��
�� 
dnot X o   # $���� &0 notificationslist notificationsList��   N  Y Z Y l  ) )��������  ��  ��   Z  [ \ [ l  ) )�� ] ^��   ]   Send the notifications    ^ � _ _ .   S e n d   t h e   n o t i f i c a t i o n s \  ` a ` I  ) [���� b
�� .notifygrnull��� ��� null��   b �� c d
�� 
name c l 	 + . e���� e m   + . f f � g g ( T i m e   t o   w o r k   o r   p l a y��  ��   d �� h i
�� 
titl h n   1 7 j k j l 	 2 7 l���� l 4   2 7�� m
�� 
cobj m m   5 6���� ��  ��   k o   1 2���� 0 argv   i �� n o
�� 
desc n n   : @ p q p l 	 ; @ r���� r 4   ; @�� s
�� 
cobj s m   > ?���� ��  ��   q o   : ;���� 0 argv   o �� t u
�� 
appl t l 	 A D v���� v m   A D w w � x x : ( 1 0 + 2 ) 5   W i d g e t   S u p p o r t   S c r i p t��  ��   u �� y z
�� 
iurl y b   G L { | { o   G H���� 0 
workingdir 
workingDir | m   H K } } � ~ ~  I c o n . p n g z �� ��
�� 
stck  n   O U � � � 4   P U�� �
�� 
cobj � m   S T����  � o   O P���� 0 argv  ��   a  ��� � l  \ \��������  ��  ��  ��   4 m     � �2                                                                                  GRRR   alis    �  Macintosh HD               ��W	H+   ��GrowlHelperApp.app                                              ��~��        ����  	                	Resources     ��:�      �~��     �� � �~  �	     YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   2  ��� � l  _ _��������  ��  ��  ��  ��       �� � � � �����   � ��������
�� .aevtoappnull  �   � ****�� 0 
workingdir 
workingDir�� &0 notificationslist notificationsList��   � �� ���� � ���
�� .aevtoappnull  �   � ****�� 0 argv  ��   � ���� 0 argv   � ������ -���� � C���� S���������� f������ w�� }������
�� 
psxf
�� .earsffdralis        afdr
�� 
psxp
�� 
ctxt�� 0 
workingdir 
workingDir�� &0 notificationslist notificationsList
�� 
appl
�� 
anot
�� 
dnot�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
cobj
�� 
desc
�� 
iurl
�� 
stck�� 
�� .notifygrnull��� ��� null�� a*�)j �,�%/�&�,E�O� H�kvE�O*������� O*�a a �a k/a �a l/�a a �a %a �a m/a  OPUOP � � � � P / U s e r s / a m w / L i b r a r y / W i d g e t s / ( 1 0 + 2 ) 5 . w d g t / � �� ���  �   C��   ascr  ��ޭ