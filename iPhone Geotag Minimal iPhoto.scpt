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
�� afdrcusr��  ��  ��   8 o      ���� 0 	home_path  ��  ��   5  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A $  Ask the user to select a file    B � C C <   A s k   t h e   u s e r   t o   s e l e c t   a   f i l e @  D E D l    F���� F r     G H G n     I J I 1    ��
�� 
psxp J l    K���� K I   �� L��
�� .sysostdfalis    ��� null L m     M M � N N 2 S e l e c t   y o u r   l o c a t i o n   f i l e��  ��  ��   H o      ���� 0 db_file  ��  ��   E  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S ` Z Extract the CellLocation database to a CSV file in a working directory. Trash should do.     T � U U �   E x t r a c t   t h e   C e l l L o c a t i o n   d a t a b a s e   t o   a   C S V   f i l e   i n   a   w o r k i n g   d i r e c t o r y .   T r a s h   s h o u l d   d o .   R  V W V l   ! X���� X r    ! Y Z Y b     [ \ [ b     ] ^ ] b     _ ` _ o    ���� 0 	home_path   ` m     a a � b b  . T r a s h / ^ o    ���� 0 
table_name   \ m     c c � d d  . c s v Z o      ���� 0 cell_location_file  ��  ��   W  e f e l     ��������  ��  ��   f  g h g l     �� i j��   i . ( If it's consolidated.db, read a db file    j � k k P   I f   i t ' s   c o n s o l i d a t e d . d b ,   r e a d   a   d b   f i l e h  l m l l  " , n���� n r   " , o p o n  " * q r q I   # *�� s���� 0 	db_to_csv   s  t u t o   # $���� 0 db_file   u  v w v o   $ %���� 0 
table_name   w  x�� x o   % &���� 0 cell_location_file  ��  ��   r  f   " # p o      ���� 0 
file_found  ��  ��   m  y z y l  - I {���� { Z   - I | }���� | =  - 0 ~  ~ o   - .���� 0 
file_found    m   . / � � � � � 
 E r r o r } k   3 E � �  � � � r   3 < � � � n   3 : � � � 1   8 :��
�� 
psxp � l  3 8 ����� � I  3 8�� ���
�� .sysostdfalis    ��� null � m   3 4 � � � � � 2 S e l e c t   y o u r   l o c a t i o n   f i l e��  ��  ��   � o      ���� 0 db_file   �  ��� � n  = E � � � I   > E�� ����� 0 	db_to_csv   �  � � � o   > ?���� 0 db_file   �  � � � o   ? @���� 0 
table_name   �  ��� � o   @ A���� 0 cell_location_file  ��  ��   �  f   = >��  ��  ��  ��  ��   z  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � U O Read the CSV file. Easier to script than the original SQL for a no0b like me.     � � � � �   R e a d   t h e   C S V   f i l e .   E a s i e r   t o   s c r i p t   t h a n   t h e   o r i g i n a l   S Q L   f o r   a   n o 0 b   l i k e   m e .   �  � � � l  J T ����� � r   J T � � � n  J P � � � I   K P�� ����� 0 read_csv   �  ��� � o   K L���� 0 cell_location_file  ��  ��   �  f   J K � o      ���� 0 number_timestamps  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ( " Clean up after the table's read.     � � � � D   C l e a n   u p   a f t e r   t h e   t a b l e ' s   r e a d .   �  � � � l     �� � ���   � 9 3do shell script "rm \"" & cell_location_file & "\""    � � � � f d o   s h e l l   s c r i p t   " r m   \ " "   &   c e l l _ l o c a t i o n _ f i l e   &   " \ " " �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �   Tag the photos     � � � �     T a g   t h e   p h o t o s   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 5 / Keep track of all the names of photos tagged.     � � � � ^   K e e p   t r a c k   o f   a l l   t h e   n a m e s   o f   p h o t o s   t a g g e d .   �  � � � l  U [ ����� � r   U [ � � � J   U W����   � o      ���� 0 photos_tagged  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � - ' Find the start date of the iPhone data    � � � � N   F i n d   t h e   s t a r t   d a t e   o f   t h e   i P h o n e   d a t a �  � � � l  \ j ����� � r   \ j � � � n   \ f � � � 4   a f�� �
�� 
cobj � m   d e����  � o   \ a�� 0 
timestamps   � o      �~�~ 0 start_timestamp  ��  ��   �  � � � l  k w ��}�| � r   k w � � � n  k s � � � I   l s�{ ��z�{ 0 timestamp_to_date   �  ��y � o   l o�x�x 0 start_timestamp  �y  �z   �  f   k l � o      �w�w 0 
start_date  �}  �|   �  � � � l     �v�u�t�v  �u  �t   �  � � � l     �s � ��s   �   Warn the user    � � � �    W a r n   t h e   u s e r �  � � � l     �r�q�p�r  �q  �p   �  � � � l  x � ��o�n � r   x � � � � I  x }�m�l�k
�m .misccurdldt    ��� null�l  �k   � o      �j�j 0 
last_alert  �o  �n   �  � � � l     �i�h�g�i  �h  �g   �  � � � l     �f � ��f   �   Get photo properties    � � � � *   G e t   p h o t o   p r o p e r t i e s �  � � � l  � � ��e�d � O   � � � � � k   � � � �  � � � l  � ��c�b�a�c  �b  �a   �  � � � r   � � � � � 1   � ��`
�` 
selc � o      �_�_ 0 these_photos   �    l  � ��^�]�\�^  �]  �\    l  � ��[�[   !  Count the number of photos    � 6   C o u n t   t h e   n u m b e r   o f   p h o t o s  r   � �	
	 I  � ��Z�Y
�Z .corecnte****       **** o   � ��X�X 0 these_photos  �Y  
 o      �W�W 0 number_photos   �V l  � ��U�T�S�U  �T  �S  �V   � m   � ��                                                                                  iPho  alis    X  Peter Burkimsher           ɾ��H+      
iPhoto.app                                                      {�ș��        ����  	                Applications    ɾ��      ș��          (Peter Burkimsher:Applications:iPhoto.app   
 i P h o t o . a p p  "  P e t e r   B u r k i m s h e r  Applications/iPhoto.app   / ��  �e  �d   �  l     �R�Q�P�R  �Q  �P    l     �O�O   A ; Use the time difference to only check as much as necessary    � v   U s e   t h e   t i m e   d i f f e r e n c e   t o   o n l y   c h e c k   a s   m u c h   a s   n e c e s s a r y  l  � ��N�M r   � � o   � ��L�L 0 
start_date   o      �K�K 0 next_check_date  �N  �M    l     �J�I�H�J  �I  �H    l     �G�G   "  For every photo in the list    �   8   F o r   e v e r y   p h o t o   i n   t h e   l i s t !"! l  ��#$%# Y   ��&�F'(�E& k   ��)) *+* l  � ��D�C�B�D  �C  �B  + ,-, l  � ��A./�A  .   Get the photo   / �00    G e t   t h e   p h o t o- 121 r   � �343 n   � �565 4   � ��@7
�@ 
cobj7 o   � ��?�? 0 current_photo  6 o   � ��>�> 0 these_photos  4 o      �=�= 0 
this_photo  2 898 r   � �:;: n   � �<=< 1   � ��<
�< 
pnam= o   � ��;�; 0 
this_photo  ; o      �:�: 0 
photo_name  9 >?> r   � �@A@ n   � �BCB m   � ��9
�9 
ldt C o   � ��8�8 0 
this_photo  A o      �7�7 0 
photo_date  ? DED r   � �FGF n   � �HIH o   � ��6�6 0 latitude  I o   � ��5�5 0 
this_photo  G o      �4�4 0 photo_latitude  E JKJ l  � ��3�2�1�3  �2  �1  K LML l  � ��0�/�.�0  �/  �.  M NON l  � ��-PQ�-  P ? 9 Convert the photo date to an iPhone-style UNIX timestamp   Q �RR r   C o n v e r t   t h e   p h o t o   d a t e   t o   a n   i P h o n e - s t y l e   U N I X   t i m e s t a m pO STS r   � �UVU n  � �WXW I   � ��,Y�+�, 0 date_to_timestamp  Y Z�*Z o   � ��)�) 0 
photo_date  �*  �+  X  f   � �V o      �(�( 0 photo_timestamp  T [\[ l  � ��'�&�%�'  �&  �%  \ ]^] l  � ��$_`�$  _ ) # If the location is not set already   ` �aa F   I f   t h e   l o c a t i o n   i s   n o t   s e t   a l r e a d y^ bcb l  ��defd Z   ��gh�#�"g l  � �i�!� i =  � �jkj o   � ��� 0 photo_latitude  k m   � �ll �mm  m i s s i n g   v a l u e�!  �   h k   ��nn opo l  � �����  �  �  p qrq l  � ��st�  s 9 3 Search the database for the nearest known location   t �uu f   S e a r c h   t h e   d a t a b a s e   f o r   t h e   n e a r e s t   k n o w n   l o c a t i o nr vwv r   �xyx o   ��� 0 
timestamps  y o      �� 0 search_list  w z{z r  	|}| l 	~��~ ]  	� ]  	��� m  	�� <� m  �� <� m  �� �  �  } o      �� 0 valid_range  { ��� l ����  �  �  � ��� r  ;��� n $��� I  $���� 0 sequential_search  � ��� o  �� 0 photo_timestamp  � ��� o   �� 0 valid_range  �  �  �  f  � J      �� ��� o      �
�
 0 this_difference  � ��	� o      �� 0 
this_index  �	  � ��� l <<����  �  �  � ��� l <<����  �   Read the database   � ��� $   R e a d   t h e   d a t a b a s e� ��� r  <L��� n  <H��� 4  AH��
� 
cobj� o  DG�� 0 
this_index  � o  <A�� 0 	latitudes  � o      � �  0 this_latitude  � ��� r  M]��� n  MY��� 4  RY���
�� 
cobj� o  UX���� 0 
this_index  � o  MR���� 0 
longitudes  � o      ���� 0 this_longitude  � ��� l ^^��������  ��  ��  � ��� l ^^������  � + % If the photo's taken within 24 hours   � ��� J   I f   t h e   p h o t o ' s   t a k e n   w i t h i n   2 4   h o u r s� ��� l ^����� Z  ^������� A  ^e��� o  ^a���� 0 this_difference  � o  ad���� 0 valid_range  � k  h��� ��� l hh��������  ��  ��  � ��� l hh������  � $  Write the photo location tags   � ��� <   W r i t e   t h e   p h o t o   l o c a t i o n   t a g s� ��� O  h���� k  n��� ��� r  ny��� o  nq���� 0 this_latitude  � n      ��� 1  tx��
�� 
lati� o  qt���� 0 
this_photo  � ���� r  z���� o  z}���� 0 this_longitude  � n      ��� 1  ����
�� 
lngt� o  }����� 0 
this_photo  ��  � m  hk���                                                                                  iPho  alis    X  Peter Burkimsher           ɾ��H+      
iPhoto.app                                                      {�ș��        ����  	                Applications    ɾ��      ș��          (Peter Burkimsher:Applications:iPhoto.app   
 i P h o t o . a p p  "  P e t e r   B u r k i m s h e r  Applications/iPhoto.app   / ��  � ��� l ����������  ��  ��  � ��� l ��������  � * $ Record the name of the photo tagged   � ��� H   R e c o r d   t h e   n a m e   o f   t h e   p h o t o   t a g g e d� ��� r  ����� o  ������ 0 
photo_name  � n      ���  ;  ��� o  ������ 0 photos_tagged  � ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ���� r  ����� o  ������ 0 
start_date  � o      ���� 0 next_check_date  ��  ��  � k  ���� ��� l ����������  ��  ��  � ��� r  ����� o  ������ 0 
start_date  � o      ���� 0 next_check_date  � ���� l ����������  ��  ��  ��  � $  end if the location is recent   � ��� <   e n d   i f   t h e   l o c a t i o n   i s   r e c e n t� ���� l ����������  ��  ��  ��  �#  �"  e   end if location is set   f ��� .   e n d   i f   l o c a t i o n   i s   s e tc ���� l ����������  ��  ��  ��  �F 0 current_photo  ' m   � ����� ( o   � ����� 0 number_photos  �E  $ , & end repeat this_photo in these_photos   % ��� L   e n d   r e p e a t   t h i s _ p h o t o   i n   t h e s e _ p h o t o s" ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �   Return statistics    � ��� &   R e t u r n   s t a t i s t i c s  � ��� l     ��������  ��  ��  � ��� l     �� ��    ; 5 Count the number of photos whose locatoins are found    � j   C o u n t   t h e   n u m b e r   o f   p h o t o s   w h o s e   l o c a t o i n s   a r e   f o u n d�  l ������ r  �� I ������
�� .corecnte****       **** o  ������ 0 photos_tagged  ��   o      ���� 0 number_tagged  ��  ��   	
	 l     ��������  ��  ��  
  l     ����     Return a response    � $   R e t u r n   a   r e s p o n s e  l ������ r  �� b  �� b  �� b  �� b  �� b  �� b  ��  b  ��!"! b  ��#$# m  ��%% �&&  T a g g e d  $ o  ������ 0 number_tagged  " m  ��'' �((    o f    o  ������ 0 number_photos   m  ��)) �**    p h o t o s   i n   o  ������ 0 runtime   m  ��++ �,,    m i n u t e s   i n   o  ������ 0 this_application   m  ��-- �..  ! o      ���� 0 response_text  ��  ��   /0/ l     ��������  ��  ��  0 121 l ��3����3 L  ��44 o  ������ 0 response_text  ��  ��  2 565 l     ��������  ��  ��  6 787 l      ��9:��  9 � �
find_db_file: Finds an iPhone backup file with a particular sqlite table name. 
@params home_path: Path to a user's home directory
		 table_name: Name of the table to search for
@return db_file: Path to the database file containing the table
   : �;;� 
 f i n d _ d b _ f i l e :   F i n d s   a n   i P h o n e   b a c k u p   f i l e   w i t h   a   p a r t i c u l a r   s q l i t e   t a b l e   n a m e .   
 @ p a r a m s   h o m e _ p a t h :   P a t h   t o   a   u s e r ' s   h o m e   d i r e c t o r y 
 	 	   t a b l e _ n a m e :   N a m e   o f   t h e   t a b l e   t o   s e a r c h   f o r 
 @ r e t u r n   d b _ f i l e :   P a t h   t o   t h e   d a t a b a s e   f i l e   c o n t a i n i n g   t h e   t a b l e 
8 <=< i    >?> I      ��@���� 0 find_db_file  @ ABA o      ���� 0 	home_path  B C��C o      ���� 0 
table_name  ��  ��  ? k     bDD EFE l     ��������  ��  ��  F GHG l     ��IJ��  I ) # The root folder for iPhone backups   J �KK F   T h e   r o o t   f o l d e r   f o r   i P h o n e   b a c k u p sH LML r     NON b     PQP o     ���� 0 	home_path  Q m    RR �SS \ L i b r a r y / A p p l i c a t i o n   S u p p o r t / M o b i l e S y n c / B a c k u p /O o      ���� 0 backup_folder  M TUT l   ��������  ��  ��  U VWV l   ��XY��  X > 8 Find the name of the most recently-edited backup folder   Y �ZZ p   F i n d   t h e   n a m e   o f   t h e   m o s t   r e c e n t l y - e d i t e d   b a c k u p   f o l d e rW [\[ r    ]^] n    _`_ 4   ��a
�� 
cwora m    ������` l   b����b I   ��c��
�� .sysoexecTEXT���     TEXTc b    ded b    	fgf m    hh �ii  l s   - a l t R   "g o    ���� 0 backup_folder  e m   	 
jj �kk 2 "   |   h e a d   - n   3   |   t a i l   - n   1��  ��  ��  ^ o      ���� 0 backup_foldername  \ lml l   ��������  ��  ��  m non l   ��pq��  p 6 0 Append the backup foldername to the search path   q �rr `   A p p e n d   t h e   b a c k u p   f o l d e r n a m e   t o   t h e   s e a r c h   p a t ho sts r    uvu b    wxw o    ���� 0 backup_folder  x o    ���� 0 backup_foldername  v o      ���� 0 backup_folder  t yzy l   ��������  ��  ��  z {|{ l   ��}~��  } + % In case the file's not found quickly   ~ � J   I n   c a s e   t h e   f i l e ' s   n o t   f o u n d   q u i c k l y| ��� r    ��� m    �� ��� 
 E r r o r� o      �� 0 db_file  � ��� l   �~�}�|�~  �}  �|  � ��� l   �{���{  � F @ Use find and grep to search for files containing the table name   � ��� �   U s e   f i n d   a n d   g r e p   t o   s e a r c h   f o r   f i l e s   c o n t a i n i n g   t h e   t a b l e   n a m e� ��� t    ?��� Q   ! >���� r   $ 3��� l  $ 1��z�y� I  $ 1�x��w
�x .sysoexecTEXT���     TEXT� b   $ -��� b   $ +��� b   $ )��� b   $ '��� m   $ %�� ���  f i n d   "� o   % &�v�v 0 backup_folder  � m   ' (�� ��� F "   - t y p e   f   - p r i n t 0   |   x a r g s   - 0   g r e p   "� o   ) *�u�u 0 
table_name  � m   + ,�� ���  "�w  �z  �y  � o      �t�t 0 db_file  � R      �s��r
�s .ascrerr ****      � ****� o      �q�q 0 error_message  �r  � k   ; >�� ��� l  ; ;�p���p  � 8 2 Output of the find is usually handled as an error   � ��� d   O u t p u t   o f   t h e   f i n d   i s   u s u a l l y   h a n d l e d   a s   a n   e r r o r� ��o� r   ; >��� o   ; <�n�n 0 error_message  � o      �m�m 0 db_file  �o  � m     �l�l � ��� l  @ @�k�j�i�k  �j  �i  � ��� l  @ @�h���h  � * $ If there's no file, return an error   � ��� H   I f   t h e r e ' s   n o   f i l e ,   r e t u r n   a n   e r r o r� ��� Z   @ P���g�f� l  @ G��e�d� A   @ G��� l  @ E��c�b� n   @ E��� m   C E�a
�a 
nmbr� n   @ C��� 2  A C�`
�` 
cwor� o   @ A�_�_ 0 db_file  �c  �b  � m   E F�^�^ �e  �d  � L   J L�� m   J K�� ��� 
 E r r o r�g  �f  � ��� l  Q Q�]�\�[�]  �\  �[  � ��� l  Q Q�Z���Z  � _ Y The output of find-grep is "Binary file xx/yy/zz matches". We want the penultimate word.   � ��� �   T h e   o u t p u t   o f   f i n d - g r e p   i s   " B i n a r y   f i l e   x x / y y / z z   m a t c h e s " .   W e   w a n t   t h e   p e n u l t i m a t e   w o r d .� ��� r   Q W��� n   Q U��� 4   R U�Y�
�Y 
cwor� m   S T�X�X��� o   Q R�W�W 0 db_file  � o      �V�V 0 db_file  � ��� l  X X�U�T�S�U  �T  �S  � ��� l  X X�R���R  � 7 1 Append with the search path to get the file path   � ��� b   A p p e n d   w i t h   t h e   s e a r c h   p a t h   t o   g e t   t h e   f i l e   p a t h� ��� r   X _��� b   X ]��� b   X [��� o   X Y�Q�Q 0 backup_folder  � m   Y Z�� ���  /� o   [ \�P�P 0 db_file  � o      �O�O 0 db_file  � ��� l  ` `�N�M�L�N  �M  �L  � ��� l  ` `�K���K  � - ' Return the path to the calling routine   � ��� N   R e t u r n   t h e   p a t h   t o   t h e   c a l l i n g   r o u t i n e� ��J� L   ` b�� o   ` a�I�I 0 db_file  �J  = ��� l     �H�G�F�H  �G  �F  � ��� l      �E���E  � � �
db_to_csv: Export a sqlite database table to a CSV file
@params db_file: The path of the sqlite database to export from
		 this_table: The name of the table to export
		 destination_file: The name of the CSV file to save it as
   � ���� 
 d b _ t o _ c s v :   E x p o r t   a   s q l i t e   d a t a b a s e   t a b l e   t o   a   C S V   f i l e 
 @ p a r a m s   d b _ f i l e :   T h e   p a t h   o f   t h e   s q l i t e   d a t a b a s e   t o   e x p o r t   f r o m 
 	 	   t h i s _ t a b l e :   T h e   n a m e   o f   t h e   t a b l e   t o   e x p o r t 
 	 	   d e s t i n a t i o n _ f i l e :   T h e   n a m e   o f   t h e   C S V   f i l e   t o   s a v e   i t   a s 
� ��� i    ��� I      �D��C�D 0 	db_to_csv  � ��� o      �B�B 0 db_file  � ��� o      �A�A 0 
this_table  � ��@� o      �?�? 0 destination_file  �@  �C  � Q     � � I   �>�=
�> .sysoexecTEXT���     TEXT b     b     b     b    
	
	 b     b     m     � : s q l i t e 3   - c s v   - s e p a r a t o r   ' , '   " o    �<�< 0 db_file   m     � " "   " s e l e c t   *   f r o m  
 o    	�;�; 0 
this_table   m   
  �  ; "   >   " o    �:�: 0 destination_file   m     �  "�=    R      �9�8�7
�9 .ascrerr ****      � ****�8  �7   L     m     � 
 E r r o r�  l     �6�5�4�6  �5  �4    l      �3�3   � �
plist_to_csv: Convert a plist file to a CSV file
@params db_file: The path of the plist file to convert from
		 destination_file: The name of the CSV file to save it as
    �  T 
 p l i s t _ t o _ c s v :   C o n v e r t   a   p l i s t   f i l e   t o   a   C S V   f i l e 
 @ p a r a m s   d b _ f i l e :   T h e   p a t h   o f   t h e   p l i s t   f i l e   t o   c o n v e r t   f r o m 
 	 	   d e s t i n a t i o n _ f i l e :   T h e   n a m e   o f   t h e   C S V   f i l e   t o   s a v e   i t   a s 
 !"! i    #$# I      �2%�1�2 0 plist_to_csv  % &'& o      �0�0 0 
plist_file  ' (�/( o      �.�. 0 destination_file  �/  �1  $ k     )) *+* l     �-,-�-  , , &Remove the extension, or it won't work   - �.. L R e m o v e   t h e   e x t e n s i o n ,   o r   i t   w o n ' t   w o r k+ /0/ r     
121 n    343 I    �,5�+�, 0 replace_chars  5 676 o    �*�* 0 
plist_file  7 898 m    :: �;;  . p l i s t9 <�)< m    == �>>  �)  �+  4  f     2 o      �(�( 0 
plist_file  0 ?@? l   �'�&�%�'  �&  �%  @ ABA l   �$CD�$  C   Extract the data   D �EE "   E x t r a c t   t h e   d a t aB F�#F I   �"G�!
�" .sysoexecTEXT���     TEXTG b    HIH b    JKJ b    LML b    NON b    PQP m    RR �SS  d e f a u l t s   r e a d   "Q o    � �  0 
plist_file  O m    TT �UU  "   >  M m    VV �WW  "K o    �� 0 destination_file  I m    XX �YY  "�!  �#  " Z[Z l     ����  �  �  [ \]\ l      �^_�  ^ � �
replace_chars: Replaces text in a string
@params this_text: The string to replace within
		 search_string: The text to be replaced
		 replacement_string: The text for it to be replaced with
@return this_text: The string with replacements made
   _ �``� 
 r e p l a c e _ c h a r s :   R e p l a c e s   t e x t   i n   a   s t r i n g 
 @ p a r a m s   t h i s _ t e x t :   T h e   s t r i n g   t o   r e p l a c e   w i t h i n 
 	 	   s e a r c h _ s t r i n g :   T h e   t e x t   t o   b e   r e p l a c e d 
 	 	   r e p l a c e m e n t _ s t r i n g :   T h e   t e x t   f o r   i t   t o   b e   r e p l a c e d   w i t h 
 @ r e t u r n   t h i s _ t e x t :   T h e   s t r i n g   w i t h   r e p l a c e m e n t s   m a d e 
] aba i    cdc I      �e�� 0 replace_chars  e fgf o      �� 0 	this_text  g hih o      �� 0 search_string  i j�j o      �� 0 replacement_string  �  �  d k      kk lml r     non l    p��p o     �� 0 search_string  �  �  o n     qrq 1    �
� 
txdlr 1    �
� 
ascrm sts r    uvu n    	wxw 2    	�
� 
citmx o    �� 0 	this_text  v l     y��y o      �� 0 	item_list  �  �  t z{z r    |}| l   ~�
�	~ o    �� 0 replacement_string  �
  �	  } n     � 1    �
� 
txdl� 1    �
� 
ascr{ ��� r    ��� c    ��� l   ���� o    �� 0 	item_list  �  �  � m    �
� 
TEXT� o      �� 0 	this_text  � ��� r    ��� m    �� ���  � n     ��� 1    � 
�  
txdl� 1    ��
�� 
ascr� ���� L     �� o    ���� 0 	this_text  ��  b ��� l     ��������  ��  ��  � ��� l      ������  � � �
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
ascr� ��� l  V V��������  ��  ��  � ���� L   V X�� o   V W���� 0 return_text  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �
read_csv: Reads the CellLocation csv. Will need modifying for other file formats. 
@params this_file: The csv file to read
@return number_timestamps: The number of records in the file
   � ���r 
 r e a d _ c s v :   R e a d s   t h e   C e l l L o c a t i o n   c s v .   W i l l   n e e d   m o d i f y i n g   f o r   o t h e r   f i l e   f o r m a t s .   
 @ p a r a m s   t h i s _ f i l e :   T h e   c s v   f i l e   t o   r e a d 
 @ r e t u r n   n u m b e r _ t i m e s t a m p s :   T h e   n u m b e r   o f   r e c o r d s   i n   t h e   f i l e 
� ��� i   $ '� � I      ������ 0 read_csv   �� o      ���� 0 	this_file  ��  ��    k    f  l     ����   !  Clear the export variables    � 6   C l e a r   t h e   e x p o r t   v a r i a b l e s 	
	 r      J     ����   o      ���� 0 
timestamps  
  r   	  J   	 ����   o      ���� 0 	latitudes    r     J    ����   o      ���� 0 
longitudes    l   ��������  ��  ��    l   ����   * $ Read the file using Apple's routine    � H   R e a d   t h e   f i l e   u s i n g   A p p l e ' s   r o u t i n e  r    # n   ! !  I    !��"���� 0 apple_read_file  " #��# o    ���� 0 	this_file  ��  ��  !  f     o      ���� 0 consolidateddb   $%$ l  $ $��������  ��  ��  % &'& l  $ $��()��  ( Q K Find the number of rows in the file, minus one for an blank trailing line.   ) �** �   F i n d   t h e   n u m b e r   o f   r o w s   i n   t h e   f i l e ,   m i n u s   o n e   f o r   a n   b l a n k   t r a i l i n g   l i n e .' +,+ r   $ --.- I  $ +��/��
�� .corecnte****       ****/ n   $ '010 2  % '��
�� 
cpar1 o   $ %���� 0 consolidateddb  ��  . o      ���� 0 number_lines  , 232 r   . 3454 \   . 1676 o   . /���� 0 number_lines  7 m   / 0���� 5 o      ���� 0 number_lines  3 898 l  4 4��������  ��  ��  9 :;: l  4 4��<=��  <   Go through each line   = �>> *   G o   t h r o u g h   e a c h   l i n e; ?@? Y   4[A��BC��A k   >VDD EFE l  > >��GH��  G   Get the line   H �II    G e t   t h e   l i n eF JKJ r   > DLML n   > BNON 4   ? B��P
�� 
cparP o   @ A���� 0 current_line  O o   > ?���� 0 consolidateddb  M o      ���� 0 	this_line  K QRQ l  E E��������  ��  ��  R STS l  E E��UV��  U   Ignore blank lines   V �WW &   I g n o r e   b l a n k   l i n e sT X��X l  EVYZ[Y Z   EV\]����\ l  E N^����^ ?   E N_`_ l  E La����a I  E L��b��
�� .corecnte****       ****b n   E Hcdc 2  F H��
�� 
cword o   E F���� 0 	this_line  ��  ��  ��  ` m   L M���� ��  ��  ] k   QRee fgf l  Q Q��������  ��  ��  g hih l  Q Q��jk��  j   For consolidated.db		   k �ll ,   F o r   c o n s o l i d a t e d . d b 	 	i mnm Z   Q �op����o l  Q Tq����q D   Q Trsr o   Q R�� 0 	this_file  s m   R Stt �uu   C e l l L o c a t i o n . c s v��  ��  p k   W �vv wxw l  W W�~yz�~  y + % Read the contents of the line as CSV   z �{{ J   R e a d   t h e   c o n t e n t s   o f   t h e   l i n e   a s   C S Vx |}| r   W \~~ m   W X�� ���  , n     ��� 1   Y [�}
�} 
txdl� 1   X Y�|
�| 
ascr} ��� r   ] ���� n   ] `��� 2   ^ `�{
�{ 
citm� o   ] ^�z�z 0 	this_line  � J      �� ��� o      �y�y 0 mcc  � ��� o      �x�x 0 mnc  � ��� o      �w�w 0 lac  � ��� o      �v�v 0 ci  � ��� o      �u�u 0 	timestamp  � ��� o      �t�t 0 latitude  � ��� o      �s�s 0 	longitude  � ��� o      �r�r 0 horizontalaccuracy  � ��� o      �q�q 0 altitude  � ��� o      �p�p 0 verticalaccuracy  � ��� o      �o�o 	0 speed  � ��� o      �n�n 
0 course  � ��m� o      �l�l 0 
confidence  �m  � ��k� r   � ���� m   � ��� ���  � n     ��� 1   � ��j
�j 
txdl� 1   � ��i
�i 
ascr�k  ��  ��  n ��� l  � ��h�g�f�h  �g  �f  � ��� l  � ��e���e  �   For cells.plist   � ���     F o r   c e l l s . p l i s t� ��� Z   �)���d�c� l  � ���b�a� D   � ���� o   � ��`�` 0 	this_file  � m   � ��� ���  c e l l s . c s v�b  �a  � k   �%�� ��� l  � ��_���_  �    Remove trailing semicolon   � ��� 4   R e m o v e   t r a i l i n g   s e m i c o l o n� ��� r   � ���� n  � ���� I   � ��^��]�^ 0 text_between  � ��� o   � ��\�\ 0 	this_line  � ��� m   � ��� ���  +� ��[� m   � ��� ���  " ;�[  �]  �  f   � �� o      �Z�Z 0 	this_line  � ��� l  � ��Y�X�W�Y  �X  �W  � ��� l  � ��V���V  � + % Read the contents of the line as CSV   � ��� J   R e a d   t h e   c o n t e n t s   o f   t h e   l i n e   a s   C S V� ��� r   � ���� m   � ��� ���  ,� n     ��� 1   � ��U
�U 
txdl� 1   � ��T
�T 
ascr� ��� r   ���� n   � ���� 2   � ��S
�S 
citm� o   � ��R�R 0 	this_line  � J      �� ��� o      �Q�Q 0 latitude  � ��� o      �P�P 0 	longitude  � ��� o      �O�O 0 horizontalaccuracy  � ��� o      �N�N 0 na  � ��M� o      �L�L 0 	timestamp  �M  � ��K� r  %��� m  !�� ���  � n     ��� 1  "$�J
�J 
txdl� 1  !"�I
�I 
ascr�K  �d  �c  � ��� l **�H�G�F�H  �G  �F  � ��� l **�E���E  � F @ Save the data we want to the global variables ("property" type)   � ��� �   S a v e   t h e   d a t a   w e   w a n t   t o   t h e   g l o b a l   v a r i a b l e s   ( " p r o p e r t y "   t y p e )� ��� r  *6   c  */ o  *+�D�D 0 	timestamp   m  +.�C
�C 
nmbr n        ;  45 o  /4�B�B 0 
timestamps  �  r  7C	 c  7<

 o  78�A�A 0 latitude   m  8;�@
�@ 
nmbr	 n        ;  AB o  <A�?�? 0 	latitudes    r  DP c  DI o  DE�>�> 0 	longitude   m  EH�=
�= 
nmbr n        ;  NO o  IN�<�< 0 
longitudes   �; l QQ�:�9�8�:  �9  �8  �;  ��  ��  Z   end if blank line   [ � $   e n d   i f   b l a n k   l i n e��  �� 0 current_line  B m   7 8�7�7 C o   8 9�6�6 0 number_lines  ��  @  l \\�5�4�3�5  �4  �3    l \\�2�2   - ' Return the number of items in the list    � N   R e t u r n   t h e   n u m b e r   o f   i t e m s   i n   t h e   l i s t �1 L  \f   I \e�0!�/
�0 .corecnte****       ****! o  \a�.�. 0 
timestamps  �/  �1  � "#" l     �-�,�+�-  �,  �+  # $%$ l      �*&'�*  & � �
apple_read_file: Apple's code to read files
@param this_file: The file to read
@return file_text: The contents of the file as text
   ' �(( 
 a p p l e _ r e a d _ f i l e :   A p p l e ' s   c o d e   t o   r e a d   f i l e s 
 @ p a r a m   t h i s _ f i l e :   T h e   f i l e   t o   r e a d 
 @ r e t u r n   f i l e _ t e x t :   T h e   c o n t e n t s   o f   t h e   f i l e   a s   t e x t 
% )*) i   ( ++,+ I      �)-�(�) 0 apple_read_file  - .�'. o      �&�& 0 	this_file  �'  �(  , k     // 010 I    �%2�$
�% .rdwropenshor       file2 o     �#�# 0 	this_file  �$  1 343 r    565 l   7�"�!7 I   � 8�
�  .rdwrread****        ****8 o    �� 0 	this_file  �  �"  �!  6 o      �� 0 	file_text  4 9:9 I   �;�
� .rdwrclosnull���     ****; o    �� 0 	this_file  �  : <�< L    == o    �� 0 	file_text  �  * >?> l     ����  �  �  ? @A@ l      �BC�  B � �
date_to_timestamp: Convert a date to iPhone-style UNIX timestamp
@param this_date: AppleScript date object
@return timestamp: The date as a timestamp
   C �DD. 
 d a t e _ t o _ t i m e s t a m p :   C o n v e r t   a   d a t e   t o   i P h o n e - s t y l e   U N I X   t i m e s t a m p 
 @ p a r a m   t h i s _ d a t e :   A p p l e S c r i p t   d a t e   o b j e c t 
 @ r e t u r n   t i m e s t a m p :   T h e   d a t e   a s   a   t i m e s t a m p 
A EFE i   , /GHG I      �I�� 0 date_to_timestamp  I J�J o      �� 0 	this_date  �  �  H k     KK LML l     �NO�  N 7 1 iPhone dates start on 2 Jan 2001, not 1 Jan 1970   O �PP b   i P h o n e   d a t e s   s t a r t   o n   2   J a n   2 0 0 1 ,   n o t   1   J a n   1 9 7 0M QRQ r     STS m     UU �VV  2 / 1 / 2 0 0 1T o      �� 0 
unix_start  R WXW l   �YZ�  Y > 8 Subtract the dates to get the number of seconds between   Z �[[ p   S u b t r a c t   t h e   d a t e s   t o   g e t   t h e   n u m b e r   o f   s e c o n d s   b e t w e e nX \]\ r    ^_^ \    
`a` o    �� 0 	this_date  a l   	b��
b 4    	�	c
�	 
ldt c o    �� 0 
unix_start  �  �
  _ o      �� 0 	timestamp  ] ded l   ����  �  �  e f�f L    gg o    �� 0 	timestamp  �  F hih l     �� ���  �   ��  i jkj l      ��lm��  l � �
timestamp_to_date: Convert an iPhone-style UNIX timestamp to a date
@param timestamp: An iPhone-style timestamp
@return this_date: The timestamp as an AppleScript date
   m �nnR 
 t i m e s t a m p _ t o _ d a t e :   C o n v e r t   a n   i P h o n e - s t y l e   U N I X   t i m e s t a m p   t o   a   d a t e 
 @ p a r a m   t i m e s t a m p :   A n   i P h o n e - s t y l e   t i m e s t a m p 
 @ r e t u r n   t h i s _ d a t e :   T h e   t i m e s t a m p   a s   a n   A p p l e S c r i p t   d a t e 
k opo i   0 3qrq I      ��s���� 0 timestamp_to_date  s t��t o      ���� 0 	timestamp  ��  ��  r k     uu vwv l     ��xy��  x 7 1 iPhone dates start on 2 Jan 2001, not 1 Jan 1970   y �zz b   i P h o n e   d a t e s   s t a r t   o n   2   J a n   2 0 0 1 ,   n o t   1   J a n   1 9 7 0w {|{ r     }~} m      ���  2 / 1 / 2 0 0 1~ o      ���� 0 
unix_start  | ��� l   ������  � : 4 Add the number of seconds to get the resulting date   � ��� h   A d d   t h e   n u m b e r   o f   s e c o n d s   t o   g e t   t h e   r e s u l t i n g   d a t e� ��� r    ��� [    
��� l   ������ 4    ���
�� 
ldt � o    ���� 0 
unix_start  ��  ��  � o    	���� 0 	timestamp  � o      ���� 0 	this_date  � ��� l   ��������  ��  ��  � ��� l   ������  � - ' Return the date. I wish I had a date.    � ��� N   R e t u r n   t h e   d a t e .   I   w i s h   I   h a d   a   d a t e .  � ���� L    �� o    ���� 0 	this_date  ��  p ��� l     ��������  ��  ��  � ��� l      ������  � � �
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
start_date  ��  ��  � k     K�� ��� l     ��������  ��  ��  � ��� r     ��� J     ����  � o      ���� 0 these_photos  � ��� l   ��������  ��  ��  � ��� Z    $������� l   ������ =   ��� o    ���� 0 this_application  � m    �� ���  i P h o t o��  ��  � k     �� ��� l   ������  � 8 2 Now AppleScript's high-level API becomes useful.    � ��� d   N o w   A p p l e S c r i p t ' s   h i g h - l e v e l   A P I   b e c o m e s   u s e f u l .  � ���� O     ��� k    �� ��� l   ������  � 8 2 We only want to check photos since the data began   � ��� d   W e   o n l y   w a n t   t o   c h e c k   p h o t o s   s i n c e   t h e   d a t a   b e g a n� ��� r    ��� l   ������ 6   ��� 2    ��
�� 
ipmr� @    ��� 1    ��
�� 
idat� o    ���� 0 
start_date  ��  ��  � o      ���� 0 these_photos  � ��� l   ��������  ��  ��  � ��� l   ������  � 7 1 Uncomment this line to only search the selection   � ��� b   U n c o m m e n t   t h i s   l i n e   t o   o n l y   s e a r c h   t h e   s e l e c t i o n� ���� l   ������  � # set these_photos to selection   � ��� : s e t   t h e s e _ p h o t o s   t o   s e l e c t i o n��  � m    ���                                                                                  iPho  alis    X  Peter Burkimsher           ɾ��H+      
iPhoto.app                                                      {�ș��        ����  	                Applications    ɾ��      ș��          (Peter Burkimsher:Applications:iPhoto.app   
 i P h o t o . a p p  "  P e t e r   B u r k i m s h e r  Applications/iPhoto.app   / ��  ��  ��  ��  � ��� l  % %��������  ��  ��  � ��� Z   % H������� l  % (������ =  % (��� o   % &���� 0 this_application  � m   & '�� ���  A p e r t u r e��  ��  � O   + D��� k   / C�� ��� l  / /������  � # set these_photos to selection   � ��� : s e t   t h e s e _ p h o t o s   t o   s e l e c t i o n� ���� r   / C��� 6  / A��� n   / 5��� 2   3 5��
�� 
rkdp� 4  / 3���
�� 
rklb� m   1 2���� � @   6 @��� n   7 <��� 1   : <��
�� 
rkvl� 4   7 :���
�� 
rkex� m   8 9�� ���  I m a g e D a t e� o   = ?���� 0 
start_date  � o      ���� 0 these_photos  ��  � m   + ,���                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��  ��  ��  � � � l  I I��������  ��  ��    �� L   I K o   I J���� 0 these_photos  ��  �  l     ��������  ��  ��    l      ����  ��
binary_search: A binary search algorithm. Match a value by repeatedly splitting a sorted list. 
@params: this_value: The value to search for
	  	  start_index: The index to start searching at. 
	  	  end_index: The index to end searching at. 
		  search_list: A global variable to search. Saves memory in recursion. 
@return: this_difference: The difference between the found value and the search value.
		 this_index: The index of the found value. 
    �		� 
 b i n a r y _ s e a r c h :   A   b i n a r y   s e a r c h   a l g o r i t h m .   M a t c h   a   v a l u e   b y   r e p e a t e d l y   s p l i t t i n g   a   s o r t e d   l i s t .   
 @ p a r a m s :   t h i s _ v a l u e :   T h e   v a l u e   t o   s e a r c h   f o r 
 	     	     s t a r t _ i n d e x :   T h e   i n d e x   t o   s t a r t   s e a r c h i n g   a t .   
 	     	     e n d _ i n d e x :   T h e   i n d e x   t o   e n d   s e a r c h i n g   a t .   
 	 	     s e a r c h _ l i s t :   A   g l o b a l   v a r i a b l e   t o   s e a r c h .   S a v e s   m e m o r y   i n   r e c u r s i o n .   
 @ r e t u r n :   t h i s _ d i f f e r e n c e :   T h e   d i f f e r e n c e   b e t w e e n   t h e   f o u n d   v a l u e   a n d   t h e   s e a r c h   v a l u e . 
 	 	   t h i s _ i n d e x :   T h e   i n d e x   o f   t h e   f o u n d   v a l u e .   
 

 i   8 ; I      ������ 0 binary_search    o      ���� 0 
this_value    o      ���� 0 start_index   �� o      ���� 0 	end_index  ��  ��   k     �  l     ��������  ��  ��    l     ����   > 8 Split the list in half, taking the lower-middle index.     � p   S p l i t   t h e   l i s t   i n   h a l f ,   t a k i n g   t h e   l o w e r - m i d d l e   i n d e x .    r      c     	 !  l    "����" [     #$# o     ���� 0 start_index  $ l   %����% ^    &'& l   (����( \    )*) o    ���� 0 	end_index  * o    ���� 0 start_index  ��  ��  ' m    ���� ��  ��  ��  ��  ! m    ��
�� 
long o      ���� 0 middle_index   +,+ l   ��������  ��  ��  , -.- l   ��/0��  /   Find the middle value.    0 �11 0   F i n d   t h e   m i d d l e   v a l u e .  . 232 r    454 n    676 4    ��8
�� 
cobj8 o    ���� 0 middle_index  7 o    ���� 0 search_list  5 o      ���� 0 middle_value  3 9:9 l   ��������  ��  ��  : ;<; l   ��=>��  = 2 , If the value is found, return immediately.    > �?? X   I f   t h e   v a l u e   i s   f o u n d ,   r e t u r n   i m m e d i a t e l y .  < @A@ Z    *BC����B l   D����D =   EFE o    ���� 0 
this_value  F o    ���� 0 middle_value  ��  ��  C k    &GG HIH r     JKJ m    ����  K o      ���� 0 this_difference  I L��L L   ! &MM J   ! %NN OPO o   ! "���� 0 this_difference  P Q�Q o   " #�~�~ 0 middle_index  �  ��  ��  ��  A RSR l  + +�}�|�{�}  �|  �{  S TUT l  + +�zVW�z  V $  If there's only 2 items left    W �XX <   I f   t h e r e ' s   o n l y   2   i t e m s   l e f t  U YZY l  + r[\][ Z   + r^_�y�x^ l  + 0`�w�v` =  + 0aba l  + .c�u�tc \   + .ded o   + ,�s�s 0 	end_index  e o   , -�r�r 0 start_index  �u  �t  b m   . /�q�q �w  �v  _ k   3 nff ghg l  3 3�pij�p  i $  Find the start and end values   j �kk <   F i n d   t h e   s t a r t   a n d   e n d   v a l u e sh lml r   3 =non n   3 ;pqp 4   8 ;�or
�o 
cobjr o   9 :�n�n 0 	end_index  q o   3 8�m�m 0 search_list  o o      �l�l 0 	end_value  m sts r   > Huvu n   > Fwxw 4   C F�ky
�k 
cobjy o   D E�j�j 0 start_index  x o   > C�i�i 0 search_list  v o      �h�h 0 start_value  t z{z l  I I�g�f�e�g  �f  �e  { |}| l  I I�d~�d  ~ 8 2 Find the differences for the start and end values    ��� d   F i n d   t h e   d i f f e r e n c e s   f o r   t h e   s t a r t   a n d   e n d   v a l u e s} ��� r   I P��� c   I N��� l  I L��c�b� \   I L��� o   I J�a�a 0 
this_value  � o   J K�`�` 0 start_value  �c  �b  � m   L M�_
�_ 
nmbr� o      �^�^ 0 start_difference  � ��� r   Q X��� c   Q V��� l  Q T��]�\� \   Q T��� o   Q R�[�[ 0 	end_value  � o   R S�Z�Z 0 
this_value  �]  �\  � m   T U�Y
�Y 
nmbr� o      �X�X 0 end_difference  � ��� l  Y Y�W�V�U�W  �V  �U  � ��� l  Y Y�T���T  � C = Return the smaller difference, and its corresponding index.    � ��� z   R e t u r n   t h e   s m a l l e r   d i f f e r e n c e ,   a n d   i t s   c o r r e s p o n d i n g   i n d e x .  � ��� Z   Y l���S�� l  Y \��R�Q� B   Y \��� o   Y Z�P�P 0 start_difference  � o   Z [�O�O 0 end_difference  �R  �Q  � L   _ d�� J   _ c�� ��� o   _ `�N�N 0 start_difference  � ��M� o   ` a�L�L 0 start_index  �M  �S  � L   g l�� J   g k�� ��� o   g h�K�K 0 end_difference  � ��J� o   h i�I�I 0 	end_index  �J  � ��H� l  m m�G�F�E�G  �F  �E  �H  �y  �x  \ ' ! end if there's only 2 items left   ] ��� B   e n d   i f   t h e r e ' s   o n l y   2   i t e m s   l e f tZ ��� l  s s�D�C�B�D  �C  �B  � ��� l  s s�A���A  � k e Recurse with the first half of the list if it's before the middle value, second half if it's after.    � ��� �   R e c u r s e   w i t h   t h e   f i r s t   h a l f   o f   t h e   l i s t   i f   i t ' s   b e f o r e   t h e   m i d d l e   v a l u e ,   s e c o n d   h a l f   i f   i t ' s   a f t e r .  � ��� Z   s ����@�� l  s v��?�>� A   s v��� o   s t�=�= 0 
this_value  � o   t u�<�< 0 middle_value  �?  �>  � L   y ��� n  y ���� I   z ��;��:�; 0 binary_search  � ��� o   z {�9�9 0 
this_value  � ��� o   { |�8�8 0 start_index  � ��7� o   | }�6�6 0 middle_index  �7  �:  �  f   y z�@  � L   � ��� n  � ���� I   � ��5��4�5 0 binary_search  � ��� o   � ��3�3 0 
this_value  � ��� o   � ��2�2 0 middle_index  � ��1� o   � ��0�0 0 	end_index  �1  �4  �  f   � �� ��/� l  � ��.�-�,�.  �-  �,  �/   ��� l     �+�*�)�+  �*  �)  � ��� l     �(�'�&�(  �'  �&  � ��� l      �%���%  �
sequential_search: A sequential search algorithm. Match a value by counting through a list. 
@params: search_value: The value to search for
@return: this_difference: The difference between the found value and the search value.
		 this_index: The index of the found value. 
   � ���$ 
 s e q u e n t i a l _ s e a r c h :   A   s e q u e n t i a l   s e a r c h   a l g o r i t h m .   M a t c h   a   v a l u e   b y   c o u n t i n g   t h r o u g h   a   l i s t .   
 @ p a r a m s :   s e a r c h _ v a l u e :   T h e   v a l u e   t o   s e a r c h   f o r 
 @ r e t u r n :   t h i s _ d i f f e r e n c e :   T h e   d i f f e r e n c e   b e t w e e n   t h e   f o u n d   v a l u e   a n d   t h e   s e a r c h   v a l u e . 
 	 	   t h i s _ i n d e x :   T h e   i n d e x   o f   t h e   f o u n d   v a l u e .   
� ��$� i   < ?��� I      �#��"�# 0 sequential_search  � ��� o      �!�! 0 search_value  � �� � o      �� 0 valid_range  �   �"  � k     ��� ��� l     ����  �  �  � ��� r     ��� m     ��  � o      �� 0 previous_value  � ��� r    ��� m    ����� o      �� 0 previous_index  � ��� l   ����  �  �  � ��� r    ��� m    	����� o      �� 0 this_difference  � ��� r    ��� m    ����� o      �� 0 
this_index  � ��� l   ����  �  �  � ��� l   ����  �    Go through the whole list   � ��� 4   G o   t h r o u g h   t h e   w h o l e   l i s t� ��� Y    ���� �� k   " ~  r   " , n   " * 4   ' *�

�
 
cobj o   ( )�	�	 0 current_index   o   " '�� 0 search_list   o      �� 0 
this_value   	
	 l  - -����  �  �  
  l  - -��   / ) Compare previous and current differences    � R   C o m p a r e   p r e v i o u s   a n d   c u r r e n t   d i f f e r e n c e s  r   - 4 c   - 2 \   - 0 o   - .�� 0 search_value   o   . /�� 0 
this_value   m   0 1� 
�  
long o      ���� 0 current_difference    r   5 < c   5 : \   5 8 o   5 6���� 0 
this_value   o   6 7���� 0 previous_value   m   8 9��
�� 
long o      ���� 0 previous_difference    !  l  = =��������  ��  ��  ! "#" Z  = K$%����$ A   = @&'& o   = >���� 0 current_difference  ' m   > ?����  % r   C G()( d   C E** o   C D���� 0 current_difference  ) o      ���� 0 current_difference  ��  ��  # +,+ Z  L Z-.����- A   L O/0/ o   L M���� 0 previous_difference  0 m   M N����  . r   R V121 d   R T33 o   R S���� 0 previous_difference  2 o      ���� 0 previous_difference  ��  ��  , 454 l  [ [��������  ��  ��  5 676 l  [ [��89��  8 K E If the current difference is less than the previous, use the current   9 �:: �   I f   t h e   c u r r e n t   d i f f e r e n c e   i s   l e s s   t h a n   t h e   p r e v i o u s ,   u s e   t h e   c u r r e n t7 ;<; Z   [ r=>��?= l  [ ^@����@ A   [ ^ABA o   [ \���� 0 current_difference  B o   \ ]���� 0 previous_difference  ��  ��  > k   a hCC DED r   a dFGF o   a b���� 0 current_difference  G o      ���� 0 this_difference  E H��H r   e hIJI o   e f���� 0 current_index  J o      ���� 0 
this_index  ��  ��  ? k   k rKK LML r   k nNON o   k l���� 0 previous_difference  O o      ���� 0 this_difference  M P��P r   o rQRQ o   o p���� 0 previous_index  R o      ���� 0 
this_index  ��  < STS l  s s��������  ��  ��  T UVU l  s s��WX��  W / ) If we're within the range, exit the loop   X �YY R   I f   w e ' r e   w i t h i n   t h e   r a n g e ,   e x i t   t h e   l o o pV Z��Z Z   s ~[\����[ l  s v]����] A   s v^_^ o   s t���� 0 this_difference  _ o   t u���� 0 valid_range  ��  ��  \  S   y z��  ��  ��  � 0 current_index  � m    ����   I   ��`��
�� .corecnte****       ****` o    ���� 0 search_list  ��  �  � aba l  � ���������  ��  ��  b cdc l  � ���ef��  e 4 . Return the closest difference, and the offset   f �gg \   R e t u r n   t h e   c l o s e s t   d i f f e r e n c e ,   a n d   t h e   o f f s e td hih L   � �jj J   � �kk lml o   � ����� 0 this_difference  m n��n o   � ����� 0 
this_index  ��  i o��o l  � ���������  ��  ��  ��  �$       ��pqrstuvwxyz{|}~����  p ������������������������������������ 0 
timestamps  �� 0 	latitudes  �� 0 
longitudes  �� 0 search_list  �� 0 find_db_file  �� 0 	db_to_csv  �� 0 plist_to_csv  �� 0 replace_chars  �� 0 text_between  �� 0 read_csv  �� 0 apple_read_file  �� 0 date_to_timestamp  �� 0 timestamp_to_date  �� 0 
get_photos  �� 0 binary_search  �� 0 sequential_search  
�� .aevtoappnull  �   � ****q ������  ��  r ������  ��  s ������  ��  t ������  ��  u ��?���������� 0 find_db_file  �� ����� �  ������ 0 	home_path  �� 0 
table_name  ��  � �������������� 0 	home_path  �� 0 
table_name  �� 0 backup_folder  �� 0 backup_foldername  �� 0 db_file  �� 0 error_message  � Rhj������������������
�� .sysoexecTEXT���     TEXT
�� 
cwor�� 0 error_message  ��  
�� 
nmbr������ c��%E�O�%�%j �i/E�O��%E�O�E�Okn �%�%�%�%j E�W 
X 	 
�E�oO��-�,l �Y hO���/E�O��%�%E�O�v ������������� 0 	db_to_csv  �� ����� �  �������� 0 db_file  �� 0 
this_table  �� 0 destination_file  ��  � �������� 0 db_file  �� 0 
this_table  �� 0 destination_file  � ������
�� .sysoexecTEXT���     TEXT��  ��  ��  �%�%�%�%�%�%j W 	X  �w ��$���������� 0 plist_to_csv  �� ��� �  �~�}�~ 0 
plist_file  �} 0 destination_file  ��  � �|�{�| 0 
plist_file  �{ 0 destination_file  � :=�zRTVX�y�z 0 replace_chars  
�y .sysoexecTEXT���     TEXT�� )���m+ E�O�%�%�%�%�%j x �xd�w�v���u�x 0 replace_chars  �w �t��t �  �s�r�q�s 0 	this_text  �r 0 search_string  �q 0 replacement_string  �v  � �p�o�n�m�p 0 	this_text  �o 0 search_string  �n 0 replacement_string  �m 0 	item_list  � �l�k�j�i�
�l 
ascr
�k 
txdl
�j 
citm
�i 
TEXT�u !���,FO��-E�O���,FO��&E�O���,FO�y �h��g�f���e�h 0 text_between  �g �d��d �  �c�b�a�c 0 	this_text  �b 0 
start_text  �a 0 end_text  �f  � �`�_�^�]�` 0 	this_text  �_ 0 
start_text  �^ 0 end_text  �] 0 return_text  � ���\�[�Z�Y���X�W�
�\ 
ascr
�[ 
txdl
�Z 
citm
�Y 
TEXT�X  �W  �e Y�E�O D�� ���,FO�[�\[Zl\62�&E�Y �E�O�� ���,FO��k/�&E�O���,FY hW X  	hO���,FO�z �V �U�T���S�V 0 read_csv  �U �R��R �  �Q�Q 0 	this_file  �T  � �P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�P 0 	this_file  �O 0 consolidateddb  �N 0 number_lines  �M 0 current_line  �L 0 	this_line  �K 0 mcc  �J 0 mnc  �I 0 lac  �H 0 ci  �G 0 	timestamp  �F 0 latitude  �E 0 	longitude  �D 0 horizontalaccuracy  �C 0 altitude  �B 0 verticalaccuracy  �A 	0 speed  �@ 
0 course  �? 0 
confidence  �> 0 na  � �=�<�;�:t��9�8�7�6�5�4�3�2�1�0�/�.�-�,�����+���*�= 0 apple_read_file  
�< 
cpar
�; .corecnte****       ****
�: 
cwor
�9 
ascr
�8 
txdl
�7 
citm
�6 
cobj�5 �4 �3 �2 �1 �0 	�/ 
�. �- �, �+ 0 text_between  
�* 
nmbr�SgjvEc   OjvEc  OjvEc  O)�k+  E�O��-j E�O�kE�O&k�kh ��/E�O��-j k�� ~���,FO��-E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[��/E�Z[�a /E�Z[�a /E�Z[�a /E^ Z[�a /E^ ZOa ��,FY hO�a  M)�a a m+ E�Oa ��,FO��-E[�k/E�Z[�l/E�Z[�m/E�Z[��/E^ Z[��/E�ZOa ��,FY hO�a &b   6FO�a &b  6FO�a &b  6FOPY h[OY��Ob   j { �),�(�'���&�) 0 apple_read_file  �( �%��% �  �$�$ 0 	this_file  �'  � �#�"�# 0 	this_file  �" 0 	file_text  � �!� �
�! .rdwropenshor       file
�  .rdwrread****        ****
� .rdwrclosnull���     ****�& �j  O�j E�O�j O�| �H������ 0 date_to_timestamp  � ��� �  �� 0 	this_date  �  � ���� 0 	this_date  � 0 
unix_start  � 0 	timestamp  � U�
� 
ldt � �E�O�*�/E�O�} �r������ 0 timestamp_to_date  � ��� �  �� 0 	timestamp  �  � ���� 0 	timestamp  � 0 
unix_start  � 0 	this_date  � �
� 
ldt � �E�O*�/�E�O�~ �
��	�����
 0 
get_photos  �	 ��� �  ��� 0 this_application  � 0 
start_date  �  � ���� 0 this_application  � 0 
start_date  � 0 these_photos  � ��� ��������������
�  
ipmr�  
�� 
idat
�� 
rklb
�� 
rkdp
�� 
rkex
�� 
rkvl� LjvE�O��  � *�-�[�,\Z�;1E�OPUY hO��  � *�k/�-�[��/�,\Z�;1E�UY hO� ������������ 0 binary_search  �� ����� �  �������� 0 
this_value  �� 0 start_index  �� 0 	end_index  ��  � 
���������������������� 0 
this_value  �� 0 start_index  �� 0 	end_index  �� 0 middle_index  �� 0 middle_value  �� 0 this_difference  �� 0 	end_value  �� 0 start_value  �� 0 start_difference  �� 0 end_difference  � ��������
�� 
long
�� 
cobj
�� 
nmbr�� 0 binary_search  �� ����l!�&E�Ob  �/E�O��  jE�O��lvY hO��k  @b  �/E�Ob  �/E�O���&E�O���&E�O�� 
��lvY ��lvOPY hO�� )���m+ Y )���m+ OP� ������������� 0 sequential_search  �� ����� �  ������ 0 search_value  �� 0 valid_range  ��  � 
���������������������� 0 search_value  �� 0 valid_range  �� 0 previous_value  �� 0 previous_index  �� 0 this_difference  �� 0 
this_index  �� 0 current_index  �� 0 
this_value  �� 0 current_difference  �� 0 previous_difference  � ������
�� .corecnte****       ****
�� 
cobj
�� 
long�� �jE�OiE�OiE�OiE�O rkb  j  kh b  �/E�O���&E�O���&E�O�j 	�'E�Y hO�j 	�'E�Y hO�� �E�O�E�Y 	�E�O�E�O�� Y h[OY��O��lvOP� �����������
�� .aevtoappnull  �   � ****� k    ���  &��  4��  D��  V��  l��  y��  ���  ���  ���  ���  ���  ��� �� !�� �� �� 1����  ��  ��  � ���� 0 current_photo  � < +���������� M���� a c������ � �����������������������������������������������l����������������������%')��+��-���� 0 
table_name  
�� afdrcusr
�� .earsffdralis        afdr
�� 
psxp�� 0 	home_path  
�� .sysostdfalis    ��� null�� 0 db_file  �� 0 cell_location_file  �� 0 	db_to_csv  �� 0 
file_found  �� 0 read_csv  �� 0 number_timestamps  �� 0 photos_tagged  
�� 
cobj�� 0 start_timestamp  �� 0 timestamp_to_date  �� 0 
start_date  
�� .misccurdldt    ��� null�� 0 
last_alert  
�� 
selc�� 0 these_photos  
�� .corecnte****       ****�� 0 number_photos  �� 0 next_check_date  �� 0 
this_photo  
�� 
pnam�� 0 
photo_name  
�� 
ldt �� 0 
photo_date  �� 0 latitude  �� 0 photo_latitude  �� 0 date_to_timestamp  �� 0 photo_timestamp  �� <�� �� 0 valid_range  �� 0 sequential_search  �� 0 this_difference  �� 0 
this_index  �� 0 this_latitude  �� 0 this_longitude  
�� 
lati
�� 
lngt�� 0 number_tagged  �� 0 runtime  �� 0 this_application  �� 0 response_text  ����E�O�j �,E�O�j �,E�O��%�%�%E�O)���m+ E�O��  �j �,E�O)���m+ Y hO)�k+ E` OjvE` Ob   a k/E` O)_ k+ E` O*j E` Oa  *a ,E` O_ j E` OPUO_ E` Ok_ kh  _ a �/E` O_ a  ,E` !O_ a ",E` #O_ a $,E` %O)_ #k+ &E` 'O_ %a (  �b   Ec  Oa )a ) a * E` +O)_ '_ +l+ ,E[a k/E` -Z[a l/E` .ZOb  a _ ./E` /Ob  a _ ./E` 0O_ -_ + 4a  _ /_ a 1,FO_ 0_ a 2,FUO_ !_ 6FO_ E` Y _ E` OPOPY hOP[OY�O_ j E` 3Oa 4_ 3%a 5%_ %a 6%_ 7%a 8%_ 9%a :%E` ;O_ ; ascr  ��ޭ