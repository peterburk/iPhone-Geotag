FasdUAS 1.101.10   ��   ��    k             l      ��  ��    
iPhone Geotag
Peter Burkimsher
22-25/04/2011
http://peterburk.appspot.com

Reads the iPhone location history from consolidated.db, and uses it to geotag iPhoto pictures. To include hidden photos, make sure they're visible through View > Hidden Photos first. 

Glory to God for giving us this world to explore!

Icon based on Glowbe and iPhoto replacement, http://jonasraskdesign.com. 

This code may be reused according to the Apache License 2.0. That means you can reuse this without attribution, although I'd obviously appreciate it. 
     � 	 	4 
 i P h o n e   G e o t a g 
 P e t e r   B u r k i m s h e r 
 2 2 - 2 5 / 0 4 / 2 0 1 1 
 h t t p : / / p e t e r b u r k . a p p s p o t . c o m 
 
 R e a d s   t h e   i P h o n e   l o c a t i o n   h i s t o r y   f r o m   c o n s o l i d a t e d . d b ,   a n d   u s e s   i t   t o   g e o t a g   i P h o t o   p i c t u r e s .   T o   i n c l u d e   h i d d e n   p h o t o s ,   m a k e   s u r e   t h e y ' r e   v i s i b l e   t h r o u g h   V i e w   >   H i d d e n   P h o t o s   f i r s t .   
 
 G l o r y   t o   G o d   f o r   g i v i n g   u s   t h i s   w o r l d   t o   e x p l o r e ! 
 
 I c o n   b a s e d   o n   G l o w b e   a n d   i P h o t o   r e p l a c e m e n t ,   h t t p : / / j o n a s r a s k d e s i g n . c o m .   
 
 T h i s   c o d e   m a y   b e   r e u s e d   a c c o r d i n g   t o   t h e   A p a c h e   L i c e n s e   2 . 0 .   T h a t   m e a n s   y o u   c a n   r e u s e   t h i s   w i t h o u t   a t t r i b u t i o n ,   a l t h o u g h   I ' d   o b v i o u s l y   a p p r e c i a t e   i t .   
   
  
 l     ��������  ��  ��        j     �� �� 0 
timestamps    J     ����        j    �� �� 0 	latitudes    J    ����        j    �� �� 0 
longitudes    J    
����        j    �� �� 0 search_list    J    ����        l     ��������  ��  ��        l      ��  ��      Read the database      �   &   R e a d   t h e   d a t a b a s e         l     ��������  ��  ��      ! " ! l     �� # $��   # , & Find a particular database table name    $ � % % L   F i n d   a   p a r t i c u l a r   d a t a b a s e   t a b l e   n a m e "  & ' & l     (���� ( r      ) * ) m      + + � , ,  C e l l L o c a t i o n * o      ���� 0 
table_name  ��  ��   '  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 "  Find the most recent backup    2 � 3 3 8   F i n d   t h e   m o s t   r e c e n t   b a c k u p 0  4 5 4 l    6���� 6 r     7 8 7 n     9 : 9 1   	 ��
�� 
psxp : l   	 ;���� ; I   	�� <��
�� .earsffdralis        afdr < m    ��
�� afdrcusr��  ��  ��   8 o      ���� 0 	home_path  ��  ��   5  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A $  Ask the user to select a file    B � C C <   A s k   t h e   u s e r   t o   s e l e c t   a   f i l e @  D E D l    F���� F r     G H G n    I J I I    �� K���� 0 find_db_file   K  L M L o    ���� 0 	home_path   M  N�� N o    ���� 0 
table_name  ��  ��   J  f     H o      ���� 0 db_file  ��  ��   E  O P O l     �� Q R��   Q z tset db_file to "/Applications/iPhone Apps/Mac Apps/iPhoneTracker/iOS Files/Library/Caches/locationd/consolidated.db"    R � S S � s e t   d b _ f i l e   t o   " / A p p l i c a t i o n s / i P h o n e   A p p s / M a c   A p p s / i P h o n e T r a c k e r / i O S   F i l e s / L i b r a r y / C a c h e s / l o c a t i o n d / c o n s o l i d a t e d . d b " P  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X ` Z Extract the CellLocation database to a CSV file in a working directory. Trash should do.     Y � Z Z �   E x t r a c t   t h e   C e l l L o c a t i o n   d a t a b a s e   t o   a   C S V   f i l e   i n   a   w o r k i n g   d i r e c t o r y .   T r a s h   s h o u l d   d o .   W  [ \ [ l   ! ]���� ] r    ! ^ _ ^ b     ` a ` b     b c b b     d e d o    ���� 0 	home_path   e m     f f � g g  . T r a s h / c o    ���� 0 
table_name   a m     h h � i i  . c s v _ o      ���� 0 cell_location_file  ��  ��   \  j k j l     ��������  ��  ��   k  l m l l     �� n o��   n . ( If it's consolidated.db, read a db file    o � p p P   I f   i t ' s   c o n s o l i d a t e d . d b ,   r e a d   a   d b   f i l e m  q r q l  " , s���� s r   " , t u t n  " * v w v I   # *�� x���� 0 	db_to_csv   x  y z y o   # $���� 0 db_file   z  { | { o   $ %���� 0 
table_name   |  }�� } o   % &���� 0 cell_location_file  ��  ��   w  f   " # u o      ���� 0 
file_found  ��  ��   r  ~  ~ l  - I ����� � Z   - I � ����� � =  - 0 � � � o   - .���� 0 
file_found   � m   . / � � � � � 
 E r r o r � k   3 E � �  � � � r   3 < � � � n   3 : � � � 1   8 :��
�� 
psxp � l  3 8 ����� � I  3 8�� ���
�� .sysostdfalis    ��� null � m   3 4 � � � � � 2 S e l e c t   y o u r   l o c a t i o n   f i l e��  ��  ��   � o      ���� 0 db_file   �  ��� � n  = E � � � I   > E�� ����� 0 	db_to_csv   �  � � � o   > ?���� 0 db_file   �  � � � o   ? @���� 0 
table_name   �  ��� � o   @ A���� 0 cell_location_file  ��  ��   �  f   = >��  ��  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � U O Read the CSV file. Easier to script than the original SQL for a no0b like me.     � � � � �   R e a d   t h e   C S V   f i l e .   E a s i e r   t o   s c r i p t   t h a n   t h e   o r i g i n a l   S Q L   f o r   a   n o 0 b   l i k e   m e .   �  � � � l  J T ����� � r   J T � � � n  J P � � � I   K P�� ����� 0 read_csv   �  ��� � o   K L���� 0 cell_location_file  ��  ��   �  f   J K � o      ���� 0 number_timestamps  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ( " Clean up after the table's read.     � � � � D   C l e a n   u p   a f t e r   t h e   t a b l e ' s   r e a d .   �  � � � l  U b ����� � I  U b�� ���
�� .sysoexecTEXT���     TEXT � b   U ^ � � � b   U Z � � � m   U X � � � � �  r m   " � o   X Y���� 0 cell_location_file   � m   Z ] � � � � �  "��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  c i ����� � L   c i � � o   c h���� 0 
timestamps  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �   Tag the photos     � � � �     T a g   t h e   p h o t o s   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 5 / Keep track of all the names of photos tagged.     � � � � ^   K e e p   t r a c k   o f   a l l   t h e   n a m e s   o f   p h o t o s   t a g g e d .   �  � � � l  j p ����� � r   j p � � � J   j l����   � o      ���� 0 photos_tagged  ��  ��   �  � � � l     ��~�}�  �~  �}   �  � � � l     �| � ��|   � - ' Find the start date of the iPhone data    � � � � N   F i n d   t h e   s t a r t   d a t e   o f   t h e   i P h o n e   d a t a �  � � � l  q  ��{�z � r   q  � � � n   q { � � � 4   v {�y �
�y 
cobj � m   y z�x�x  � o   q v�w�w 0 
timestamps   � o      �v�v 0 start_timestamp  �{  �z   �  � � � l  � � ��u�t � r   � � � � � n  � � � � � I   � ��s ��r�s 0 timestamp_to_date   �  ��q � o   � ��p�p 0 start_timestamp  �q  �r   �  f   � � � o      �o�o 0 
start_date  �u  �t   �  � � � l     �n�m�l�n  �m  �l   �  � � � l     �k � ��k   �   Warn the user    � � � �    W a r n   t h e   u s e r �  � � � l     �j�i�h�j  �i  �h   �  � � � l  � � ��g�f � r   � � � � � I  � ��e�d�c
�e .misccurdldt    ��� null�d  �c   � o      �b�b 0 
last_alert  �g  �f   �  � � � l     �a�`�_�a  �`  �_   �  �  � l     �^�^     Get photo properties    � *   G e t   p h o t o   p r o p e r t i e s   l  � ��]�\ O   � � k   � �		 

 l  � ��[�Z�Y�[  �Z  �Y    r   � � 1   � ��X
�X 
sele o      �W�W 0 these_photos    l  � ��V�U�T�V  �U  �T    l  � ��S�S   !  Count the number of photos    � 6   C o u n t   t h e   n u m b e r   o f   p h o t o s  r   � � I  � ��R�Q
�R .corecnte****       **** o   � ��P�P 0 these_photos  �Q   o      �O�O 0 number_photos   �N l  � ��M�L�K�M  �L  �K  �N   m   � ��                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��  �]  �\    l     �J�I�H�J  �I  �H    !  l     �G"#�G  " A ; Use the time difference to only check as much as necessary   # �$$ v   U s e   t h e   t i m e   d i f f e r e n c e   t o   o n l y   c h e c k   a s   m u c h   a s   n e c e s s a r y! %&% l  � �'�F�E' r   � �()( o   � ��D�D 0 
start_date  ) o      �C�C 0 next_check_date  �F  �E  & *+* l     �B�A�@�B  �A  �@  + ,-, l     �?./�?  . "  For every photo in the list   / �00 8   F o r   e v e r y   p h o t o   i n   t h e   l i s t- 121 l  ��3453 Y   ��6�>78�=6 k   ��99 :;: l  � ��<�;�:�<  �;  �:  ; <=< O   �>?> k   �@@ ABA l  � ��9CD�9  C   Get the photo   D �EE    G e t   t h e   p h o t oB FGF r   � �HIH n   � �JKJ 4   � ��8L
�8 
cobjL o   � ��7�7 0 current_photo  K o   � ��6�6 0 these_photos  I o      �5�5 0 
this_photo  G MNM r   � �OPO n   � �QRQ 1   � ��4
�4 
pnamR o   � ��3�3 0 
this_photo  P o      �2�2 0 
photo_name  N STS r   � �UVU n   � �WXW 1   � ��1
�1 
rkvlX n   � �YZY 4   � ��0[
�0 
rkex[ m   � �\\ �]]  I m a g e D a t eZ o   � ��/�/ 0 
this_photo  V o      �.�. 0 
photo_date  T ^�-^ r   �_`_ c   �aba n   �cdc 1   ��,
�, 
rklad o   � ��+�+ 0 
this_photo  b m  �*
�* 
TEXT` o      �)�) 0 photo_latitude  �-  ? m   � �ee�                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��  = fgf l �(�'�&�(  �'  �&  g hih l �%jk�%  j ? 9 Convert the photo date to an iPhone-style UNIX timestamp   k �ll r   C o n v e r t   t h e   p h o t o   d a t e   t o   a n   i P h o n e - s t y l e   U N I X   t i m e s t a m pi mnm r  opo n qrq I  �$s�#�$ 0 date_to_timestamp  s t�"t o  �!�! 0 
photo_date  �"  �#  r  f  p o      � �  0 photo_timestamp  n uvu l ����  �  �  v wxw l �yz�  y ) # If the location is not set already   z �{{ F   I f   t h e   l o c a t i o n   i s   n o t   s e t   a l r e a d yx |}| l �~�~ Z  ������ l !���� = !��� o  �� 0 photo_latitude  � m   �� ���  m i s s i n g   v a l u e�  �  � k  $��� ��� l $$����  �  �  � ��� l $$����  � + % If the photo's taken within 24 hours   � ��� J   I f   t h e   p h o t o ' s   t a k e n   w i t h i n   2 4   h o u r s� ��� r  $3��� l $/���� ]  $/��� ]  $+��� m  $'�� <� m  '*�� <� m  +.�� �  �  � o      �� 0 valid_range  � ��� l 44���
�  �  �
  � ��� l 44�	���	  � 9 3 Search the database for the nearest known location   � ��� f   S e a r c h   t h e   d a t a b a s e   f o r   t h e   n e a r e s t   k n o w n   l o c a t i o n� ��� r  4?��� o  49�� 0 
timestamps  � o      �� 0 search_list  � ��� r  @b��� n @K��� I  AK���� 0 sequential_search  � ��� o  AD�� 0 photo_timestamp  � ��� o  DG�� 0 valid_range  �  �  �  f  @A� J      �� ��� o      �� 0 this_difference  � �� � o      ���� 0 
this_index  �   � ��� l cc��������  ��  ��  � ��� l cc������  �   Read the database   � ��� $   R e a d   t h e   d a t a b a s e� ��� r  cs��� n  co��� 4  ho���
�� 
cobj� o  kn���� 0 
this_index  � o  ch���� 0 	latitudes  � o      ���� 0 this_latitude  � ��� r  t���� n  t���� 4  y����
�� 
cobj� o  |���� 0 
this_index  � o  ty���� 0 
longitudes  � o      ���� 0 this_longitude  � ��� l ����������  ��  ��  � ��� l ������ Z  �������� A  ����� o  ������ 0 this_difference  � o  ������ 0 valid_range  � k  ���� ��� l ����������  ��  ��  � ��� l ��������  � $  Write the photo location tags   � ��� <   W r i t e   t h e   p h o t o   l o c a t i o n   t a g s� ��� O  ����� k  ���� ��� r  ����� o  ������ 0 this_latitude  � n      ��� 1  ����
�� 
rkla� o  ������ 0 
this_photo  � ���� r  ����� o  ������ 0 this_longitude  � n      ��� 1  ����
�� 
rklo� o  ������ 0 
this_photo  ��  � m  �����                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��  � ��� l ����������  ��  ��  � ��� l ��������  � * $ Record the name of the photo tagged   � ��� H   R e c o r d   t h e   n a m e   o f   t h e   p h o t o   t a g g e d� ��� r  ����� o  ������ 0 
photo_name  � n      ���  ;  ��� o  ������ 0 photos_tagged  � ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ���� r  ����� o  ������ 0 
start_date  � o      ���� 0 next_check_date  ��  ��  � k  ��    l ����������  ��  ��    r  �� o  ������ 0 
start_date   o      ���� 0 next_check_date   �� l ����������  ��  ��  ��  � $  end if the location is recent   � � <   e n d   i f   t h e   l o c a t i o n   i s   r e c e n t� 	��	 l ����������  ��  ��  ��  �  �     end if location is set   � �

 .   e n d   i f   l o c a t i o n   i s   s e t} �� l ����������  ��  ��  ��  �> 0 current_photo  7 m   � ����� 8 o   � ����� 0 number_photos  �=  4 , & end repeat this_photo in these_photos   5 � L   e n d   r e p e a t   t h i s _ p h o t o   i n   t h e s e _ p h o t o s2  l     ��������  ��  ��    l     ��������  ��  ��    l      ����     Return statistics     � &   R e t u r n   s t a t i s t i c s    l     ��������  ��  ��    l     ����   ; 5 Count the number of photos whose locatoins are found    � j   C o u n t   t h e   n u m b e r   o f   p h o t o s   w h o s e   l o c a t o i n s   a r e   f o u n d  l ������ r  �� !  I ����"��
�� .corecnte****       ****" o  ������ 0 photos_tagged  ��  ! o      ���� 0 number_tagged  ��  ��   #$# l     ��������  ��  ��  $ %&% l     ��'(��  '   Return a response   ( �)) $   R e t u r n   a   r e s p o n s e& *+* l ��,����, r  ��-.- b  ��/0/ b  ��121 b  ��343 b  ��565 m  ��77 �88  T a g g e d  6 o  ������ 0 number_tagged  4 m  ��99 �::    o f  2 o  ������ 0 number_photos  0 m  ��;; �<<    p h o t o s !. o      ���� 0 response_text  ��  ��  + =>= l     ��������  ��  ��  > ?@? l � A����A L  � BB o  ������ 0 response_text  ��  ��  @ CDC l     ��������  ��  ��  D EFE l      ��GH��  G � �
find_db_file: Finds an iPhone backup file with a particular sqlite table name. 
@params home_path: Path to a user's home directory
		 table_name: Name of the table to search for
@return db_file: Path to the database file containing the table
   H �II� 
 f i n d _ d b _ f i l e :   F i n d s   a n   i P h o n e   b a c k u p   f i l e   w i t h   a   p a r t i c u l a r   s q l i t e   t a b l e   n a m e .   
 @ p a r a m s   h o m e _ p a t h :   P a t h   t o   a   u s e r ' s   h o m e   d i r e c t o r y 
 	 	   t a b l e _ n a m e :   N a m e   o f   t h e   t a b l e   t o   s e a r c h   f o r 
 @ r e t u r n   d b _ f i l e :   P a t h   t o   t h e   d a t a b a s e   f i l e   c o n t a i n i n g   t h e   t a b l e 
F JKJ i    LML I      ��N���� 0 find_db_file  N OPO o      ���� 0 	home_path  P Q��Q o      ���� 0 
table_name  ��  ��  M k     bRR STS l     ��������  ��  ��  T UVU l     ��WX��  W ) # The root folder for iPhone backups   X �YY F   T h e   r o o t   f o l d e r   f o r   i P h o n e   b a c k u p sV Z[Z r     \]\ b     ^_^ o     ���� 0 	home_path  _ m    `` �aa \ L i b r a r y / A p p l i c a t i o n   S u p p o r t / M o b i l e S y n c / B a c k u p /] o      ���� 0 backup_folder  [ bcb l   ��������  ��  ��  c ded l   ��fg��  f > 8 Find the name of the most recently-edited backup folder   g �hh p   F i n d   t h e   n a m e   o f   t h e   m o s t   r e c e n t l y - e d i t e d   b a c k u p   f o l d e re iji r    klk n    mnm 4   ��o
�� 
cworo m    ������n l   p����p I   ��q��
�� .sysoexecTEXT���     TEXTq b    rsr b    	tut m    vv �ww  l s   - a l t R   "u o    ���� 0 backup_folder  s m   	 
xx �yy 2 "   |   h e a d   - n   3   |   t a i l   - n   1��  ��  ��  l o      ���� 0 backup_foldername  j z{z l   ��������  ��  ��  { |}| l   ��~��  ~ 6 0 Append the backup foldername to the search path    ��� `   A p p e n d   t h e   b a c k u p   f o l d e r n a m e   t o   t h e   s e a r c h   p a t h} ��� r    ��� b    ��� o    ���� 0 backup_folder  � o    �� 0 backup_foldername  � o      �~�~ 0 backup_folder  � ��� l   �}�|�{�}  �|  �{  � ��� l   �z���z  � + % In case the file's not found quickly   � ��� J   I n   c a s e   t h e   f i l e ' s   n o t   f o u n d   q u i c k l y� ��� r    ��� m    �� ��� 
 E r r o r� o      �y�y 0 db_file  � ��� l   �x�w�v�x  �w  �v  � ��� l   �u���u  � F @ Use find and grep to search for files containing the table name   � ��� �   U s e   f i n d   a n d   g r e p   t o   s e a r c h   f o r   f i l e s   c o n t a i n i n g   t h e   t a b l e   n a m e� ��� t    ?��� Q   ! >���� r   $ 3��� l  $ 1��t�s� I  $ 1�r��q
�r .sysoexecTEXT���     TEXT� b   $ -��� b   $ +��� b   $ )��� b   $ '��� m   $ %�� ���  f i n d   "� o   % &�p�p 0 backup_folder  � m   ' (�� ��� F "   - t y p e   f   - p r i n t 0   |   x a r g s   - 0   g r e p   "� o   ) *�o�o 0 
table_name  � m   + ,�� ���  "�q  �t  �s  � o      �n�n 0 db_file  � R      �m��l
�m .ascrerr ****      � ****� o      �k�k 0 error_message  �l  � k   ; >�� ��� l  ; ;�j���j  � 8 2 Output of the find is usually handled as an error   � ��� d   O u t p u t   o f   t h e   f i n d   i s   u s u a l l y   h a n d l e d   a s   a n   e r r o r� ��i� r   ; >��� o   ; <�h�h 0 error_message  � o      �g�g 0 db_file  �i  � m     �f�f � ��� l  @ @�e�d�c�e  �d  �c  � ��� l  @ @�b���b  � * $ If there's no file, return an error   � ��� H   I f   t h e r e ' s   n o   f i l e ,   r e t u r n   a n   e r r o r� ��� Z   @ P���a�`� l  @ G��_�^� A   @ G��� l  @ E��]�\� n   @ E��� m   C E�[
�[ 
nmbr� n   @ C��� 2  A C�Z
�Z 
cwor� o   @ A�Y�Y 0 db_file  �]  �\  � m   E F�X�X �_  �^  � L   J L�� m   J K�� ��� 
 E r r o r�a  �`  � ��� l  Q Q�W�V�U�W  �V  �U  � ��� l  Q Q�T���T  � _ Y The output of find-grep is "Binary file xx/yy/zz matches". We want the penultimate word.   � ��� �   T h e   o u t p u t   o f   f i n d - g r e p   i s   " B i n a r y   f i l e   x x / y y / z z   m a t c h e s " .   W e   w a n t   t h e   p e n u l t i m a t e   w o r d .� ��� r   Q W��� n   Q U��� 4   R U�S�
�S 
cwor� m   S T�R�R��� o   Q R�Q�Q 0 db_file  � o      �P�P 0 db_file  � ��� l  X X�O�N�M�O  �N  �M  � ��� l  X X�L���L  � 7 1 Append with the search path to get the file path   � ��� b   A p p e n d   w i t h   t h e   s e a r c h   p a t h   t o   g e t   t h e   f i l e   p a t h� ��� r   X _��� b   X ]��� b   X [��� o   X Y�K�K 0 backup_folder  � m   Y Z�� ���  /� o   [ \�J�J 0 db_file  � o      �I�I 0 db_file  � ��� l  ` `�H�G�F�H  �G  �F  � ��� l  ` `�E���E  � - ' Return the path to the calling routine   � ��� N   R e t u r n   t h e   p a t h   t o   t h e   c a l l i n g   r o u t i n e� ��D� L   ` b�� o   ` a�C�C 0 db_file  �D  K ��� l     �B�A�@�B  �A  �@  � ��� l      �? �?    � �
db_to_csv: Export a sqlite database table to a CSV file
@params db_file: The path of the sqlite database to export from
		 this_table: The name of the table to export
		 destination_file: The name of the CSV file to save it as
    �� 
 d b _ t o _ c s v :   E x p o r t   a   s q l i t e   d a t a b a s e   t a b l e   t o   a   C S V   f i l e 
 @ p a r a m s   d b _ f i l e :   T h e   p a t h   o f   t h e   s q l i t e   d a t a b a s e   t o   e x p o r t   f r o m 
 	 	   t h i s _ t a b l e :   T h e   n a m e   o f   t h e   t a b l e   t o   e x p o r t 
 	 	   d e s t i n a t i o n _ f i l e :   T h e   n a m e   o f   t h e   C S V   f i l e   t o   s a v e   i t   a s 
�  i     I      �>�=�> 0 	db_to_csv   	 o      �<�< 0 db_file  	 

 o      �;�; 0 
this_table   �: o      �9�9 0 destination_file  �:  �=   Q      I   �8�7
�8 .sysoexecTEXT���     TEXT b     b     b     b    
 b     b     m     � : s q l i t e 3   - c s v   - s e p a r a t o r   ' , '   " o    �6�6 0 db_file   m     �   " "   " s e l e c t   *   f r o m   o    	�5�5 0 
this_table   m   
 !! �""  ; "   >   " o    �4�4 0 destination_file   m    ## �$$  "�7   R      �3�2�1
�3 .ascrerr ****      � ****�2  �1   L    %% m    && �'' 
 E r r o r ()( l     �0�/�.�0  �/  �.  ) *+* l      �-,-�-  , � �
plist_to_csv: Convert a plist file to a CSV file
@params db_file: The path of the plist file to convert from
		 destination_file: The name of the CSV file to save it as
   - �..T 
 p l i s t _ t o _ c s v :   C o n v e r t   a   p l i s t   f i l e   t o   a   C S V   f i l e 
 @ p a r a m s   d b _ f i l e :   T h e   p a t h   o f   t h e   p l i s t   f i l e   t o   c o n v e r t   f r o m 
 	 	   d e s t i n a t i o n _ f i l e :   T h e   n a m e   o f   t h e   C S V   f i l e   t o   s a v e   i t   a s 
+ /0/ i    121 I      �,3�+�, 0 plist_to_csv  3 454 o      �*�* 0 
plist_file  5 6�)6 o      �(�( 0 destination_file  �)  �+  2 k     77 898 l     �':;�'  : , &Remove the extension, or it won't work   ; �<< L R e m o v e   t h e   e x t e n s i o n ,   o r   i t   w o n ' t   w o r k9 =>= r     
?@? n    ABA I    �&C�%�& 0 replace_chars  C DED o    �$�$ 0 
plist_file  E FGF m    HH �II  . p l i s tG J�#J m    KK �LL  �#  �%  B  f     @ o      �"�" 0 
plist_file  > MNM l   �!� ��!  �   �  N OPO l   �QR�  Q   Extract the data   R �SS "   E x t r a c t   t h e   d a t aP T�T I   �U�
� .sysoexecTEXT���     TEXTU b    VWV b    XYX b    Z[Z b    \]\ b    ^_^ m    `` �aa  d e f a u l t s   r e a d   "_ o    �� 0 
plist_file  ] m    bb �cc  "   >  [ m    dd �ee  "Y o    �� 0 destination_file  W m    ff �gg  "�  �  0 hih l     ����  �  �  i jkj l      �lm�  l � �
replace_chars: Replaces text in a string
@params this_text: The string to replace within
		 search_string: The text to be replaced
		 replacement_string: The text for it to be replaced with
@return this_text: The string with replacements made
   m �nn� 
 r e p l a c e _ c h a r s :   R e p l a c e s   t e x t   i n   a   s t r i n g 
 @ p a r a m s   t h i s _ t e x t :   T h e   s t r i n g   t o   r e p l a c e   w i t h i n 
 	 	   s e a r c h _ s t r i n g :   T h e   t e x t   t o   b e   r e p l a c e d 
 	 	   r e p l a c e m e n t _ s t r i n g :   T h e   t e x t   f o r   i t   t o   b e   r e p l a c e d   w i t h 
 @ r e t u r n   t h i s _ t e x t :   T h e   s t r i n g   w i t h   r e p l a c e m e n t s   m a d e 
k opo i    qrq I      �s�� 0 replace_chars  s tut o      �� 0 	this_text  u vwv o      �� 0 search_string  w x�x o      �� 0 replacement_string  �  �  r k      yy z{z r     |}| l    ~��~ o     �� 0 search_string  �  �  } n     � 1    �
� 
txdl� 1    �

�
 
ascr{ ��� r    ��� n    	��� 2    	�	
�	 
citm� o    �� 0 	this_text  � l     ���� o      �� 0 	item_list  �  �  � ��� r    ��� l   ���� o    �� 0 replacement_string  �  �  � n     ��� 1    �
� 
txdl� 1    � 
�  
ascr� ��� r    ��� c    ��� l   ������ o    ���� 0 	item_list  ��  ��  � m    ��
�� 
TEXT� o      ���� 0 	this_text  � ��� r    ��� m    �� ���  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L     �� o    ���� 0 	this_text  ��  p ��� l     ��������  ��  ��  � ��� l      ������  � � �
text_between: Gets a substring between flags
@params this_text: The string to search
		 start_text: The starting flag
		 end_text: The ending flag
@return this_text: The first substring between those flags
   � ���� 
 t e x t _ b e t w e e n :   G e t s   a   s u b s t r i n g   b e t w e e n   f l a g s 
 @ p a r a m s   t h i s _ t e x t :   T h e   s t r i n g   t o   s e a r c h 
 	 	   s t a r t _ t e x t :   T h e   s t a r t i n g   f l a g 
 	 	   e n d _ t e x t :   T h e   e n d i n g   f l a g 
 @ r e t u r n   t h i s _ t e x t :   T h e   f i r s t   s u b s t r i n g   b e t w e e n   t h o s e   f l a g s 
� ��� i     #��� I      ������� 0 text_between  � ��� o      ���� 0 	this_text  � ��� o      ���� 0 
start_text  � ���� o      ���� 0 end_text  ��  ��  � k     X�� ��� r     ��� m     �� ���  � o      ���� 0 return_text  � ��� Q    O����� k    F�� ��� Z    '������ l   
������ >   
��� o    ���� 0 
start_text  � m    	�� ��� 
 s t a r t��  ��  � k    !�� ��� r    ��� o    ���� 0 
start_text  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� r    !��� c    ��� n    ��� 7   ����
�� 
citm� m    ���� �  ;    � o    ���� 0 	this_text  � m    ��
�� 
TEXT� o      ���� 0 return_text  ��  ��  � r   $ '��� o   $ %���� 0 	this_text  � o      ���� 0 return_text  � ���� Z   ( F������� l  ( +������ >  ( +��� o   ( )���� 0 end_text  � m   ) *�� ���  e n d��  ��  � k   . B�� ��� r   . 3��� o   . /���� 0 end_text  � n     ��� 1   0 2��
�� 
txdl� 1   / 0��
�� 
ascr� ��� r   4 <��� c   4 :��� n   4 8��� 4   5 8���
�� 
citm� m   6 7���� � o   4 5���� 0 return_text  � m   8 9��
�� 
TEXT� o      ���� 0 return_text  � ���� r   = B��� m   = >�� ���  � n     ��� 1   ? A��
�� 
txdl� 1   > ?��
�� 
ascr��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� r   P U��� m   P Q�� ���  � n     ��� 1   R T��
�� 
txdl� 1   Q R��
�� 
ascr�    l  V V��������  ��  ��   �� L   V X o   V W���� 0 return_text  ��  �  l     ��������  ��  ��    l      ��	��   � �
read_csv: Reads the CellLocation csv. Will need modifying for other file formats. 
@params this_file: The csv file to read
@return number_timestamps: The number of records in the file
   	 �

r 
 r e a d _ c s v :   R e a d s   t h e   C e l l L o c a t i o n   c s v .   W i l l   n e e d   m o d i f y i n g   f o r   o t h e r   f i l e   f o r m a t s .   
 @ p a r a m s   t h i s _ f i l e :   T h e   c s v   f i l e   t o   r e a d 
 @ r e t u r n   n u m b e r _ t i m e s t a m p s :   T h e   n u m b e r   o f   r e c o r d s   i n   t h e   f i l e 
  i   $ ' I      ������ 0 read_csv   �� o      ���� 0 	this_file  ��  ��   k    f  l     ����   !  Clear the export variables    � 6   C l e a r   t h e   e x p o r t   v a r i a b l e s  r      J     ����   o      ���� 0 
timestamps    r   	  J   	 ����   o      ���� 0 	latitudes     r    !"! J    ����  " o      ���� 0 
longitudes    #$# l   ��������  ��  ��  $ %&% l   ��'(��  ' * $ Read the file using Apple's routine   ( �)) H   R e a d   t h e   f i l e   u s i n g   A p p l e ' s   r o u t i n e& *+* r    #,-, n   !./. I    !��0���� 0 apple_read_file  0 1��1 o    ���� 0 	this_file  ��  ��  /  f    - o      ���� 0 consolidateddb  + 232 l  $ $��������  ��  ��  3 454 l  $ $��67��  6 Q K Find the number of rows in the file, minus one for an blank trailing line.   7 �88 �   F i n d   t h e   n u m b e r   o f   r o w s   i n   t h e   f i l e ,   m i n u s   o n e   f o r   a n   b l a n k   t r a i l i n g   l i n e .5 9:9 r   $ -;<; I  $ +��=��
�� .corecnte****       ****= n   $ '>?> 2  % '��
�� 
cpar? o   $ %���� 0 consolidateddb  ��  < o      ���� 0 number_lines  : @A@ r   . 3BCB \   . 1DED o   . /���� 0 number_lines  E m   / 0���� C o      ���� 0 number_lines  A FGF l  4 4��������  ��  ��  G HIH l  4 4��JK��  J   Go through each line   K �LL *   G o   t h r o u g h   e a c h   l i n eI MNM Y   4[O��PQ��O k   >VRR STS l  > >��UV��  U   Get the line   V �WW    G e t   t h e   l i n eT XYX r   > DZ[Z n   > B\]\ 4   ? B��^
�� 
cpar^ o   @ A���� 0 current_line  ] o   > ?���� 0 consolidateddb  [ o      ���� 0 	this_line  Y _`_ l  E E��������  ��  ��  ` aba l  E E��cd��  c   Ignore blank lines   d �ee &   I g n o r e   b l a n k   l i n e sb f��f l  EVghig Z   EVjk����j l  E Nl����l ?   E Nmnm l  E Lo����o I  E L��p��
�� .corecnte****       ****p n   E Hqrq 2  F H��
�� 
cworr o   E F���� 0 	this_line  ��  ��  ��  n m   L M���� ��  ��  k k   QRss tut l  Q Q�������  ��  �  u vwv l  Q Q�~xy�~  x   For consolidated.db		   y �zz ,   F o r   c o n s o l i d a t e d . d b 	 	w {|{ Z   Q �}~�}�|} l  Q T�{�z D   Q T��� o   Q R�y�y 0 	this_file  � m   R S�� ���   C e l l L o c a t i o n . c s v�{  �z  ~ k   W ��� ��� l  W W�x���x  � + % Read the contents of the line as CSV   � ��� J   R e a d   t h e   c o n t e n t s   o f   t h e   l i n e   a s   C S V� ��� r   W \��� m   W X�� ���  ,� n     ��� 1   Y [�w
�w 
txdl� 1   X Y�v
�v 
ascr� ��� r   ] ���� n   ] `��� 2   ^ `�u
�u 
citm� o   ] ^�t�t 0 	this_line  � J      �� ��� o      �s�s 0 mcc  � ��� o      �r�r 0 mnc  � ��� o      �q�q 0 lac  � ��� o      �p�p 0 ci  � ��� o      �o�o 0 	timestamp  � ��� o      �n�n 0 latitude  � ��� o      �m�m 0 	longitude  � ��� o      �l�l 0 horizontalaccuracy  � ��� o      �k�k 0 altitude  � ��� o      �j�j 0 verticalaccuracy  � ��� o      �i�i 	0 speed  � ��� o      �h�h 
0 course  � ��g� o      �f�f 0 
confidence  �g  � ��e� r   � ���� m   � ��� ���  � n     ��� 1   � ��d
�d 
txdl� 1   � ��c
�c 
ascr�e  �}  �|  | ��� l  � ��b�a�`�b  �a  �`  � ��� l  � ��_���_  �   For cells.plist   � ���     F o r   c e l l s . p l i s t� ��� Z   �)���^�]� l  � ���\�[� D   � ���� o   � ��Z�Z 0 	this_file  � m   � ��� ���  c e l l s . c s v�\  �[  � k   �%�� ��� l  � ��Y���Y  �    Remove trailing semicolon   � ��� 4   R e m o v e   t r a i l i n g   s e m i c o l o n� ��� r   � ���� n  � ���� I   � ��X��W�X 0 text_between  � ��� o   � ��V�V 0 	this_line  � ��� m   � ��� ���  +� ��U� m   � ��� ���  " ;�U  �W  �  f   � �� o      �T�T 0 	this_line  � ��� l  � ��S�R�Q�S  �R  �Q  � ��� l  � ��P���P  � + % Read the contents of the line as CSV   � ��� J   R e a d   t h e   c o n t e n t s   o f   t h e   l i n e   a s   C S V� ��� r   � ���� m   � ��� ���  ,� n     ��� 1   � ��O
�O 
txdl� 1   � ��N
�N 
ascr� ��� r   ���� n   � ���� 2   � ��M
�M 
citm� o   � ��L�L 0 	this_line  � J      �� ��� o      �K�K 0 latitude  � ��� o      �J�J 0 	longitude  � ��� o      �I�I 0 horizontalaccuracy  � ��� o      �H�H 0 na  � ��G� o      �F�F 0 	timestamp  �G  � ��E� r  %� � m  ! �    n      1  "$�D
�D 
txdl 1  !"�C
�C 
ascr�E  �^  �]  �  l **�B�A�@�B  �A  �@    l **�?	
�?  	 F @ Save the data we want to the global variables ("property" type)   
 � �   S a v e   t h e   d a t a   w e   w a n t   t o   t h e   g l o b a l   v a r i a b l e s   ( " p r o p e r t y "   t y p e )  r  *6 c  */ o  *+�>�> 0 	timestamp   m  +.�=
�= 
nmbr n        ;  45 o  /4�<�< 0 
timestamps    r  7C c  7< o  78�;�; 0 latitude   m  8;�:
�: 
nmbr n        ;  AB o  <A�9�9 0 	latitudes    r  DP c  DI !  o  DE�8�8 0 	longitude  ! m  EH�7
�7 
nmbr n      "#"  ;  NO# o  IN�6�6 0 
longitudes   $�5$ l QQ�4�3�2�4  �3  �2  �5  ��  ��  h   end if blank line   i �%% $   e n d   i f   b l a n k   l i n e��  �� 0 current_line  P m   7 8�1�1 Q o   8 9�0�0 0 number_lines  ��  N &'& l \\�/�.�-�/  �.  �-  ' ()( l \\�,*+�,  * - ' Return the number of items in the list   + �,, N   R e t u r n   t h e   n u m b e r   o f   i t e m s   i n   t h e   l i s t) -�+- L  \f.. I \e�*/�)
�* .corecnte****       ****/ o  \a�(�( 0 
timestamps  �)  �+   010 l     �'�&�%�'  �&  �%  1 232 l     �$�#�"�$  �#  �"  3 454 l      �!67�!  6 � �
apple_read_file: Apple's code to read files
@param this_file: The file to read
@return file_text: The contents of the file as text
   7 �88 
 a p p l e _ r e a d _ f i l e :   A p p l e ' s   c o d e   t o   r e a d   f i l e s 
 @ p a r a m   t h i s _ f i l e :   T h e   f i l e   t o   r e a d 
 @ r e t u r n   f i l e _ t e x t :   T h e   c o n t e n t s   o f   t h e   f i l e   a s   t e x t 
5 9:9 i   ( +;<; I      � =��  0 apple_read_file  = >�> o      �� 0 	this_file  �  �  < k     ?? @A@ I    �B�
� .rdwropenshor       fileB o     �� 0 	this_file  �  A CDC r    EFE l   G��G I   �H�
� .rdwrread****        ****H o    �� 0 	this_file  �  �  �  F o      �� 0 	file_text  D IJI I   �K�
� .rdwrclosnull���     ****K o    �� 0 	this_file  �  J L�L L    MM o    �� 0 	file_text  �  : NON l     ����  �  �  O PQP l      �RS�  R � �
date_to_timestamp: Convert a date to iPhone-style UNIX timestamp
@param this_date: AppleScript date object
@return timestamp: The date as a timestamp
   S �TT. 
 d a t e _ t o _ t i m e s t a m p :   C o n v e r t   a   d a t e   t o   i P h o n e - s t y l e   U N I X   t i m e s t a m p 
 @ p a r a m   t h i s _ d a t e :   A p p l e S c r i p t   d a t e   o b j e c t 
 @ r e t u r n   t i m e s t a m p :   T h e   d a t e   a s   a   t i m e s t a m p 
Q UVU i   , /WXW I      �
Y�	�
 0 date_to_timestamp  Y Z�Z o      �� 0 	this_date  �  �	  X k     [[ \]\ l     �^_�  ^ 7 1 iPhone dates start on 2 Jan 2001, not 1 Jan 1970   _ �`` b   i P h o n e   d a t e s   s t a r t   o n   2   J a n   2 0 0 1 ,   n o t   1   J a n   1 9 7 0] aba r     cdc m     ee �ff  2 / 1 / 2 0 0 1d o      �� 0 
unix_start  b ghg l   �ij�  i > 8 Subtract the dates to get the number of seconds between   j �kk p   S u b t r a c t   t h e   d a t e s   t o   g e t   t h e   n u m b e r   o f   s e c o n d s   b e t w e e nh lml r    non \    
pqp o    �� 0 	this_date  q l   	r��r 4    	� s
�  
ldt s o    ���� 0 
unix_start  �  �  o o      ���� 0 	timestamp  m tut l   ��������  ��  ��  u v��v L    ww o    ���� 0 	timestamp  ��  V xyx l     ��������  ��  ��  y z{z l      ��|}��  | � �
timestamp_to_date: Convert an iPhone-style UNIX timestamp to a date
@param timestamp: An iPhone-style timestamp
@return this_date: The timestamp as an AppleScript date
   } �~~R 
 t i m e s t a m p _ t o _ d a t e :   C o n v e r t   a n   i P h o n e - s t y l e   U N I X   t i m e s t a m p   t o   a   d a t e 
 @ p a r a m   t i m e s t a m p :   A n   i P h o n e - s t y l e   t i m e s t a m p 
 @ r e t u r n   t h i s _ d a t e :   T h e   t i m e s t a m p   a s   a n   A p p l e S c r i p t   d a t e 
{ � i   0 3��� I      ������� 0 timestamp_to_date  � ���� o      ���� 0 	timestamp  ��  ��  � k     �� ��� l     ������  � 7 1 iPhone dates start on 2 Jan 2001, not 1 Jan 1970   � ��� b   i P h o n e   d a t e s   s t a r t   o n   2   J a n   2 0 0 1 ,   n o t   1   J a n   1 9 7 0� ��� r     ��� m     �� ���  2 / 1 / 2 0 0 1� o      ���� 0 
unix_start  � ��� l   ������  � : 4 Add the number of seconds to get the resulting date   � ��� h   A d d   t h e   n u m b e r   o f   s e c o n d s   t o   g e t   t h e   r e s u l t i n g   d a t e� ��� r    ��� [    
��� l   ������ 4    ���
�� 
ldt � o    ���� 0 
unix_start  ��  ��  � o    	���� 0 	timestamp  � o      ���� 0 	this_date  � ��� l   ��������  ��  ��  � ��� l   ������  � - ' Return the date. I wish I had a date.    � ��� N   R e t u r n   t h e   d a t e .   I   w i s h   I   h a d   a   d a t e .  � ���� L    �� o    ���� 0 	this_date  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �
get_photos: Gets all the photos since a date in an application
@param this_application: The name of the application
		start_date: The date to count photos after
@return these_photos: All the photos since that date
   � ���� 
 g e t _ p h o t o s :   G e t s   a l l   t h e   p h o t o s   s i n c e   a   d a t e   i n   a n   a p p l i c a t i o n 
 @ p a r a m   t h i s _ a p p l i c a t i o n :   T h e   n a m e   o f   t h e   a p p l i c a t i o n 
 	 	 s t a r t _ d a t e :   T h e   d a t e   t o   c o u n t   p h o t o s   a f t e r 
 @ r e t u r n   t h e s e _ p h o t o s :   A l l   t h e   p h o t o s   s i n c e   t h a t   d a t e 
� ��� i   4 7��� I      ������� 0 
get_photos  � ��� o      ���� 0 this_application  � ���� o      ���� 0 
start_date  ��  ��  � k     !�� ��� l     ��������  ��  ��  � ��� r     ��� J     ����  � o      ���� 0 these_photos  � ��� l   ��������  ��  ��  � ��� O    ��� k   	 �� ��� l  	 	������  � # set these_photos to selection   � ��� : s e t   t h e s e _ p h o t o s   t o   s e l e c t i o n� ���� r   	 ��� 6  	 ��� n   	 ��� 2    ��
�� 
rkdp� 4  	 ���
�� 
rklb� m    ���� � @    ��� n    ��� 1    ��
�� 
rkvl� 4    ���
�� 
rkex� m    �� ���  I m a g e D a t e� o    ���� 0 
start_date  � o      ���� 0 these_photos  ��  � m    ���                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��  � ��� l   ��������  ��  ��  � ���� L    !�� o     ���� 0 these_photos  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �
sequential_search: A sequential search algorithm. Match a value by counting through a list. 
@params: search_value: The value to search for
@return: this_difference: The difference between the found value and the search value.
		 this_index: The index of the found value. 
   � ���$ 
 s e q u e n t i a l _ s e a r c h :   A   s e q u e n t i a l   s e a r c h   a l g o r i t h m .   M a t c h   a   v a l u e   b y   c o u n t i n g   t h r o u g h   a   l i s t .   
 @ p a r a m s :   s e a r c h _ v a l u e :   T h e   v a l u e   t o   s e a r c h   f o r 
 @ r e t u r n :   t h i s _ d i f f e r e n c e :   T h e   d i f f e r e n c e   b e t w e e n   t h e   f o u n d   v a l u e   a n d   t h e   s e a r c h   v a l u e . 
 	 	   t h i s _ i n d e x :   T h e   i n d e x   o f   t h e   f o u n d   v a l u e .   
� ���� i   8 ;��� I      ������� 0 sequential_search  � ��� o      ���� 0 search_value  � ���� o      ���� 0 valid_range  ��  ��  � k     ��� ��� l     ��������  ��  ��  � ��� r     ��� m     ����  � o      ���� 0 previous_value  � ��� r    ��� m    ������� o      ���� 0 previous_index  � ��� l   ��������  ��  ��  � ��� r    ��� m    	������� o      ���� 0 this_difference  � ��� r    ��� m    ������� o      ���� 0 
this_index  �    l   ��������  ��  ��    Y    ����� k   " ~ 	 r   " ,

 n   " * 4   ' *��
�� 
cobj o   ( )���� 0 current_index   o   " '���� 0 search_list   o      ���� 0 
this_value  	  l  - -��������  ��  ��    r   - 4 c   - 2 \   - 0 o   - .���� 0 search_value   o   . /���� 0 
this_value   m   0 1��
�� 
long o      ���� 0 current_difference    r   5 < c   5 : \   5 8  o   5 6���� 0 
this_value    o   6 7���� 0 previous_value   m   8 9��
�� 
long o      ���� 0 previous_difference   !"! l  = =��������  ��  ��  " #$# Z  = K%&����% A   = @'(' o   = >���� 0 current_difference  ( m   > ?����  & r   C G)*) d   C E++ o   C D���� 0 current_difference  * o      ���� 0 current_difference  ��  ��  $ ,-, Z  L Z./����. A   L O010 o   L M���� 0 previous_difference  1 m   M N����  / r   R V232 d   R T44 o   R S���� 0 previous_difference  3 o      ���� 0 previous_difference  ��  ��  - 565 l  [ [��������  ��  ��  6 787 Z   [ r9:��;9 l  [ ^<����< A   [ ^=>= o   [ \���� 0 current_difference  > o   \ ]���� 0 previous_difference  ��  ��  : k   a h?? @A@ r   a dBCB o   a b�� 0 current_difference  C o      �~�~ 0 this_difference  A D�}D r   e hEFE o   e f�|�| 0 current_index  F o      �{�{ 0 
this_index  �}  ��  ; k   k rGG HIH r   k nJKJ o   k l�z�z 0 previous_difference  K o      �y�y 0 this_difference  I L�xL r   o rMNM o   o p�w�w 0 previous_index  N o      �v�v 0 
this_index  �x  8 OPO l  s s�u�t�s�u  �t  �s  P Q�rQ Z   s ~RS�q�pR l  s vT�o�nT A   s vUVU o   s t�m�m 0 this_difference  V o   t u�l�l 0 valid_range  �o  �n  S  S   y z�q  �p  �r  �� 0 current_index   m    �k�k  I   �jW�i
�j .corecnte****       ****W o    �h�h 0 search_list  �i  ��   XYX l  � ��g�f�e�g  �f  �e  Y Z[Z L   � �\\ J   � �]] ^_^ o   � ��d�d 0 this_difference  _ `�c` o   � ��b�b 0 
this_index  �c  [ a�aa l  � ��`�_�^�`  �_  �^  �a  ��       �]bcdefghijklmnopqr�]  b �\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�\ 0 
timestamps  �[ 0 	latitudes  �Z 0 
longitudes  �Y 0 search_list  �X 0 find_db_file  �W 0 	db_to_csv  �V 0 plist_to_csv  �U 0 replace_chars  �T 0 text_between  �S 0 read_csv  �R 0 apple_read_file  �Q 0 date_to_timestamp  �P 0 timestamp_to_date  �O 0 
get_photos  �N 0 sequential_search  
�M .aevtoappnull  �   � ****c �L�K�L  �K  d �J�I�J  �I  e �H�G�H  �G  f �F�E�F  �E  g �DM�C�Bst�A�D 0 find_db_file  �C �@u�@ u  �?�>�? 0 	home_path  �> 0 
table_name  �B  s �=�<�;�:�9�8�= 0 	home_path  �< 0 
table_name  �; 0 backup_folder  �: 0 backup_foldername  �9 0 db_file  �8 0 error_message  t `vx�7�6�����5�4�3��2�
�7 .sysoexecTEXT���     TEXT
�6 
cwor�5 0 error_message  �4  
�3 
nmbr�2���A c��%E�O�%�%j �i/E�O��%E�O�E�Okn �%�%�%�%j E�W 
X 	 
�E�oO��-�,l �Y hO���/E�O��%�%E�O�h �1�0�/vw�.�1 0 	db_to_csv  �0 �-x�- x  �,�+�*�, 0 db_file  �+ 0 
this_table  �* 0 destination_file  �/  v �)�(�'�) 0 db_file  �( 0 
this_table  �' 0 destination_file  w !#�&�%�$&
�& .sysoexecTEXT���     TEXT�%  �$  �.  �%�%�%�%�%�%j W 	X  �i �#2�"�!yz� �# 0 plist_to_csv  �" �{� {  ��� 0 
plist_file  � 0 destination_file  �!  y ��� 0 
plist_file  � 0 destination_file  z HK�`bdf�� 0 replace_chars  
� .sysoexecTEXT���     TEXT�  )���m+ E�O�%�%�%�%�%j j �r��|}�� 0 replace_chars  � �~� ~  ���� 0 	this_text  � 0 search_string  � 0 replacement_string  �  | ����� 0 	this_text  � 0 search_string  � 0 replacement_string  � 0 	item_list  } ���
�	�
� 
ascr
� 
txdl
�
 
citm
�	 
TEXT� !���,FO��-E�O���,FO��&E�O���,FO�k ������� 0 text_between  � ��� �  ���� 0 	this_text  � 0 
start_text  � 0 end_text  �   � �������  0 	this_text  �� 0 
start_text  �� 0 end_text  �� 0 return_text  � �����������������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT��  ��  � Y�E�O D�� ���,FO�[�\[Zl\62�&E�Y �E�O�� ���,FO��k/�&E�O���,FY hW X  	hO���,FO�l ������������ 0 read_csv  �� ����� �  ���� 0 	this_file  ��  � ���������������������������������������� 0 	this_file  �� 0 consolidateddb  �� 0 number_lines  �� 0 current_line  �� 0 	this_line  �� 0 mcc  �� 0 mnc  �� 0 lac  �� 0 ci  �� 0 	timestamp  �� 0 latitude  �� 0 	longitude  �� 0 horizontalaccuracy  �� 0 altitude  �� 0 verticalaccuracy  �� 	0 speed  �� 
0 course  �� 0 
confidence  �� 0 na  � ������������������������������������������������� 0 apple_read_file  
�� 
cpar
�� .corecnte****       ****
�� 
cwor
�� 
ascr
�� 
txdl
�� 
citm
�� 
cobj�� �� �� �� �� �� 	�� 
�� �� �� �� 0 text_between  
�� 
nmbr��gjvEc   OjvEc  OjvEc  O)�k+  E�O��-j E�O�kE�O&k�kh ��/E�O��-j k�� ~���,FO��-E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[�a /E�Z[�a /E�Z[�a /E^ Z[�a /E^ ZOa ��,FY hO�a  M)�a a m+ E�Oa ��,FO��-E[�k/E�Z[�l/E�Z[�m/E�Z[��/E^ Z[��/E�ZOa ��,FY hO�a &b   6FO�a &b  6FO�a &b  6FOPY h[OY��Ob   j m ��<���������� 0 apple_read_file  �� ����� �  ���� 0 	this_file  ��  � ������ 0 	this_file  �� 0 	file_text  � ������
�� .rdwropenshor       file
�� .rdwrread****        ****
�� .rdwrclosnull���     ****�� �j  O�j E�O�j O�n ��X���������� 0 date_to_timestamp  �� ����� �  ���� 0 	this_date  ��  � �������� 0 	this_date  �� 0 
unix_start  �� 0 	timestamp  � e��
�� 
ldt �� �E�O�*�/E�O�o ������������� 0 timestamp_to_date  �� ����� �  ���� 0 	timestamp  ��  � �������� 0 	timestamp  �� 0 
unix_start  �� 0 	this_date  � ���
�� 
ldt �� �E�O*�/�E�O�p ������������� 0 
get_photos  �� ����� �  ������ 0 this_application  �� 0 
start_date  ��  � �������� 0 this_application  �� 0 
start_date  �� 0 these_photos  � �����������
�� 
rklb
�� 
rkdp�  
�� 
rkex
�� 
rkvl�� "jvE�O� *�k/�-�[��/�,\Z�;1E�UO�q ������������� 0 sequential_search  �� ����� �  ������ 0 search_value  �� 0 valid_range  ��  � 
���������������������� 0 search_value  �� 0 valid_range  �� 0 previous_value  �� 0 previous_index  �� 0 this_difference  �� 0 
this_index  �� 0 current_index  �� 0 
this_value  �� 0 current_difference  �� 0 previous_difference  � ������
�� .corecnte****       ****
�� 
cobj
�� 
long�� �jE�OiE�OiE�OiE�O rkb  j  kh b  �/E�O���&E�O���&E�O�j 	�'E�Y hO�j 	�'E�Y hO�� �E�O�E�Y 	�E�O�E�O�� Y h[OY��O��lvOPr �����������
�� .aevtoappnull  �   � ****� k     ��  &��  4��  D��  [��  q��  ~��  ���  ���  ���  ���  ���  ���  ��� �� %�� 1�� �� *�� ?����  ��  ��  � ���� 0 current_photo  � = +��������~�}�| f h�{�z�y � ��x�w�v � ��u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e\�d�c�b�a�`�_�^��]�\�[�Z�Y�X�W�V�U�T79;�S�� 0 
table_name  
�� afdrcusr
�� .earsffdralis        afdr
� 
psxp�~ 0 	home_path  �} 0 find_db_file  �| 0 db_file  �{ 0 cell_location_file  �z 0 	db_to_csv  �y 0 
file_found  
�x .sysostdfalis    ��� null�w 0 read_csv  �v 0 number_timestamps  
�u .sysoexecTEXT���     TEXT�t 0 photos_tagged  
�s 
cobj�r 0 start_timestamp  �q 0 timestamp_to_date  �p 0 
start_date  
�o .misccurdldt    ��� null�n 0 
last_alert  
�m 
sele�l 0 these_photos  
�k .corecnte****       ****�j 0 number_photos  �i 0 next_check_date  �h 0 
this_photo  
�g 
pnam�f 0 
photo_name  
�e 
rkex
�d 
rkvl�c 0 
photo_date  
�b 
rkla
�a 
TEXT�` 0 photo_latitude  �_ 0 date_to_timestamp  �^ 0 photo_timestamp  �] <�\ �[ 0 valid_range  �Z 0 sequential_search  �Y 0 this_difference  �X 0 
this_index  �W 0 this_latitude  �V 0 this_longitude  
�U 
rklo�T 0 number_tagged  �S 0 response_text  ���E�O�j �,E�O)��l+ E�O��%�%�%E�O)���m+ E�O��  �j �,E�O)���m+ Y hO)�k+ E` Oa �%a %j Ob   OjvE` Ob   a k/E` O)_ k+ E` O*j E` Oa  *a ,E` O_ j E`  OPUO_ E` !Ok_  kh  a  =_ a �/E` "O_ "a #,E` $O_ "a %a &/a ',E` (O_ "a ),a *&E` +UO)_ (k+ ,E` -O_ +a .  �a /a / a 0 E` 1Ob   Ec  O)_ -_ 1l+ 2E[a k/E` 3Z[a l/E` 4ZOb  a _ 4/E` 5Ob  a _ 4/E` 6O_ 3_ 1 4a  _ 5_ "a ),FO_ 6_ "a 7,FUO_ $_ 6FO_ E` !Y _ E` !OPOPY hOP[OY��O_ j E` 8Oa 9_ 8%a :%_  %a ;%E` <O_ <ascr  ��ޭ