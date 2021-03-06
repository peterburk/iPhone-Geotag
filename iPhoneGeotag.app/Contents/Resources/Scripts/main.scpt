FasdUAS 1.101.10   ��   ��    k             l      ��  ��   '!
iPhone Geotag
Peter Burkimsher
22/04/2011-2/05/2011
http://peterburk.appspot.com

Reads the iPhone location history from consolidated.db, and uses it to geotag iPhoto pictures. To include hidden photos, make sure they're visible through View > Hidden Photos first. 

Glory to God for giving us this world to explore!

Icon based on Glowbe and iPhoto replacement, http://jonasraskdesign.com. 

This code may be reused according to the Apache License 2.0. That means you can reuse this without attribution, although I'd obviously appreciate it. 
     � 	 	B 
 i P h o n e   G e o t a g 
 P e t e r   B u r k i m s h e r 
 2 2 / 0 4 / 2 0 1 1 - 2 / 0 5 / 2 0 1 1 
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
����        j    �� �� 0 search_list    J    ����        l     ��������  ��  ��        l     ��  ��      Start the timer     �       S t a r t   t h e   t i m e r       l     !���� ! r      " # " I    ������
�� .misccurdldt    ��� null��  ��   # o      ���� 0 
start_time  ��  ��      $ % $ l     ��������  ��  ��   %  & ' & l      �� ( )��   ( 0 * Find which applications to apply data to     ) � * * T   F i n d   w h i c h   a p p l i c a t i o n s   t o   a p p l y   d a t a   t o   '  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   /    Find running applications    0 � 1 1 4   F i n d   r u n n i n g   a p p l i c a t i o n s .  2 3 2 l    4���� 4 O     5 6 5 r     7 8 7 n     9 : 9 1    ��
�� 
pnam : 2    ��
�� 
prcs 8 o      ���� 0 open_applications   6 m    	 ; ;�                                                                                  sevs  alis    �  Peter Burkimsher           ɾ��H+   ͯSystem Events.app                                               �ǚR�        ����  	                CoreServices    ɾ��      ǚR�     ͯ �� ��  >Peter Burkimsher:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p  "  P e t e r   B u r k i m s h e r  -System/Library/CoreServices/System Events.app   / ��  ��  ��   3  < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @   Compatible applications    A � B B 0   C o m p a t i b l e   a p p l i c a t i o n s ?  C D C l    E���� E r     F G F J     H H  I J I m     K K � L L  i P h o t o J  M�� M m     N N � O O  A p e r t u r e��   G o      ���� 0 compatible_apps  ��  ��   D  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T %  Find which apps to process for    U � V V >   F i n d   w h i c h   a p p s   t o   p r o c e s s   f o r S  W X W l     Y���� Y r      Z [ Z J    ����   [ o      ���� 0 these_applications  ��  ��   X  \ ] \ l  ! P ^���� ^ X   ! P _�� ` _ Z   1 K a b���� a l  1 4 c���� c E   1 4 d e d o   1 2���� 0 open_applications   e o   2 3���� 0 this_application  ��  ��   b Z   7 G f g���� f l  7 : h���� h E   7 : i j i o   7 8���� 0 compatible_apps   j o   8 9���� 0 this_application  ��  ��   g r   = C k l k c   = @ m n m o   = >���� 0 this_application   n m   > ?��
�� 
TEXT l n       o p o  ;   A B p o   @ A���� 0 these_applications  ��  ��  ��  ��  �� 0 this_application   ` o   $ %���� 0 compatible_apps  ��  ��   ]  q r q l     ��������  ��  ��   r  s t s l     �� u v��   u %  If neither application is open    v � w w >   I f   n e i t h e r   a p p l i c a t i o n   i s   o p e n t  x y x l  Q � z { | z Z   Q � } ~���� } l  Q X ����  =  Q X � � � l  Q V ����� � I  Q V�� ���
�� .corecnte****       **** � o   Q R���� 0 these_applications  ��  ��  ��   � m   V W����  ��  ��   ~ k   [ � � �  � � � r   [ z � � � n   [ v � � � 1   r v��
�� 
bhit � l  [ r ����� � I  [ r�� � �
�� .sysodlogaskr        TEXT � m   [ \ � � � � � B T a g   p h o t o s   i n   i P h o t o   o r   A p e r t u r e ? � �� � �
�� 
btns � J   ] h � �  � � � m   ] ` � � � � �  B o t h �  � � � m   ` c � � � � �  A p e r t u r e �  ��� � m   c f � � � � �  i P h o t o��   � �� ���
�� 
dflt � m   k l���� ��  ��  ��   � o      ���� 0 ask_applications   �  ��� � Z   { � � ��� � � l  { � ����� � =  { � � � � o   { ~���� 0 ask_applications   � m   ~ � � � � � �  B o t h��  ��   � k   � � � �  � � � l  � ��� � ���   �   Open both applications    � � � � .   O p e n   b o t h   a p p l i c a t i o n s �  � � � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   � � � ��                                                                                  iPho  alis    X  Peter Burkimsher           ɾ��H+      
iPhoto.app                                                      {�ș��        ����  	                Applications    ɾ��      ș��          (Peter Burkimsher:Applications:iPhoto.app   
 i P h o t o . a p p  "  P e t e r   B u r k i m s h e r  Applications/iPhoto.app   / ��   �  � � � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   � � � ��                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��   �  ��� � r   � � � � � J   � � � �  � � � m   � � � � � � �  A p e r t u r e �  ��� � m   � � � � � � �  i P h o t o��   � o      ���� 0 these_applications  ��  ��   � k   � � � �  � � � l  � ��� � ���   �   Open the one application    � � � � 2   O p e n   t h e   o n e   a p p l i c a t i o n �  � � � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � 4   � ��� �
�� 
capp � o   � ����� 0 ask_applications   �  � � � l  � ��� � ���   �   Only one application.     � � � � .   O n l y   o n e   a p p l i c a t i o n .   �  ��� � X   � � ��� � � k   � � � �  � � � r   � � � � � c   � � � � � o   � ����� 0 this_application   � m   � ���
�� 
TEXT � o      ���� 0 this_application   �  ��� � Z   � � � ����� � l  � � ����� � E   � � � � � o   � ����� 0 compatible_apps   � o   � ��� 0 this_application  ��  ��   � r   � � � � � c   � � � � � o   � ��~�~ 0 this_application   � m   � ��}
�} 
TEXT � n       � � �  ;   � � � o   � ��|�| 0 these_applications  ��  ��  ��  �� 0 this_application   � o   � ��{�{ 0 ask_applications  ��  ��  ��  ��   { ) # end if neither application is open    | � � � F   e n d   i f   n e i t h e r   a p p l i c a t i o n   i s   o p e n y  � � � l     �z�y�x�z  �y  �x   �  � � � l     �w � ��w   � / ) Format the applications list with commas    � � � � R   F o r m a t   t h e   a p p l i c a t i o n s   l i s t   w i t h   c o m m a s �  � � � l  � � ��v�u � r   � � � � � m   � � � � � � �  ,   � n      � � � 1   � ��t
�t 
txdl � 1   � ��s
�s 
ascr�v  �u   �  � � � l  � ��r�q � r   � � � � c   � � �  � o   � ��p�p 0 these_applications    m   � ��o
�o 
TEXT � o      �n�n 0 applications_alert  �r  �q   �  l �m�l r   m   �   n     	 1  
�k
�k 
txdl	 1  
�j
�j 
ascr�m  �l   

 l     �i�h�g�i  �h  �g    l     �f�f   E ? Tell the user which applications will have their photos tagged    � ~   T e l l   t h e   u s e r   w h i c h   a p p l i c a t i o n s   w i l l   h a v e   t h e i r   p h o t o s   t a g g e d  l !�e�d I !�c
�c .sysodlogaskr        TEXT b   m   � & T a g g i n g   p h o t o s   i n :   o  �b�b 0 applications_alert   �a�`
�a 
givu m  �_�_ �`  �e  �d    l     �^�]�\�^  �]  �\    l      �[ �[     Read the database      �!! &   R e a d   t h e   d a t a b a s e   "#" l     �Z�Y�X�Z  �Y  �X  # $%$ l     �W&'�W  & , & Find a particular database table name   ' �(( L   F i n d   a   p a r t i c u l a r   d a t a b a s e   t a b l e   n a m e% )*) l ")+�V�U+ r  "),-, m  "%.. �//  C e l l L o c a t i o n- o      �T�T 0 
table_name  �V  �U  * 010 l     �S�R�Q�S  �R  �Q  1 232 l     �P45�P  4 "  Find the most recent backup   5 �66 8   F i n d   t h e   m o s t   r e c e n t   b a c k u p3 787 l *99�O�N9 r  *9:;: n  *5<=< 1  15�M
�M 
psxp= l *1>�L�K> I *1�J?�I
�J .earsffdralis        afdr? m  *-�H
�H afdrcusr�I  �L  �K  ; o      �G�G 0 	home_path  �O  �N  8 @A@ l :IB�F�EB r  :ICDC n :EEFE I  ;E�DG�C�D 0 find_db_file  G HIH o  ;>�B�B 0 	home_path  I J�AJ o  >A�@�@ 0 
table_name  �A  �C  F  f  :;D o      �?�? 0 db_file  �F  �E  A KLK l     �>�=�<�>  �=  �<  L MNM l     �;OP�;  O = 7 Use a custom consolidated.db by uncommenting this line   P �QQ n   U s e   a   c u s t o m   c o n s o l i d a t e d . d b   b y   u n c o m m e n t i n g   t h i s   l i n eN RSR l     �:TU�:  T z tset db_file to "/Applications/iPhone Apps/Mac Apps/iPhoneTracker/iOS Files/Library/Caches/locationd/consolidated.db"   U �VV � s e t   d b _ f i l e   t o   " / A p p l i c a t i o n s / i P h o n e   A p p s / M a c   A p p s / i P h o n e T r a c k e r / i O S   F i l e s / L i b r a r y / C a c h e s / l o c a t i o n d / c o n s o l i d a t e d . d b "S WXW l     �9�8�7�9  �8  �7  X YZY l Jg[�6�5[ Z  Jg\]�4�3\ l JQ^�2�1^ = JQ_`_ o  JM�0�0 0 db_file  ` m  MPaa �bb 
 E r r o r�2  �1  ] k  Tccc ded l TT�/fg�/  f $  Ask the user to select a file   g �hh <   A s k   t h e   u s e r   t o   s e l e c t   a   f i l ee i�.i r  Tcjkj n  T_lml 1  [_�-
�- 
psxpm l T[n�,�+n I T[�*o�)
�* .sysostdfalis    ��� nullo m  TWpp �qq 2 S e l e c t   y o u r   l o c a t i o n   f i l e�)  �,  �+  k o      �(�( 0 db_file  �.  �4  �3  �6  �5  Z rsr l     �'�&�%�'  �&  �%  s tut l     �$vw�$  v 9 3 If the file's not found, display an error and exit   w �xx f   I f   t h e   f i l e ' s   n o t   f o u n d ,   d i s p l a y   a n   e r r o r   a n d   e x i tu yzy l h�{�#�"{ Z  h�|}�!� | l ho~��~ = ho� o  hk�� 0 db_file  � m  kn�� ��� 
 E r r o r�  �  } I r����
� .sysodlogaskr        TEXT� m  ru�� ��� R E r r o r :   l o c a t i o n   f i l e   n o t   f o u n d   i n   b a c k u p !� ���
� 
btns� J  v{�� ��� m  vy�� ���  C a n c e l�  � ���
� 
dflt� m  ~�� �  �!  �   �#  �"  z ��� l     ����  �  �  � ��� l     ����  � ` Z Extract the CellLocation database to a CSV file in a working directory. Trash should do.    � ��� �   E x t r a c t   t h e   C e l l L o c a t i o n   d a t a b a s e   t o   a   C S V   f i l e   i n   a   w o r k i n g   d i r e c t o r y .   T r a s h   s h o u l d   d o .  � ��� l ������ r  ����� b  ����� b  ����� b  ����� o  ���� 0 	home_path  � m  ���� ���  . T r a s h /� o  ���� 0 
table_name  � m  ���� ���  . c s v� o      �� 0 cell_location_file  �  �  � ��� l     ����  �  �  � ��� l     �
���
  � . ( If it's a plist file, read a from iOS 3   � ��� P   I f   i t ' s   a   p l i s t   f i l e ,   r e a d   a   f r o m   i O S   3� ��� l ���	�� Z  ������ l ������ D  ����� o  ���� 0 db_file  � m  ���� ���  . p l i s t�  �  � k  ���� ��� r  ����� b  ����� o  ���� 0 	home_path  � m  ���� ���   . T r a s h / c e l l s . c s v� o      �� 0 cell_location_file  � ��� n ����� I  ��� ����  0 plist_to_csv  � ��� o  ������ 0 db_file  � ���� o  ������ 0 cell_location_file  ��  ��  �  f  ���  �  � k  ��� ��� l ��������  � . ( If it's consolidated.db, read a db file   � ��� P   I f   i t ' s   c o n s o l i d a t e d . d b ,   r e a d   a   d b   f i l e� ��� r  ����� n ����� I  ��������� 0 	db_to_csv  � ��� o  ������ 0 db_file  � ��� o  ������ 0 
table_name  � ���� o  ������ 0 cell_location_file  ��  ��  �  f  ��� o      ���� 0 
file_found  � ���� Z  �������� = ����� o  ������ 0 
file_found  � m  ���� ��� 
 E r r o r� k  ���� ��� r  ����� n  ����� 1  ����
�� 
psxp� l �������� I �������
�� .sysostdfalis    ��� null� m  ���� ��� 2 S e l e c t   y o u r   l o c a t i o n   f i l e��  ��  ��  � o      ���� 0 db_file  � ���� n ����� I  ��������� 0 	db_to_csv  � ��� o  ������ 0 db_file  � ��� o  ������ 0 
table_name  � ���� o  ������ 0 cell_location_file  ��  ��  �  f  ����  ��  ��  ��  �	  �  � ��� l     ��������  ��  ��  � ��� l     ������  � U O Read the CSV file. Easier to script than the original SQL for a no0b like me.    � ��� �   R e a d   t h e   C S V   f i l e .   E a s i e r   t o   s c r i p t   t h a n   t h e   o r i g i n a l   S Q L   f o r   a   n o 0 b   l i k e   m e .  � ��� l ������ r  ��� n 
� � I  
������ 0 read_csv   �� o  ���� 0 cell_location_file  ��  ��     f  � o      ���� 0 number_timestamps  ��  ��  �  l     ��������  ��  ��    l     ����   ( " Clean up after the table's read.     �		 D   C l e a n   u p   a f t e r   t h e   t a b l e ' s   r e a d .   

 l ���� I ����
�� .sysoexecTEXT���     TEXT b   b   m   �  r m   " o  ���� 0 cell_location_file   m   �  "��  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��    l      ����     Tag the photos     �     T a g   t h e   p h o t o s     l     ��������  ��  ��    !"! l     ��#$��  # 5 / Keep track of all the names of photos tagged.    $ �%% ^   K e e p   t r a c k   o f   a l l   t h e   n a m e s   o f   p h o t o s   t a g g e d .  " &'& l %(����( r  %)*) J  !����  * o      ���� 0 photos_tagged  ��  ��  ' +,+ l     ��������  ��  ��  , -.- l     ��/0��  / - ' Find the start date of the iPhone data   0 �11 N   F i n d   t h e   s t a r t   d a t e   o f   t h e   i P h o n e   d a t a. 232 l &24����4 r  &2565 n  &.787 4  +.��9
�� 
cobj9 m  ,-���� 8 o  &+���� 0 
timestamps  6 o      ���� 0 start_timestamp  ��  ��  3 :;: l 3?<����< r  3?=>= n 3;?@? I  4;��A���� 0 timestamp_to_date  A B��B o  47���� 0 start_timestamp  ��  ��  @  f  34> o      ���� 0 
start_date  ��  ��  ; CDC l     ��������  ��  ��  D EFE l     ��GH��  G L F If the date is out of bounds, use all photos since iOS 3 was released   H �II �   I f   t h e   d a t e   i s   o u t   o f   b o u n d s ,   u s e   a l l   p h o t o s   s i n c e   i O S   3   w a s   r e l e a s e dF JKJ l @WL����L Z  @WMN����M l @IO����O ?  @IPQP o  @C���� 0 
start_date  Q l CHR����R I CH������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  N r  LSSTS m  LOUU ldt     �]�T o      ���� 0 
start_date  ��  ��  ��  ��  K VWV l     ��������  ��  ��  W XYX l     ��Z[��  Z > 8 Tell the user what the start date of the iPhone data is   [ �\\ p   T e l l   t h e   u s e r   w h a t   t h e   s t a r t   d a t e   o f   t h e   i P h o n e   d a t a   i sY ]^] l Xt_����_ I Xt��`a
�� .sysodlogaskr        TEXT` b  Xabcb m  X[dd �ee * F i n d i n g   p h o t o s   a f t e r  c l [`f����f c  [`ghg o  [^���� 0 
start_date  h m  ^_��
�� 
TEXT��  ��  a ��ij
�� 
btnsi J  bjkk lml m  benn �oo  C a n c e lm p��p m  ehqq �rr  O K��  j ��s��
�� 
dflts m  mn���� ��  ��  ��  ^ tut l     ��������  ��  ��  u vwv l     ��xy��  x . ( Process for all compatible applications   y �zz P   P r o c e s s   f o r   a l l   c o m p a t i b l e   a p p l i c a t i o n sw {|{ l u�}~} X  u������ k  ���� ��� r  ����� c  ����� o  ������ 0 this_application  � m  ����
�� 
TEXT� o      ���� 0 this_application  � ��� l ����������  ��  ��  � ��� l ��������  � B < Get all the photos since the start date for the application   � ��� x   G e t   a l l   t h e   p h o t o s   s i n c e   t h e   s t a r t   d a t e   f o r   t h e   a p p l i c a t i o n� ��� r  ����� n ����� I  ��������� 0 
get_photos  � ��� o  ���� 0 this_application  � ��~� o  ���}�} 0 
start_date  �~  ��  �  f  ��� o      �|�| 0 these_photos  � ��� l ���{�z�y�{  �z  �y  � ��� l ���x���x  � !  Count the number of photos   � ��� 6   C o u n t   t h e   n u m b e r   o f   p h o t o s� ��� r  ����� I ���w��v
�w .corecnte****       ****� o  ���u�u 0 these_photos  �v  � o      �t�t 0 number_photos  � ��� l ���s�r�q�s  �r  �q  � ��� l ���p���p  � X R Estimate runtime based on number of photos. Runtime for 430/2264 photos: 9 mins.    � ��� �   E s t i m a t e   r u n t i m e   b a s e d   o n   n u m b e r   o f   p h o t o s .   R u n t i m e   f o r   4 3 0 / 2 2 6 4   p h o t o s :   9   m i n s .  � ��� r  ����� c  ����� ]  ����� ^  ����� o  ���o�o 0 number_photos  � m  ���n�n�� m  ���m�m 	� m  ���l
�l 
long� o      �k�k 0 estimated_runtime  � ��� l ���j�i�h�j  �i  �h  � ��� l ���g���g  �   Warn the user   � ���    W a r n   t h e   u s e r� ��� I ���f�e�d
�f .miscactvnull��� ��� null�e  �d  � ��� I ���c��
�c .sysodlogaskr        TEXT� b  ����� b  ����� m  ���� ��� & E s t i m a t e d   r u n t i m e :  � o  ���b�b 0 estimated_runtime  � m  ���� ���    m i n u t e s .� �a��`
�a 
givu� m  ���_�_ �`  � ��� r  ����� I ���^�]�\
�^ .misccurdldt    ��� null�]  �\  � o      �[�[ 0 
last_alert  � ��� l ���Z�Y�X�Z  �Y  �X  � ��� l ���W���W  �   Get photo properties   � ��� *   G e t   p h o t o   p r o p e r t i e s� ��� r  ���� n ����� I  ���V��U�V 0 get_photo_properties  � ��� o  ���T�T 0 this_application  � ��� o  ���S�S 0 
start_date  � ��R� o  ���Q�Q 0 these_photos  �R  �U  �  f  ��� J      �� ��� o      �P�P 0 photo_names  � ��� o      �O�O 0 photo_dates  � ��N� o      �M�M 0 photo_latitudes  �N  � ��� l �L�K�J�L  �K  �J  � ��� l �I���I  � A ; Use the time difference to only check as much as necessary   � ��� v   U s e   t h e   t i m e   d i f f e r e n c e   t o   o n l y   c h e c k   a s   m u c h   a s   n e c e s s a r y� ��� r  ��� o  �H�H 0 
start_date  � o      �G�G 0 next_check_date  � ��� l �F�E�D�F  �E  �D  � ��� l �C���C  � "  For every photo in the list   � ��� 8   F o r   e v e r y   p h o t o   i n   t h e   l i s t� ��� l ��� � Y  ��B�A k  �  l �@�?�>�@  �?  �>    l �=	
�=  	 ( " Alert about progress every 5 mins   
 � D   A l e r t   a b o u t   p r o g r e s s   e v e r y   5   m i n s  r  1 c  - l )�<�; ^  ) l %�:�9 \  % l !�8�7 I !�6�5�4
�6 .misccurdldt    ��� null�5  �4  �8  �7   o  !$�3�3 0 
last_alert  �:  �9   1  %(�2
�2 
min �<  �;   m  ),�1
�1 
long o      �0�0 0 
alert_mins    l 22�/�.�-�/  �.  �-    Z  2��,�+ l 29�*�) = 29 !  o  25�(�( 0 
alert_mins  ! m  58�'�' �*  �)   k  <�"" #$# l <<�&%&�&  % %  Find the current total runtime   & �'' >   F i n d   t h e   c u r r e n t   t o t a l   r u n t i m e$ ()( r  <O*+* c  <K,-, l <G.�%�$. ^  <G/0/ l <C1�#�"1 \  <C232 l <A4�!� 4 I <A���
� .misccurdldt    ��� null�  �  �!  �   3 o  AB�� 0 
start_time  �#  �"  0 1  CF�
� 
min �%  �$  - m  GJ�
� 
long+ o      �� 0 current_runtime  ) 565 l PP����  �  �  6 787 l PP�9:�  9 #  Display an alert to the user   : �;; :   D i s p l a y   a n   a l e r t   t o   t h e   u s e r8 <=< r  Pm>?> b  Pi@A@ b  PeBCB b  PaDED b  P]FGF b  P[HIH b  PWJKJ m  PSLL �MM " C u r r e n t   r u n t i m e :  K o  SV�� 0 current_runtime  I m  WZNN �OO $   m i n u t e s ,   c h e c k e d  G o  [\�� 0 current_photo  E m  ]`PP �QQ    o f  C o  ad�� 0 number_photos  A m  ehRR �SS    t o t a l   p h o t o s .? o      �� 0 progress_text  = TUT I ns���
� .miscactvnull��� ��� null�  �  U VWV I t��XY
� .sysodlogaskr        TEXTX o  tw�� 0 progress_text  Y �Z�

� 
givuZ m  z}�	�	 �
  W [�[ r  ��\]\ I �����
� .misccurdldt    ��� null�  �  ] o      �� 0 
last_alert  �  �,  �+   ^_^ l ������  �  �  _ `a` l ��� bc�   b   Get the photo   c �dd    G e t   t h e   p h o t oa efe r  ��ghg n  ��iji 4  ����k
�� 
cobjk o  ������ 0 current_photo  j o  ������ 0 these_photos  h o      ���� 0 
this_photo  f lml l ����������  ��  ��  m non l ����pq��  p   Get photo properties   q �rr *   G e t   p h o t o   p r o p e r t i e so sts r  ��uvu c  ��wxw n  ��yzy 4  ����{
�� 
cobj{ o  ������ 0 current_photo  z o  ������ 0 photo_names  x m  ����
�� 
TEXTv o      ���� 0 
photo_name  t |}| r  ��~~ c  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 current_photo  � o  ������ 0 photo_dates  � m  ����
�� 
ldt  o      ���� 0 
photo_date  } ��� r  ����� c  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 current_photo  � o  ������ 0 photo_latitudes  � m  ����
�� 
TEXT� o      ���� 0 photo_latitude  � ��� l ����������  ��  ��  � ��� l ��������  � ? 9 Convert the photo date to an iPhone-style UNIX timestamp   � ��� r   C o n v e r t   t h e   p h o t o   d a t e   t o   a n   i P h o n e - s t y l e   U N I X   t i m e s t a m p� ��� r  ����� n ����� I  ��������� 0 date_to_timestamp  � ���� o  ������ 0 
photo_date  ��  ��  �  f  ��� o      ���� 0 photo_timestamp  � ��� l ����������  ��  ��  � ��� l ��������  � 1 + If the date is after the next one to check   � ��� V   I f   t h e   d a t e   i s   a f t e r   t h e   n e x t   o n e   t o   c h e c k� ��� l ������ Z  ��������� l �������� B  ����� o  ������ 0 next_check_date  � o  ������ 0 
photo_date  ��  ��  � k  ���� ��� l ����������  ��  ��  � ��� l ��������  � ) # If the location is not set already   � ��� F   I f   t h e   l o c a t i o n   i s   n o t   s e t   a l r e a d y� ��� l �~���� Z  �~������� l �������� = ����� o  ������ 0 photo_latitude  � m  ���� ���  m i s s i n g   v a l u e��  ��  � k  �z�� ��� l ����������  ��  ��  � ��� l ��������  � + % If the photo's taken within 24 hours   � ��� J   I f   t h e   p h o t o ' s   t a k e n   w i t h i n   2 4   h o u r s� ��� r  ����� l �������� ]  ����� ]  ����� m  ������ <� m  ������ <� m  ������ ��  ��  � o      ���� 0 valid_range  � ��� l ����������  ��  ��  � ��� l ��������  � 9 3 Search the database for the nearest known location   � ��� f   S e a r c h   t h e   d a t a b a s e   f o r   t h e   n e a r e s t   k n o w n   l o c a t i o n� ��� r  � ��� o  ������ 0 
timestamps  � o      ���� 0 search_list  � ��� l ������  � b \set {this_difference, this_index} to my binary_search(photo_timestamp, 1, number_timestamps)   � ��� � s e t   { t h i s _ d i f f e r e n c e ,   t h i s _ i n d e x }   t o   m y   b i n a r y _ s e a r c h ( p h o t o _ t i m e s t a m p ,   1 ,   n u m b e r _ t i m e s t a m p s )� ��� r  ��� n ��� I  ������� 0 sequential_search  � ��� o  ���� 0 photo_timestamp  � ���� o  ���� 0 valid_range  ��  ��  �  f  � J      �� ��� o      ���� 0 this_difference  � ���� o      ���� 0 
this_index  ��  � ��� l   ��������  ��  ��  � ��� l   ������  �   Read the database   � ��� $   R e a d   t h e   d a t a b a s e� ��� r   .��� n   *��� 4  %*���
�� 
cobj� o  &)���� 0 
this_index  � o   %���� 0 	latitudes  � o      ���� 0 this_latitude  � � � r  /= n  /9 4  49��
�� 
cobj o  58���� 0 
this_index   o  /4���� 0 
longitudes   o      ���� 0 this_longitude     l >>��������  ��  ��   	 l >>��
��  
 / ) If the photo is within the 24 hour range    � R   I f   t h e   p h o t o   i s   w i t h i n   t h e   2 4   h o u r   r a n g e	  l >x Z  >x�� A  >E o  >A���� 0 this_difference   o  AD���� 0 valid_range   k  Hl  l HH��������  ��  ��    l HH����   $  Write the photo location tags    � <   W r i t e   t h e   p h o t o   l o c a t i o n   t a g s   n HY!"! I  IY��#���� 0 set_location  # $%$ o  IJ���� 0 this_application  % &'& o  JM���� 0 
this_photo  ' ()( o  MP���� 0 this_latitude  ) *��* o  PS���� 0 this_longitude  ��  ��  "  f  HI  +,+ l ZZ��������  ��  ��  , -.- l ZZ��/0��  / * $ Record the name of the photo tagged   0 �11 H   R e c o r d   t h e   n a m e   o f   t h e   p h o t o   t a g g e d. 232 r  Zb454 o  Z]���� 0 
photo_name  5 n      676  ;  `a7 o  ]`���� 0 photos_tagged  3 898 l cc��������  ��  ��  9 :;: r  cj<=< o  cf���� 0 
start_date  = o      ���� 0 next_check_date  ; >��> l kk��������  ��  ��  ��  ��   k  ox?? @A@ l oo��������  ��  ��  A BCB r  ovDED o  or���� 0 
start_date  E o      ���� 0 next_check_date  C F��F l ww����~��  �  �~  ��   $  end if the location is recent    �GG <   e n d   i f   t h e   l o c a t i o n   i s   r e c e n t H�}H l yy�|�{�z�|  �{  �z  �}  ��  ��  �   end if location is set   � �II .   e n d   i f   l o c a t i o n   i s   s e t� J�yJ l �x�w�v�x  �w  �v  �y  ��  ��  � ( " end if the date should be checked   � �KK D   e n d   i f   t h e   d a t e   s h o u l d   b e   c h e c k e d� L�uL l ���t�s�r�t  �s  �r  �u  �B 0 current_photo   m  �q�q  o  �p�p 0 number_photos  �A  � , & end repeat this_photo in these_photos     �MM L   e n d   r e p e a t   t h i s _ p h o t o   i n   t h e s e _ p h o t o s� NON l ���o�n�m�o  �n  �m  O PQP l ���l�k�j�l  �k  �j  Q RSR l  ���iTU�i  T   Return statistics    U �VV &   R e t u r n   s t a t i s t i c s  S WXW r  ��YZY I ���h�g�f
�h .misccurdldt    ��� null�g  �f  Z o      �e�e 0 end_time  X [\[ r  ��]^] c  ��_`_ l ��a�d�ca ^  ��bcb l ��d�b�ad \  ��efe o  ���`�` 0 end_time  f o  ���_�_ 0 
start_time  �b  �a  c 1  ���^
�^ 
min �d  �c  ` m  ���]
�] 
long^ o      �\�\ 0 runtime  \ ghg l ���[�Z�Y�[  �Z  �Y  h iji l ���Xkl�X  k ; 5 Count the number of photos whose locatoins are found   l �mm j   C o u n t   t h e   n u m b e r   o f   p h o t o s   w h o s e   l o c a t o i n s   a r e   f o u n dj non r  ��pqp I ���Wr�V
�W .corecnte****       ****r o  ���U�U 0 photos_tagged  �V  q o      �T�T 0 number_tagged  o sts l ���S�R�Q�S  �R  �Q  t uvu l ���Pwx�P  w   Return a response   x �yy $   R e t u r n   a   r e s p o n s ev z{z r  ��|}| b  ��~~ b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  T a g g e d  � o  ���O�O 0 number_tagged  � m  ���� ���    o f  � o  ���N�N 0 number_photos  � m  ���� ���    p h o t o s   i n  � o  ���M�M 0 runtime  � m  ���� ���    m i n u t e s   i n  � o  ���L�L 0 this_application   m  ���� ���  !} o      �K�K 0 response_text  { ��� l ���J�I�H�J  �I  �H  � ��� I ���G�F�E
�G .miscactvnull��� ��� null�F  �E  � ��� I ���D��
�D .sysodlogaskr        TEXT� o  ���C�C 0 response_text  � �B��A
�B 
givu� m  ���@�@ �A  � ��?� l ���>�=�<�>  �=  �<  �?  �� 0 this_application  � o  xy�;�; 0 these_applications  ~ !  end repeat for application    ��� 6   e n d   r e p e a t   f o r   a p p l i c a t i o n| ��� l     �:�9�8�:  �9  �8  � ��� l ����7�6� L  ���� o  ���5�5 0 response_text  �7  �6  � ��� l     �4�3�2�4  �3  �2  � ��� l      �1���1  � � �
find_db_file: Finds an iPhone backup file with a particular sqlite table name. 
@params home_path: Path to a user's home directory
		 table_name: Name of the table to search for
@return db_file: Path to the database file containing the table
   � ���� 
 f i n d _ d b _ f i l e :   F i n d s   a n   i P h o n e   b a c k u p   f i l e   w i t h   a   p a r t i c u l a r   s q l i t e   t a b l e   n a m e .   
 @ p a r a m s   h o m e _ p a t h :   P a t h   t o   a   u s e r ' s   h o m e   d i r e c t o r y 
 	 	   t a b l e _ n a m e :   N a m e   o f   t h e   t a b l e   t o   s e a r c h   f o r 
 @ r e t u r n   d b _ f i l e :   P a t h   t o   t h e   d a t a b a s e   f i l e   c o n t a i n i n g   t h e   t a b l e 
� ��� i    ��� I      �0��/�0 0 find_db_file  � ��� o      �.�. 0 	home_path  � ��-� o      �,�, 0 
table_name  �-  �/  � k     b�� ��� l     �+�*�)�+  �*  �)  � ��� l     �(���(  � ) # The root folder for iPhone backups   � ��� F   T h e   r o o t   f o l d e r   f o r   i P h o n e   b a c k u p s� ��� r     ��� b     ��� o     �'�' 0 	home_path  � m    �� ��� \ L i b r a r y / A p p l i c a t i o n   S u p p o r t / M o b i l e S y n c / B a c k u p /� o      �&�& 0 backup_folder  � ��� l   �%�$�#�%  �$  �#  � ��� l   �"���"  � > 8 Find the name of the most recently-edited backup folder   � ��� p   F i n d   t h e   n a m e   o f   t h e   m o s t   r e c e n t l y - e d i t e d   b a c k u p   f o l d e r� ��� r    ��� n    ��� 4   �!�
�! 
cwor� m    � � ��� l   ���� I   ���
� .sysoexecTEXT���     TEXT� b    ��� b    	��� m    �� ���  l s   - a l t R   "� o    �� 0 backup_folder  � m   	 
�� ��� 2 "   |   h e a d   - n   3   |   t a i l   - n   1�  �  �  � o      �� 0 backup_foldername  � ��� l   ����  �  �  � ��� l   ����  � 6 0 Append the backup foldername to the search path   � ��� `   A p p e n d   t h e   b a c k u p   f o l d e r n a m e   t o   t h e   s e a r c h   p a t h� ��� r    ��� b    ��� o    �� 0 backup_folder  � o    �� 0 backup_foldername  � o      �� 0 backup_folder  � ��� l   ����  �  �  � ��� l   ����  � + % In case the file's not found quickly   � ��� J   I n   c a s e   t h e   f i l e ' s   n o t   f o u n d   q u i c k l y� ��� r    ��� m    �� ��� 
 E r r o r� o      �� 0 db_file  � ��� l   ����  �  �  � ��� l   �
���
  � F @ Use find and grep to search for files containing the table name   � �   �   U s e   f i n d   a n d   g r e p   t o   s e a r c h   f o r   f i l e s   c o n t a i n i n g   t h e   t a b l e   n a m e�  t    ? Q   ! > r   $ 3	 l  $ 1
�	�
 I  $ 1��
� .sysoexecTEXT���     TEXT b   $ - b   $ + b   $ ) b   $ ' m   $ % �  f i n d   " o   % &�� 0 backup_folder   m   ' ( � F "   - t y p e   f   - p r i n t 0   |   x a r g s   - 0   g r e p   " o   ) *�� 0 
table_name   m   + , �  "�  �	  �  	 o      �� 0 db_file   R      ��
� .ascrerr ****      � **** o      � �  0 error_message  �   k   ; >  l  ; ;����   8 2 Output of the find is usually handled as an error    �   d   O u t p u t   o f   t h e   f i n d   i s   u s u a l l y   h a n d l e d   a s   a n   e r r o r !��! r   ; >"#" o   ; <���� 0 error_message  # o      ���� 0 db_file  ��   m     ����  $%$ l  @ @��������  ��  ��  % &'& l  @ @��()��  ( * $ If there's no file, return an error   ) �** H   I f   t h e r e ' s   n o   f i l e ,   r e t u r n   a n   e r r o r' +,+ Z   @ P-.����- l  @ G/����/ A   @ G010 l  @ E2����2 n   @ E343 m   C E��
�� 
nmbr4 n   @ C565 2  A C��
�� 
cwor6 o   @ A���� 0 db_file  ��  ��  1 m   E F���� ��  ��  . L   J L77 m   J K88 �99 
 E r r o r��  ��  , :;: l  Q Q��������  ��  ��  ; <=< l  Q Q��>?��  > _ Y The output of find-grep is "Binary file xx/yy/zz matches". We want the penultimate word.   ? �@@ �   T h e   o u t p u t   o f   f i n d - g r e p   i s   " B i n a r y   f i l e   x x / y y / z z   m a t c h e s " .   W e   w a n t   t h e   p e n u l t i m a t e   w o r d .= ABA r   Q WCDC n   Q UEFE 4   R U��G
�� 
cworG m   S T������F o   Q R���� 0 db_file  D o      ���� 0 db_file  B HIH l  X X��������  ��  ��  I JKJ l  X X��LM��  L 7 1 Append with the search path to get the file path   M �NN b   A p p e n d   w i t h   t h e   s e a r c h   p a t h   t o   g e t   t h e   f i l e   p a t hK OPO r   X _QRQ b   X ]STS b   X [UVU o   X Y���� 0 backup_folder  V m   Y ZWW �XX  /T o   [ \���� 0 db_file  R o      ���� 0 db_file  P YZY l  ` `��������  ��  ��  Z [\[ l  ` `��]^��  ] - ' Return the path to the calling routine   ^ �__ N   R e t u r n   t h e   p a t h   t o   t h e   c a l l i n g   r o u t i n e\ `��` L   ` baa o   ` a���� 0 db_file  ��  � bcb l     ��������  ��  ��  c ded l      ��fg��  f � �
db_to_csv: Export a sqlite database table to a CSV file
@params db_file: The path of the sqlite database to export from
		 this_table: The name of the table to export
		 destination_file: The name of the CSV file to save it as
   g �hh� 
 d b _ t o _ c s v :   E x p o r t   a   s q l i t e   d a t a b a s e   t a b l e   t o   a   C S V   f i l e 
 @ p a r a m s   d b _ f i l e :   T h e   p a t h   o f   t h e   s q l i t e   d a t a b a s e   t o   e x p o r t   f r o m 
 	 	   t h i s _ t a b l e :   T h e   n a m e   o f   t h e   t a b l e   t o   e x p o r t 
 	 	   d e s t i n a t i o n _ f i l e :   T h e   n a m e   o f   t h e   C S V   f i l e   t o   s a v e   i t   a s 
e iji i    klk I      ��m���� 0 	db_to_csv  m non o      ���� 0 db_file  o pqp o      ���� 0 
this_table  q r��r o      ���� 0 destination_file  ��  ��  l Q     stus I   ��v��
�� .sysoexecTEXT���     TEXTv b    wxw b    yzy b    {|{ b    
}~} b    � b    ��� m    �� ��� : s q l i t e 3   - c s v   - s e p a r a t o r   ' , '   "� o    ���� 0 db_file  � m    �� ��� " "   " s e l e c t   *   f r o m  ~ o    	���� 0 
this_table  | m   
 �� ���  ; "   >   "z o    ���� 0 destination_file  x m    �� ���  "��  t R      ������
�� .ascrerr ****      � ****��  ��  u L    �� m    �� ��� 
 E r r o rj ��� l     ��������  ��  ��  � ��� l      ������  � � �
plist_to_csv: Convert a plist file to a CSV file
@params db_file: The path of the plist file to convert from
		 destination_file: The name of the CSV file to save it as
   � ���T 
 p l i s t _ t o _ c s v :   C o n v e r t   a   p l i s t   f i l e   t o   a   C S V   f i l e 
 @ p a r a m s   d b _ f i l e :   T h e   p a t h   o f   t h e   p l i s t   f i l e   t o   c o n v e r t   f r o m 
 	 	   d e s t i n a t i o n _ f i l e :   T h e   n a m e   o f   t h e   C S V   f i l e   t o   s a v e   i t   a s 
� ��� i    ��� I      ������� 0 plist_to_csv  � ��� o      ���� 0 
plist_file  � ���� o      ���� 0 destination_file  ��  ��  � k     �� ��� l     ������  � , &Remove the extension, or it won't work   � ��� L R e m o v e   t h e   e x t e n s i o n ,   o r   i t   w o n ' t   w o r k� ��� r     
��� n    ��� I    ������� 0 replace_chars  � ��� o    ���� 0 
plist_file  � ��� m    �� ���  . p l i s t� ���� m    �� ���  ��  ��  �  f     � o      ���� 0 
plist_file  � ��� l   ��������  ��  ��  � ��� l   ������  �   Extract the data   � ��� "   E x t r a c t   t h e   d a t a� ���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� b    ��� m    �� ���  d e f a u l t s   r e a d   "� o    ���� 0 
plist_file  � m    �� ���  "   >  � m    �� ���  "� o    ���� 0 destination_file  � m    �� ���  "��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �
replace_chars: Replaces text in a string
@params this_text: The string to replace within
		 search_string: The text to be replaced
		 replacement_string: The text for it to be replaced with
@return this_text: The string with replacements made
   � ���� 
 r e p l a c e _ c h a r s :   R e p l a c e s   t e x t   i n   a   s t r i n g 
 @ p a r a m s   t h i s _ t e x t :   T h e   s t r i n g   t o   r e p l a c e   w i t h i n 
 	 	   s e a r c h _ s t r i n g :   T h e   t e x t   t o   b e   r e p l a c e d 
 	 	   r e p l a c e m e n t _ s t r i n g :   T h e   t e x t   f o r   i t   t o   b e   r e p l a c e d   w i t h 
 @ r e t u r n   t h i s _ t e x t :   T h e   s t r i n g   w i t h   r e p l a c e m e n t s   m a d e 
� ��� i    ��� I      ������� 0 replace_chars  � ��� o      ���� 0 	this_text  � ��� o      ���� 0 search_string  � ���� o      ���� 0 replacement_string  ��  ��  � k      �� ��� r     ��� l    ������ o     ���� 0 search_string  ��  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    	��� 2    	��
�� 
citm� o    ���� 0 	this_text  � l     ������ o      ���� 0 	item_list  ��  ��  � ��� r    ��� l   ������ o    ���� 0 replacement_string  ��  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� c    ��� l   ������ o    ���� 0 	item_list  ��  ��  � m    ��
�� 
TEXT� o      ���� 0 	this_text  � ��� r    ��� m       �  � n      1    ��
�� 
txdl 1    ��
�� 
ascr� �� L      o    ���� 0 	this_text  ��  �  l     ��������  ��  ��   	 l      ��
��  
 � �
text_between: Gets a substring between flags
@params this_text: The string to search
		 start_text: The starting flag
		 end_text: The ending flag
@return this_text: The first substring between those flags
    �� 
 t e x t _ b e t w e e n :   G e t s   a   s u b s t r i n g   b e t w e e n   f l a g s 
 @ p a r a m s   t h i s _ t e x t :   T h e   s t r i n g   t o   s e a r c h 
 	 	   s t a r t _ t e x t :   T h e   s t a r t i n g   f l a g 
 	 	   e n d _ t e x t :   T h e   e n d i n g   f l a g 
 @ r e t u r n   t h i s _ t e x t :   T h e   f i r s t   s u b s t r i n g   b e t w e e n   t h o s e   f l a g s 
	  i     # I      ������ 0 text_between    o      ���� 0 	this_text    o      ���� 0 
start_text   �� o      ���� 0 end_text  ��  ��   k     X  r      m      �   o      ���� 0 return_text    Q    O !��  k    F"" #$# Z    '%&�'% l   
(�~�}( >   
)*) o    �|�| 0 
start_text  * m    	++ �,, 
 s t a r t�~  �}  & k    !-- ./. r    010 o    �{�{ 0 
start_text  1 n     232 1    �z
�z 
txdl3 1    �y
�y 
ascr/ 4�x4 r    !565 c    787 n    9:9 7   �w;<
�w 
citm; m    �v�v <  ;    : o    �u�u 0 	this_text  8 m    �t
�t 
TEXT6 o      �s�s 0 return_text  �x  �  ' r   $ '=>= o   $ %�r�r 0 	this_text  > o      �q�q 0 return_text  $ ?�p? Z   ( F@A�o�n@ l  ( +B�m�lB >  ( +CDC o   ( )�k�k 0 end_text  D m   ) *EE �FF  e n d�m  �l  A k   . BGG HIH r   . 3JKJ o   . /�j�j 0 end_text  K n     LML 1   0 2�i
�i 
txdlM 1   / 0�h
�h 
ascrI NON r   4 <PQP c   4 :RSR n   4 8TUT 4   5 8�gV
�g 
citmV m   6 7�f�f U o   4 5�e�e 0 return_text  S m   8 9�d
�d 
TEXTQ o      �c�c 0 return_text  O W�bW r   = BXYX m   = >ZZ �[[  Y n     \]\ 1   ? A�a
�a 
txdl] 1   > ?�`
�` 
ascr�b  �o  �n  �p  ! R      �_�^�]
�_ .ascrerr ****      � ****�^  �]  ��   ^_^ r   P U`a` m   P Qbb �cc  a n     ded 1   R T�\
�\ 
txdle 1   Q R�[
�[ 
ascr_ fgf l  V V�Z�Y�X�Z  �Y  �X  g h�Wh L   V Xii o   V W�V�V 0 return_text  �W   jkj l     �U�T�S�U  �T  �S  k lml l      �Rno�R  n � �
read_csv: Reads the CellLocation csv. Will need modifying for other file formats. 
@params this_file: The csv file to read
@return number_timestamps: The number of records in the file
   o �ppr 
 r e a d _ c s v :   R e a d s   t h e   C e l l L o c a t i o n   c s v .   W i l l   n e e d   m o d i f y i n g   f o r   o t h e r   f i l e   f o r m a t s .   
 @ p a r a m s   t h i s _ f i l e :   T h e   c s v   f i l e   t o   r e a d 
 @ r e t u r n   n u m b e r _ t i m e s t a m p s :   T h e   n u m b e r   o f   r e c o r d s   i n   t h e   f i l e 
m qrq i   $ 'sts I      �Qu�P�Q 0 read_csv  u v�Ov o      �N�N 0 	this_file  �O  �P  t k    �ww xyx l     �Mz{�M  z !  Clear the export variables   { �|| 6   C l e a r   t h e   e x p o r t   v a r i a b l e sy }~} r     � J     �L�L  � o      �K�K 0 
timestamps  ~ ��� r   	 ��� J   	 �J�J  � o      �I�I 0 	latitudes  � ��� r    ��� J    �H�H  � o      �G�G 0 
longitudes  � ��� l   �F�E�D�F  �E  �D  � ��� l   �C���C  � * $ Read the file using Apple's routine   � ��� H   R e a d   t h e   f i l e   u s i n g   A p p l e ' s   r o u t i n e� ��� r    #��� n   !��� I    !�B��A�B 0 apple_read_file  � ��@� o    �?�? 0 	this_file  �@  �A  �  f    � o      �>�> 0 consolidateddb  � ��� l  $ $�=�<�;�=  �<  �;  � ��� l  $ $�:���:  � Q K Find the number of rows in the file, minus one for an blank trailing line.   � ��� �   F i n d   t h e   n u m b e r   o f   r o w s   i n   t h e   f i l e ,   m i n u s   o n e   f o r   a n   b l a n k   t r a i l i n g   l i n e .� ��� r   $ -��� I  $ +�9��8
�9 .corecnte****       ****� n   $ '��� 2  % '�7
�7 
cpar� o   $ %�6�6 0 consolidateddb  �8  � o      �5�5 0 number_lines  � ��� r   . 3��� \   . 1��� o   . /�4�4 0 number_lines  � m   / 0�3�3 � o      �2�2 0 number_lines  � ��� l  4 4�1�0�/�1  �0  �/  � ��� l  4 4�.���.  � $  Maximum and minimum timestamp   � ��� <   M a x i m u m   a n d   m i n i m u m   t i m e s t a m p� ��� r   4 @��� n  4 >��� I   5 >�-��,�- 0 date_to_timestamp  � ��+� I  5 :�*�)�(
�* .misccurdldt    ��� null�)  �(  �+  �,  �  f   4 5� o      �'�' 0 max_timestamp  � ��� r   A D��� m   A B�� ldt     �]�� o      �&�& 0 min_date  � ��� r   E M��� n  E K��� I   F K�%��$�% 0 date_to_timestamp  � ��#� o   F G�"�" 0 min_date  �#  �$  �  f   E F� o      �!�! 0 min_timestamp  � ��� l  N N� ���   �  �  � ��� l  N N����  �   Go through each line   � ��� *   G o   t h r o u g h   e a c h   l i n e� ��� Y   N������� k   X��� ��� l  X X����  �   Get the line   � ���    G e t   t h e   l i n e� ��� r   X ^��� n   X \��� 4   Y \��
� 
cpar� o   Z [�� 0 current_line  � o   X Y�� 0 consolidateddb  � o      �� 0 	this_line  � ��� l  _ _����  �  �  � ��� l  _ _����  �   Ignore blank lines   � ��� &   I g n o r e   b l a n k   l i n e s� ��� l  _����� Z   _������ l  _ h���� ?   _ h��� l  _ f���� I  _ f�
��	
�
 .corecnte****       ****� n   _ b��� 2  ` b�
� 
cwor� o   _ `�� 0 	this_line  �	  �  �  � m   f g�� �  �  � k   k��� ��� l  k k����  �  �  � ��� l  k k����  �   For consolidated.db		   � ��� ,   F o r   c o n s o l i d a t e d . d b 	 	� ��� Z   kM� �� � l  k n���� D   k n o   k l���� 0 	this_file   m   l m �   C e l l L o c a t i o n . c s v��  ��    k   qI  l  q q��	
��  	 + % Read the contents of the line as CSV   
 � J   R e a d   t h e   c o n t e n t s   o f   t h e   l i n e   a s   C S V  r   q v m   q r �  , n      1   s u��
�� 
txdl 1   r s��
�� 
ascr  r   w | n   w z 2   x z��
�� 
citm o   w x���� 0 	this_line   o      ���� 0 
line_items    r   } � m   } ~ �   n      !  1    ���
�� 
txdl! 1   ~ ��
�� 
ascr "#" l  � ���������  ��  ��  # $%$ r   � �&'& o   � ����� 0 
line_items  ' J      (( )*) o      ���� 0 mcc  * +,+ o      ���� 0 mnc  , -.- o      ���� 0 lac  . /0/ o      ���� 0 ci  0 121 o      ���� 0 	timestamp  2 343 o      ���� 0 latitude  4 565 o      ���� 0 	longitude  6 787 o      ���� 0 horizontalaccuracy  8 9:9 o      ���� 0 altitude  : ;<; o      ���� 0 verticalaccuracy  < =>= o      ���� 	0 speed  > ?@? o      ���� 
0 course  @ A��A o      ���� 0 
confidence  ��  % BCB l  � ���������  ��  ��  C DED l  � ���FG��  F P J If the timestamp is out of bounds, find something within the last 2 years   G �HH �   I f   t h e   t i m e s t a m p   i s   o u t   o f   b o u n d s ,   f i n d   s o m e t h i n g   w i t h i n   t h e   l a s t   2   y e a r sE IJI Z   �GKL����K l  � M����M ?   � NON o   � ����� 0 	timestamp  O o   � ����� 0 max_timestamp  ��  ��  L k  CPP QRQ l ��ST��  S , & Look for a timestamp within the range   T �UU L   L o o k   f o r   a   t i m e s t a m p   w i t h i n   t h e   r a n g eR V��V X  CW��XW k  >YY Z[Z r   \]\ c  ^_^ o  ���� 0 	this_item  _ m  ��
�� 
long] o      ���� 0 	this_item  [ `��` Z  !>ab����a l !2c����c F  !2ded l !&f����f ?  !&ghg o  !$���� 0 	this_item  h o  $%���� 0 min_timestamp  ��  ��  e l ).i����i A  ).jkj o  ),���� 0 	this_item  k o  ,-���� 0 max_timestamp  ��  ��  ��  ��  b r  5:lml o  58���� 0 	this_item  m o      ���� 0 	timestamp  ��  ��  ��  �� 0 	this_item  X o  ���� 0 
line_items  ��  ��  ��  J n��n l HH��������  ��  ��  ��  �  �   � opo l NN��������  ��  ��  p qrq l NN��st��  s   For cells.plist   t �uu     F o r   c e l l s . p l i s tr vwv Z  N�xy����x l NSz����z D  NS{|{ o  NO���� 0 	this_file  | m  OR}} �~~  c e l l s . c s v��  ��  y k  V� ��� l VV������  �    Remove trailing semicolon   � ��� 4   R e m o v e   t r a i l i n g   s e m i c o l o n� ��� r  Vd��� n Vb��� I  Wb������� 0 text_between  � ��� o  WX���� 0 	this_line  � ��� m  X[�� ���  +� ���� m  [^�� ���  " ;��  ��  �  f  VW� o      ���� 0 	this_line  � ��� l ee��������  ��  ��  � ��� l ee������  � + % Read the contents of the line as CSV   � ��� J   R e a d   t h e   c o n t e n t s   o f   t h e   l i n e   a s   C S V� ��� r  el��� m  eh�� ���  ,� n     ��� 1  ik��
�� 
txdl� 1  hi��
�� 
ascr� ��� r  m���� n  mp��� 2  np��
�� 
citm� o  mn���� 0 	this_line  � J      �� ��� o      ���� 0 latitude  � ��� o      ���� 0 	longitude  � ��� o      ���� 0 horizontalaccuracy  � ��� o      ���� 0 na  � ���� o      ���� 0 	timestamp  ��  � ���� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr��  ��  ��  w ��� l ����������  ��  ��  � ��� l ��������  � F @ Save the data we want to the global variables ("property" type)   � ��� �   S a v e   t h e   d a t a   w e   w a n t   t o   t h e   g l o b a l   v a r i a b l e s   ( " p r o p e r t y "   t y p e )� ��� r  ����� c  ����� o  ������ 0 	timestamp  � m  ����
�� 
nmbr� n      ���  ;  ��� o  ������ 0 
timestamps  � ��� r  ����� c  ����� o  ������ 0 latitude  � m  ����
�� 
nmbr� n      ���  ;  ��� o  ������ 0 	latitudes  � ��� r  ����� c  ����� o  ������ 0 	longitude  � m  ����
�� 
nmbr� n      ���  ;  ��� o  ������ 0 
longitudes  � ���� l ����������  ��  ��  ��  �  �  �   end if blank line   � ��� $   e n d   i f   b l a n k   l i n e�  � 0 current_line  � m   Q R���� � o   R S���� 0 number_lines  �  � ��� l ����������  ��  ��  � ��� l ��������  � - ' Return the number of items in the list   � ��� N   R e t u r n   t h e   n u m b e r   o f   i t e m s   i n   t h e   l i s t� ���� L  ���� I �������
�� .corecnte****       ****� o  ������ 0 
timestamps  ��  ��  r ��� l     ��������  ��  ��  � ��� l      ������  � � �
apple_read_file: Apple's code to read files
@param this_file: The file to read
@return file_text: The contents of the file as text
   � ��� 
 a p p l e _ r e a d _ f i l e :   A p p l e ' s   c o d e   t o   r e a d   f i l e s 
 @ p a r a m   t h i s _ f i l e :   T h e   f i l e   t o   r e a d 
 @ r e t u r n   f i l e _ t e x t :   T h e   c o n t e n t s   o f   t h e   f i l e   a s   t e x t 
� ��� i   ( +��� I      ���~� 0 apple_read_file  � ��}� o      �|�| 0 	this_file  �}  �~  � k     �� ��� I    �{��z
�{ .rdwropenshor       file� o     �y�y 0 	this_file  �z  � ��� r    ��� l   ��x�w� I   �v��u
�v .rdwrread****        ****� o    �t�t 0 	this_file  �u  �x  �w  � o      �s�s 0 	file_text  � ��� I   �r��q
�r .rdwrclosnull���     ****� o    �p�p 0 	this_file  �q  �  �o  L     o    �n�n 0 	file_text  �o  �  l     �m�l�k�m  �l  �k    l      �j�j   � �
date_to_timestamp: Convert a date to iPhone-style UNIX timestamp
@param this_date: AppleScript date object
@return timestamp: The date as a timestamp
    �. 
 d a t e _ t o _ t i m e s t a m p :   C o n v e r t   a   d a t e   t o   i P h o n e - s t y l e   U N I X   t i m e s t a m p 
 @ p a r a m   t h i s _ d a t e :   A p p l e S c r i p t   d a t e   o b j e c t 
 @ r e t u r n   t i m e s t a m p :   T h e   d a t e   a s   a   t i m e s t a m p 
 	
	 i   , / I      �i�h�i 0 date_to_timestamp   �g o      �f�f 0 	this_date  �g  �h   k       l     �e�e   7 1 iPhone dates start on 2 Jan 2001, not 1 Jan 1970    � b   i P h o n e   d a t e s   s t a r t   o n   2   J a n   2 0 0 1 ,   n o t   1   J a n   1 9 7 0  r      m      �  2 / 1 / 2 0 0 1 o      �d�d 0 
unix_start    l   �c�c   > 8 Subtract the dates to get the number of seconds between    � p   S u b t r a c t   t h e   d a t e s   t o   g e t   t h e   n u m b e r   o f   s e c o n d s   b e t w e e n  !  r    "#" \    
$%$ o    �b�b 0 	this_date  % l   	&�a�`& 4    	�_'
�_ 
ldt ' o    �^�^ 0 
unix_start  �a  �`  # o      �]�] 0 	timestamp  ! ()( l   �\�[�Z�\  �[  �Z  ) *�Y* L    ++ o    �X�X 0 	timestamp  �Y  
 ,-, l     �W�V�U�W  �V  �U  - ./. l      �T01�T  0 � �
timestamp_to_date: Convert an iPhone-style UNIX timestamp to a date
@param timestamp: An iPhone-style timestamp
@return this_date: The timestamp as an AppleScript date
   1 �22R 
 t i m e s t a m p _ t o _ d a t e :   C o n v e r t   a n   i P h o n e - s t y l e   U N I X   t i m e s t a m p   t o   a   d a t e 
 @ p a r a m   t i m e s t a m p :   A n   i P h o n e - s t y l e   t i m e s t a m p 
 @ r e t u r n   t h i s _ d a t e :   T h e   t i m e s t a m p   a s   a n   A p p l e S c r i p t   d a t e 
/ 343 i   0 3565 I      �S7�R�S 0 timestamp_to_date  7 8�Q8 o      �P�P 0 	timestamp  �Q  �R  6 k     99 :;: l     �O<=�O  < 7 1 iPhone dates start on 2 Jan 2001, not 1 Jan 1970   = �>> b   i P h o n e   d a t e s   s t a r t   o n   2   J a n   2 0 0 1 ,   n o t   1   J a n   1 9 7 0; ?@? r     ABA m     CC �DD  2 / 1 / 2 0 0 1B o      �N�N 0 
unix_start  @ EFE l   �MGH�M  G : 4 Add the number of seconds to get the resulting date   H �II h   A d d   t h e   n u m b e r   o f   s e c o n d s   t o   g e t   t h e   r e s u l t i n g   d a t eF JKJ r    LML [    
NON l   P�L�KP 4    �JQ
�J 
ldt Q o    �I�I 0 
unix_start  �L  �K  O o    	�H�H 0 	timestamp  M o      �G�G 0 	this_date  K RSR l   �F�E�D�F  �E  �D  S TUT l   �CVW�C  V - ' Return the date. I wish I had a date.    W �XX N   R e t u r n   t h e   d a t e .   I   w i s h   I   h a d   a   d a t e .  U Y�BY L    ZZ o    �A�A 0 	this_date  �B  4 [\[ l     �@�?�>�@  �?  �>  \ ]^] l      �=_`�=  _ � �
get_photos: Gets all the photos since a date in an application
@param this_application: The name of the application
		start_date: The date to count photos after
@return these_photos: All the photos since that date
   ` �aa� 
 g e t _ p h o t o s :   G e t s   a l l   t h e   p h o t o s   s i n c e   a   d a t e   i n   a n   a p p l i c a t i o n 
 @ p a r a m   t h i s _ a p p l i c a t i o n :   T h e   n a m e   o f   t h e   a p p l i c a t i o n 
 	 	 s t a r t _ d a t e :   T h e   d a t e   t o   c o u n t   p h o t o s   a f t e r 
 @ r e t u r n   t h e s e _ p h o t o s :   A l l   t h e   p h o t o s   s i n c e   t h a t   d a t e 
^ bcb i   4 7ded I      �<f�;�< 0 
get_photos  f ghg o      �:�: 0 this_application  h i�9i o      �8�8 0 
start_date  �9  �;  e k     Kjj klk l     �7�6�5�7  �6  �5  l mnm r     opo J     �4�4  p o      �3�3 0 these_photos  n qrq l   �2�1�0�2  �1  �0  r sts Z    $uv�/�.u l   w�-�,w =   xyx o    �+�+ 0 this_application  y m    zz �{{  i P h o t o�-  �,  v k     || }~} l   �*��*   8 2 Now AppleScript's high-level API becomes useful.    � ��� d   N o w   A p p l e S c r i p t ' s   h i g h - l e v e l   A P I   b e c o m e s   u s e f u l .  ~ ��)� O     ��� k    �� ��� l   �(���(  � 8 2 We only want to check photos since the data began   � ��� d   W e   o n l y   w a n t   t o   c h e c k   p h o t o s   s i n c e   t h e   d a t a   b e g a n� ��� r    ��� l   ��'�&� 6   ��� 2    �%
�% 
ipmr� @    ��� 1    �$
�$ 
idat� o    �#�# 0 
start_date  �'  �&  � o      �"�" 0 these_photos  � ��� l   �!� ��!  �   �  � ��� l   ����  � 7 1 Uncomment this line to only search the selection   � ��� b   U n c o m m e n t   t h i s   l i n e   t o   o n l y   s e a r c h   t h e   s e l e c t i o n� ��� l   ����  � # set these_photos to selection   � ��� : s e t   t h e s e _ p h o t o s   t o   s e l e c t i o n�  � m    ���                                                                                  iPho  alis    X  Peter Burkimsher           ɾ��H+      
iPhoto.app                                                      {�ș��        ����  	                Applications    ɾ��      ș��          (Peter Burkimsher:Applications:iPhoto.app   
 i P h o t o . a p p  "  P e t e r   B u r k i m s h e r  Applications/iPhoto.app   / ��  �)  �/  �.  t ��� l  % %����  �  �  � ��� Z   % H����� l  % (���� =  % (��� o   % &�� 0 this_application  � m   & '�� ���  A p e r t u r e�  �  � O   + D��� k   / C�� ��� l  / /����  � # set these_photos to selection   � ��� : s e t   t h e s e _ p h o t o s   t o   s e l e c t i o n� ��� r   / C��� 6  / A��� n   / 5��� 2   3 5�
� 
rkdp� 4  / 3��
� 
rklb� m   1 2�� � @   6 @��� n   7 <��� 1   : <�
� 
rkvl� 4   7 :��
� 
rkex� m   8 9�� ���  I m a g e D a t e� o   = ?�� 0 
start_date  � o      �� 0 these_photos  �  � m   + ,���                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��  �  �  � ��� l  I I�
�	��
  �	  �  � ��� L   I K�� o   I J�� 0 these_photos  �  c ��� l     ����  �  �  � ��� l      ����  �pj
get_photo_properties: Gets names, dates, and latitudes of photos since a date in an application
@param this_application: The name of the application
		start_date: The date to count photos after
@return photo_names: The names of photos since that date
		photo_dates: The dates of photos since that date
		photo_latitudes: The latitudes of photos since that date
   � ���� 
 g e t _ p h o t o _ p r o p e r t i e s :   G e t s   n a m e s ,   d a t e s ,   a n d   l a t i t u d e s   o f   p h o t o s   s i n c e   a   d a t e   i n   a n   a p p l i c a t i o n 
 @ p a r a m   t h i s _ a p p l i c a t i o n :   T h e   n a m e   o f   t h e   a p p l i c a t i o n 
 	 	 s t a r t _ d a t e :   T h e   d a t e   t o   c o u n t   p h o t o s   a f t e r 
 @ r e t u r n   p h o t o _ n a m e s :   T h e   n a m e s   o f   p h o t o s   s i n c e   t h a t   d a t e 
 	 	 p h o t o _ d a t e s :   T h e   d a t e s   o f   p h o t o s   s i n c e   t h a t   d a t e 
 	 	 p h o t o _ l a t i t u d e s :   T h e   l a t i t u d e s   o f   p h o t o s   s i n c e   t h a t   d a t e 
� ��� i   8 ;��� I      ��� � 0 get_photo_properties  � ��� o      ���� 0 this_application  � ��� o      ���� 0 
start_date  � ���� o      ���� 0 these_photos  ��  �   � k    ?�� ��� l     ��������  ��  ��  � ��� r     ��� J     �� ��� J     ����  � ��� J    ����  � ���� J    ����  ��  � J      �� ��� o      ���� 0 photo_names  � ��� o      ���� 0 photo_dates  � ���� o      ���� 0 photo_latitudes  ��  � ��� l   ��������  ��  ��  � ��� l   ������  �   If we're using iPhoto   � ��� ,   I f   w e ' r e   u s i n g   i P h o t o� ��� Z    v������� l   "������ =   "��� o     ���� 0 this_application  � m     !�� ���  i P h o t o��  ��  � O   % r��� k   ) q�� ��� l  ) )��	 	��  	    Get names and dates   	 �		 (   G e t   n a m e s   a n d   d a t e s� 			 r   ) 9			 l  ) 7	����	 6  ) 7				 n   ) .	
		
 1   , .��
�� 
pnam	 2   ) ,��
�� 
ipmr		 @   / 6			 1   0 2��
�� 
idat	 o   3 5���� 0 
start_date  ��  ��  	 o      ���� 0 photo_names  	 			 r   : J			 l  : H	����	 6  : H			 n   : ?			 1   = ?��
�� 
idat	 2   : =��
�� 
ipmr	 @   @ G			 1   A C��
�� 
idat	 o   D F���� 0 
start_date  ��  ��  	 o      ���� 0 photo_dates  	 			 l  K K��������  ��  ��  	 	��	 Q   K q				 r   N ^		 	 l  N \	!����	! 6  N \	"	#	" n   N S	$	%	$ 1   Q S��
�� 
lati	% 2   N Q��
�� 
ipmr	# @   T [	&	'	& 1   U W��
�� 
idat	' o   X Z���� 0 
start_date  ��  ��  	  o      ���� 0 photo_latitudes  	 R      ������
�� .ascrerr ****      � ****��  ��  	 I  f q��	(	)
�� .sysodlogaskr        TEXT	( m   f g	*	* �	+	+ < E r r o r :   i P h o t o   8   o r   9   r e q u i r e d !	) ��	,	-
�� 
btns	, J   h k	.	. 	/��	/ m   h i	0	0 �	1	1  C a n c e l��  	- ��	2��
�� 
dflt	2 m   l m���� ��  ��  � m   % &	3	3�                                                                                  iPho  alis    X  Peter Burkimsher           ɾ��H+      
iPhoto.app                                                      {�ș��        ����  	                Applications    ɾ��      ș��          (Peter Burkimsher:Applications:iPhoto.app   
 i P h o t o . a p p  "  P e t e r   B u r k i m s h e r  Applications/iPhoto.app   / ��  ��  ��  � 	4	5	4 l  w w��������  ��  ��  	5 	6	7	6 l  w w��	8	9��  	8   If we're using Aperture   	9 �	:	: 0   I f   w e ' r e   u s i n g   A p e r t u r e	7 	;	<	; Z   w8	=	>����	= l  w |	?����	? =  w |	@	A	@ o   w x���� 0 this_application  	A m   x {	B	B �	C	C  A p e r t u r e��  ��  	> O   4	D	E	D k   �3	F	F 	G	H	G l  � ���	I	J��  	I  
 Get names   	J �	K	K    G e t   n a m e s	H 	L	M	L r   � �	N	O	N 6  � �	P	Q	P n   � �	R	S	R 1   � ���
�� 
pnam	S n   � �	T	U	T 2   � ���
�� 
rkdp	U 4  � ���	V
�� 
rklb	V m   � ����� 	Q @   � �	W	X	W n   � �	Y	Z	Y 1   � ���
�� 
rkvl	Z 4   � ���	[
�� 
rkex	[ m   � �	\	\ �	]	]  I m a g e D a t e	X o   � ����� 0 
start_date  	O o      ���� 0 photo_names  	M 	^	_	^ l  � ���������  ��  ��  	_ 	`	a	` l  � ���	b	c��  	b  
 Get dates   	c �	d	d    G e t   d a t e s	a 	e	f	e r   � �	g	h	g 6  � �	i	j	i n   � �	k	l	k 2   � ���
�� 
rkdp	l 4  � ���	m
�� 
rklb	m m   � ����� 	j @   � �	n	o	n n   � �	p	q	p 1   � ���
�� 
rkvl	q 4   � ���	r
�� 
rkex	r m   � �	s	s �	t	t  I m a g e D a t e	o o   � ����� 0 
start_date  	h o      ���� 0 these_photos  	f 	u	v	u l  � ���������  ��  ��  	v 	w	x	w r   � �	y	z	y J   � �����  	z o      ���� 0 photo_dates  	x 	{	|	{ X   � �	}��	~	} k   � �		 	�	�	� r   � �	�	�	� n   � �	�	�	� 1   � ���
�� 
rkvl	� n   � �	�	�	� 4   � ���	�
�� 
rkex	� m   � �	�	� �	�	�  I m a g e D a t e	� o   � ����� 0 
this_photo  	� o      ���� 0 
photo_date  	� 	���	� r   � �	�	�	� o   � ����� 0 
photo_date  	� n      	�	�	�  ;   � �	� o   � ����� 0 photo_dates  ��  �� 0 
this_photo  	~ o   � ����� 0 these_photos  	| 	�	�	� l  � ���������  ��  ��  	� 	�	�	� l  � ���	�	���  	�   Get latitudes   	� �	�	�    G e t   l a t i t u d e s	� 	�	�	� Q   �1	�	�	�	� r   �	�	�	� 6  �	�	�	� n   �	�	�	� 1  ��
�� 
rkla	� n   �	�	�	� 2   ���
�� 
rkdp	� 4  � ���	�
�� 
rklb	� m   � ����� 	� @  	�	�	� n  	�	�	� 1  ��
�� 
rkvl	� 4  ��	�
�� 
rkex	� m  	�	� �	�	�  I m a g e D a t e	� o  ���� 0 
start_date  	� o      ���� 0 photo_latitudes  	� R      ������
�� .ascrerr ****      � ****��  ��  	� I "1��	�	�
�� .sysodlogaskr        TEXT	� m  "%	�	� �	�	� 6 E r r o r :   A p e r t u r e   3   r e q u i r e d !	� ��	�	�
�� 
btns	� J  &+	�	� 	���	� m  &)	�	� �	�	�  C a n c e l��  	� ��	���
�� 
dflt	� m  ,-���� ��  	� 	���	� l 22��������  ��  ��  ��  	E m    �	�	��                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��  ��  ��  	< 	�	�	� l 99����~��  �  �~  	� 	��}	� L  9?	�	� J  9>	�	� 	�	�	� o  9:�|�| 0 photo_names  	� 	�	�	� o  :;�{�{ 0 photo_dates  	� 	��z	� o  ;<�y�y 0 photo_latitudes  �z  �}  � 	�	�	� l     �x�w�v�x  �w  �v  	� 	�	�	� l      �u	�	��u  	� � �
set_location: Sets the location of a photo in an application
@param this_application: The name of the application
		this_photo: The photo to tag
		this_latitude: The latitude
		this_longitude: The longitude
   	� �	�	�� 
 s e t _ l o c a t i o n :   S e t s   t h e   l o c a t i o n   o f   a   p h o t o   i n   a n   a p p l i c a t i o n 
 @ p a r a m   t h i s _ a p p l i c a t i o n :   T h e   n a m e   o f   t h e   a p p l i c a t i o n 
 	 	 t h i s _ p h o t o :   T h e   p h o t o   t o   t a g 
 	 	 t h i s _ l a t i t u d e :   T h e   l a t i t u d e 
 	 	 t h i s _ l o n g i t u d e :   T h e   l o n g i t u d e 
	� 	�	�	� i   < ?	�	�	� I      �t	��s�t 0 set_location  	� 	�	�	� o      �r�r 0 this_application  	� 	�	�	� o      �q�q 0 
this_photo  	� 	�	�	� o      �p�p 0 this_latitude  	� 	��o	� o      �n�n 0 this_longitude  �o  �s  	� k     5	�	� 	�	�	� l     �m�l�k�m  �l  �k  	� 	�	�	� l     �j	�	��j  	�   If we're using iPhoto   	� �	�	� ,   I f   w e ' r e   u s i n g   i P h o t o	� 	�	�	� Z     	�	��i�h	� l    	��g�f	� =    	�	�	� o     �e�e 0 this_application  	� m    	�	� �	�	�  i P h o t o�g  �f  	� O    	�	�	� k   
 	�	� 	�	�	� r   
 	�	�	� o   
 �d�d 0 this_latitude  	� n      	�	�	� 1    �c
�c 
lati	� o    �b�b 0 
this_photo  	� 	��a	� r    	�	�	� o    �`�` 0 this_longitude  	� n      	�	�	� 1    �_
�_ 
lngt	� o    �^�^ 0 
this_photo  �a  	� m    	�	��                                                                                  iPho  alis    X  Peter Burkimsher           ɾ��H+      
iPhoto.app                                                      {�ș��        ����  	                Applications    ɾ��      ș��          (Peter Burkimsher:Applications:iPhoto.app   
 i P h o t o . a p p  "  P e t e r   B u r k i m s h e r  Applications/iPhoto.app   / ��  �i  �h  	� 	�	�	� l   �]�\�[�]  �\  �[  	� 	�	�	� l   �Z	�	��Z  	�   If we're using Aperture   	� �	�	� 0   I f   w e ' r e   u s i n g   A p e r t u r e	� 	��Y	� Z    5	�	��X�W	� l   
 �V�U
  =   


 o    �T�T 0 this_application  
 m    

 �

  A p e r t u r e�V  �U  	� O   ! 1


 k   % 0

 

	
 r   % *




 o   % &�S�S 0 this_latitude  
 n      


 1   ' )�R
�R 
rkla
 o   & '�Q�Q 0 
this_photo  
	 
�P
 r   + 0


 o   + ,�O�O 0 this_longitude  
 n      


 1   - /�N
�N 
rklo
 o   , -�M�M 0 
this_photo  �P  
 m   ! "

�                                                                                  fstp  alis    �  Peter Burkimsher           ɾ��H+    0Aperture.app                                                    .k��j        ����  	                Apps I Rarely Use     ɾ��      ��Z      0      <Peter Burkimsher:Applications:Apps I Rarely Use:Aperture.app    A p e r t u r e . a p p  "  P e t e r   B u r k i m s h e r  +Applications/Apps I Rarely Use/Aperture.app   / ��  �X  �W  �Y  	� 


 l     �L�K�J�L  �K  �J  
 


 l      �I

�I  
��
binary_search: A binary search algorithm. Match a value by repeatedly splitting a sorted list. 
@params: this_value: The value to search for
	  	  start_index: The index to start searching at. 
	  	  end_index: The index to end searching at. 
		  search_list: A global variable to search. Saves memory in recursion. 
@return: this_difference: The difference between the found value and the search value.
		 this_index: The index of the found value. 
   
 �

� 
 b i n a r y _ s e a r c h :   A   b i n a r y   s e a r c h   a l g o r i t h m .   M a t c h   a   v a l u e   b y   r e p e a t e d l y   s p l i t t i n g   a   s o r t e d   l i s t .   
 @ p a r a m s :   t h i s _ v a l u e :   T h e   v a l u e   t o   s e a r c h   f o r 
 	     	     s t a r t _ i n d e x :   T h e   i n d e x   t o   s t a r t   s e a r c h i n g   a t .   
 	     	     e n d _ i n d e x :   T h e   i n d e x   t o   e n d   s e a r c h i n g   a t .   
 	 	     s e a r c h _ l i s t :   A   g l o b a l   v a r i a b l e   t o   s e a r c h .   S a v e s   m e m o r y   i n   r e c u r s i o n .   
 @ r e t u r n :   t h i s _ d i f f e r e n c e :   T h e   d i f f e r e n c e   b e t w e e n   t h e   f o u n d   v a l u e   a n d   t h e   s e a r c h   v a l u e . 
 	 	   t h i s _ i n d e x :   T h e   i n d e x   o f   t h e   f o u n d   v a l u e .   

 


 i   @ C


 I      �H
�G�H 0 binary_search  
 
 
!
  o      �F�F 0 
this_value  
! 
"
#
" o      �E�E 0 start_index  
# 
$�D
$ o      �C�C 0 	end_index  �D  �G  
 k     �
%
% 
&
'
& l     �B�A�@�B  �A  �@  
' 
(
)
( l     �?
*
+�?  
* > 8 Split the list in half, taking the lower-middle index.    
+ �
,
, p   S p l i t   t h e   l i s t   i n   h a l f ,   t a k i n g   t h e   l o w e r - m i d d l e   i n d e x .  
) 
-
.
- r     
/
0
/ c     	
1
2
1 l    
3�>�=
3 [     
4
5
4 o     �<�< 0 start_index  
5 l   
6�;�:
6 ^    
7
8
7 l   
9�9�8
9 \    
:
;
: o    �7�7 0 	end_index  
; o    �6�6 0 start_index  �9  �8  
8 m    �5�5 �;  �:  �>  �=  
2 m    �4
�4 
long
0 o      �3�3 0 middle_index  
. 
<
=
< l   �2�1�0�2  �1  �0  
= 
>
?
> l   �/
@
A�/  
@   Find the middle value.    
A �
B
B 0   F i n d   t h e   m i d d l e   v a l u e .  
? 
C
D
C r    
E
F
E n    
G
H
G 4    �.
I
�. 
cobj
I o    �-�- 0 middle_index  
H o    �,�, 0 search_list  
F o      �+�+ 0 middle_value  
D 
J
K
J l   �*�)�(�*  �)  �(  
K 
L
M
L l   �'
N
O�'  
N 2 , If the value is found, return immediately.    
O �
P
P X   I f   t h e   v a l u e   i s   f o u n d ,   r e t u r n   i m m e d i a t e l y .  
M 
Q
R
Q Z    *
S
T�&�%
S l   
U�$�#
U =   
V
W
V o    �"�" 0 
this_value  
W o    �!�! 0 middle_value  �$  �#  
T k    &
X
X 
Y
Z
Y r     
[
\
[ m    � �   
\ o      �� 0 this_difference  
Z 
]�
] L   ! &
^
^ J   ! %
_
_ 
`
a
` o   ! "�� 0 this_difference  
a 
b�
b o   " #�� 0 middle_index  �  �  �&  �%  
R 
c
d
c l  + +����  �  �  
d 
e
f
e l  + +�
g
h�  
g $  If there's only 2 items left    
h �
i
i <   I f   t h e r e ' s   o n l y   2   i t e m s   l e f t  
f 
j
k
j l  + r
l
m
n
l Z   + r
o
p��
o l  + 0
q��
q =  + 0
r
s
r l  + .
t��
t \   + .
u
v
u o   + ,�� 0 	end_index  
v o   , -�� 0 start_index  �  �  
s m   . /�� �  �  
p k   3 n
w
w 
x
y
x l  3 3�
z
{�  
z $  Find the start and end values   
{ �
|
| <   F i n d   t h e   s t a r t   a n d   e n d   v a l u e s
y 
}
~
} r   3 =

�
 n   3 ;
�
�
� 4   8 ;�
�
� 
cobj
� o   9 :�� 0 	end_index  
� o   3 8�
�
 0 search_list  
� o      �	�	 0 	end_value  
~ 
�
�
� r   > H
�
�
� n   > F
�
�
� 4   C F�
�
� 
cobj
� o   D E�� 0 start_index  
� o   > C�� 0 search_list  
� o      �� 0 start_value  
� 
�
�
� l  I I����  �  �  
� 
�
�
� l  I I�
�
��  
� 8 2 Find the differences for the start and end values   
� �
�
� d   F i n d   t h e   d i f f e r e n c e s   f o r   t h e   s t a r t   a n d   e n d   v a l u e s
� 
�
�
� r   I P
�
�
� c   I N
�
�
� l  I L
�� ��
� \   I L
�
�
� o   I J���� 0 
this_value  
� o   J K���� 0 start_value  �   ��  
� m   L M��
�� 
nmbr
� o      ���� 0 start_difference  
� 
�
�
� r   Q X
�
�
� c   Q V
�
�
� l  Q T
�����
� \   Q T
�
�
� o   Q R���� 0 	end_value  
� o   R S���� 0 
this_value  ��  ��  
� m   T U��
�� 
nmbr
� o      ���� 0 end_difference  
� 
�
�
� l  Y Y��������  ��  ��  
� 
�
�
� l  Y Y��
�
���  
� C = Return the smaller difference, and its corresponding index.    
� �
�
� z   R e t u r n   t h e   s m a l l e r   d i f f e r e n c e ,   a n d   i t s   c o r r e s p o n d i n g   i n d e x .  
� 
�
�
� Z   Y l
�
���
�
� l  Y \
�����
� B   Y \
�
�
� o   Y Z���� 0 start_difference  
� o   Z [���� 0 end_difference  ��  ��  
� L   _ d
�
� J   _ c
�
� 
�
�
� o   _ `���� 0 start_difference  
� 
���
� o   ` a���� 0 start_index  ��  ��  
� L   g l
�
� J   g k
�
� 
�
�
� o   g h���� 0 end_difference  
� 
���
� o   h i���� 0 	end_index  ��  
� 
���
� l  m m��������  ��  ��  ��  �  �  
m ' ! end if there's only 2 items left   
n �
�
� B   e n d   i f   t h e r e ' s   o n l y   2   i t e m s   l e f t
k 
�
�
� l  s s��������  ��  ��  
� 
�
�
� l  s s��
�
���  
� k e Recurse with the first half of the list if it's before the middle value, second half if it's after.    
� �
�
� �   R e c u r s e   w i t h   t h e   f i r s t   h a l f   o f   t h e   l i s t   i f   i t ' s   b e f o r e   t h e   m i d d l e   v a l u e ,   s e c o n d   h a l f   i f   i t ' s   a f t e r .  
� 
�
�
� Z   s �
�
���
�
� l  s v
�����
� A   s v
�
�
� o   s t���� 0 
this_value  
� o   t u���� 0 middle_value  ��  ��  
� L   y �
�
� n  y �
�
�
� I   z ���
����� 0 binary_search  
� 
�
�
� o   z {���� 0 
this_value  
� 
�
�
� o   { |���� 0 start_index  
� 
���
� o   | }���� 0 middle_index  ��  ��  
�  f   y z��  
� L   � �
�
� n  � �
�
�
� I   � ���
����� 0 binary_search  
� 
�
�
� o   � ����� 0 
this_value  
� 
�
�
� o   � ����� 0 middle_index  
� 
���
� o   � ����� 0 	end_index  ��  ��  
�  f   � �
� 
���
� l  � ���������  ��  ��  ��  
 
�
�
� l     ��������  ��  ��  
� 
�
�
� l      ��
�
���  
�
sequential_search: A sequential search algorithm. Match a value by counting through a list. 
@params: search_value: The value to search for
@return: this_difference: The difference between the found value and the search value.
		 this_index: The index of the found value. 
   
� �
�
�$ 
 s e q u e n t i a l _ s e a r c h :   A   s e q u e n t i a l   s e a r c h   a l g o r i t h m .   M a t c h   a   v a l u e   b y   c o u n t i n g   t h r o u g h   a   l i s t .   
 @ p a r a m s :   s e a r c h _ v a l u e :   T h e   v a l u e   t o   s e a r c h   f o r 
 @ r e t u r n :   t h i s _ d i f f e r e n c e :   T h e   d i f f e r e n c e   b e t w e e n   t h e   f o u n d   v a l u e   a n d   t h e   s e a r c h   v a l u e . 
 	 	   t h i s _ i n d e x :   T h e   i n d e x   o f   t h e   f o u n d   v a l u e .   

� 
���
� i   D G
�
�
� I      ��
����� 0 sequential_search  
� 
�
�
� o      ���� 0 search_value  
� 
���
� o      ���� 0 valid_range  ��  ��  
� k     �
�
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� r     
�
�
� m     ����  
� o      ���� 0 previous_value  
� 
�
�
� r    
�
�
� m    ������
� o      ���� 0 previous_index  
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� r    
�
�
� m    	������
� o      ���� 0 this_difference  
�    r     m    ������ o      ���� 0 
this_index    l   ��������  ��  ��    l   ��	��      Go through the whole list   	 �

 4   G o   t h r o u g h   t h e   w h o l e   l i s t  Y    ����� k   " ~  r   " , n   " * 4   ' *��
�� 
cobj o   ( )���� 0 current_index   o   " '���� 0 search_list   o      ���� 0 
this_value    l  - -��������  ��  ��    l  - -����   / ) Compare previous and current differences    � R   C o m p a r e   p r e v i o u s   a n d   c u r r e n t   d i f f e r e n c e s   r   - 4!"! c   - 2#$# \   - 0%&% o   - .���� 0 search_value  & o   . /���� 0 
this_value  $ m   0 1��
�� 
long" o      ���� 0 current_difference    '(' r   5 <)*) c   5 :+,+ \   5 8-.- o   5 6���� 0 
this_value  . o   6 7���� 0 previous_value  , m   8 9��
�� 
long* o      ���� 0 previous_difference  ( /0/ l  = =��������  ��  ��  0 121 Z  = K34����3 A   = @565 o   = >���� 0 current_difference  6 m   > ?����  4 r   C G787 d   C E99 o   C D���� 0 current_difference  8 o      ���� 0 current_difference  ��  ��  2 :;: Z  L Z<=����< A   L O>?> o   L M���� 0 previous_difference  ? m   M N����  = r   R V@A@ d   R TBB o   R S���� 0 previous_difference  A o      ���� 0 previous_difference  ��  ��  ; CDC l  [ [��������  ��  ��  D EFE l  [ [��GH��  G K E If the current difference is less than the previous, use the current   H �II �   I f   t h e   c u r r e n t   d i f f e r e n c e   i s   l e s s   t h a n   t h e   p r e v i o u s ,   u s e   t h e   c u r r e n tF JKJ Z   [ rLM��NL l  [ ^O����O A   [ ^PQP o   [ \���� 0 current_difference  Q o   \ ]���� 0 previous_difference  ��  ��  M k   a hRR STS r   a dUVU o   a b���� 0 current_difference  V o      ���� 0 this_difference  T W��W r   e hXYX o   e f�� 0 current_index  Y o      �~�~ 0 
this_index  ��  ��  N k   k rZZ [\[ r   k n]^] o   k l�}�} 0 previous_difference  ^ o      �|�| 0 this_difference  \ _�{_ r   o r`a` o   o p�z�z 0 previous_index  a o      �y�y 0 
this_index  �{  K bcb l  s s�x�w�v�x  �w  �v  c ded l  s s�ufg�u  f / ) If we're within the range, exit the loop   g �hh R   I f   w e ' r e   w i t h i n   t h e   r a n g e ,   e x i t   t h e   l o o pe i�ti Z   s ~jk�s�rj l  s vl�q�pl A   s vmnm o   s t�o�o 0 this_difference  n o   t u�n�n 0 valid_range  �q  �p  k  S   y z�s  �r  �t  �� 0 current_index   m    �m�m  I   �lo�k
�l .corecnte****       ****o o    �j�j 0 search_list  �k  ��   pqp l  � ��i�h�g�i  �h  �g  q rsr l  � ��ftu�f  t 4 . Return the closest difference, and the offset   u �vv \   R e t u r n   t h e   c l o s e s t   d i f f e r e n c e ,   a n d   t h e   o f f s e ts wxw L   � �yy J   � �zz {|{ o   � ��e�e 0 this_difference  | }�d} o   � ��c�c 0 
this_index  �d  x ~�b~ l  � ��a�`�_�a  �`  �_  �b  ��       �^��������������������^   �]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�] 0 
timestamps  �\ 0 	latitudes  �[ 0 
longitudes  �Z 0 search_list  �Y 0 find_db_file  �X 0 	db_to_csv  �W 0 plist_to_csv  �V 0 replace_chars  �U 0 text_between  �T 0 read_csv  �S 0 apple_read_file  �R 0 date_to_timestamp  �Q 0 timestamp_to_date  �P 0 
get_photos  �O 0 get_photo_properties  �N 0 set_location  �M 0 binary_search  �L 0 sequential_search  
�K .aevtoappnull  �   � ****� �J�I�J  �I  � �H�G�H  �G  � �F�E�F  �E  � �D�C�D  �C  � �B��A�@���?�B 0 find_db_file  �A �>��> �  �=�<�= 0 	home_path  �< 0 
table_name  �@  � �;�:�9�8�7�6�; 0 	home_path  �: 0 
table_name  �9 0 backup_folder  �8 0 backup_foldername  �7 0 db_file  �6 0 error_message  � ����5�4��3�2�18�0W
�5 .sysoexecTEXT���     TEXT
�4 
cwor�3 0 error_message  �2  
�1 
nmbr�0���? c��%E�O�%�%j �i/E�O��%E�O�E�Okn �%�%�%�%j E�W 
X 	 
�E�oO��-�,l �Y hO���/E�O��%�%E�O�� �/l�.�-���,�/ 0 	db_to_csv  �. �+��+ �  �*�)�(�* 0 db_file  �) 0 
this_table  �( 0 destination_file  �-  � �'�&�%�' 0 db_file  �& 0 
this_table  �% 0 destination_file  � �����$�#�"�
�$ .sysoexecTEXT���     TEXT�#  �"  �,  �%�%�%�%�%�%j W 	X  �� �!�� �����! 0 plist_to_csv  �  ��� �  ��� 0 
plist_file  � 0 destination_file  �  � ��� 0 
plist_file  � 0 destination_file  � ��������� 0 replace_chars  
� .sysoexecTEXT���     TEXT� )���m+ E�O�%�%�%�%�%j � �������� 0 replace_chars  � ��� �  ���� 0 	this_text  � 0 search_string  � 0 replacement_string  �  � ����� 0 	this_text  � 0 search_string  � 0 replacement_string  � 0 	item_list  � �
�	�� 
�
 
ascr
�	 
txdl
� 
citm
� 
TEXT� !���,FO��-E�O���,FO��&E�O���,FO�� ������� 0 text_between  � ��� �  �� ��� 0 	this_text  �  0 
start_text  �� 0 end_text  �  � ���������� 0 	this_text  �� 0 
start_text  �� 0 end_text  �� 0 return_text  � +��������EZ����b
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT��  ��  � Y�E�O D�� ���,FO�[�\[Zl\62�&E�Y �E�O�� ���,FO��k/�&E�O���,FY hW X  	hO���,FO�� ��t���������� 0 read_csv  �� ����� �  ���� 0 	this_file  ��  � �������������������������������������������������� 0 	this_file  �� 0 consolidateddb  �� 0 number_lines  �� 0 max_timestamp  �� 0 min_date  �� 0 min_timestamp  �� 0 current_line  �� 0 	this_line  �� 0 
line_items  �� 0 mcc  �� 0 mnc  �� 0 lac  �� 0 ci  �� 0 	timestamp  �� 0 latitude  �� 0 	longitude  �� 0 horizontalaccuracy  �� 0 altitude  �� 0 verticalaccuracy  �� 	0 speed  �� 
0 course  �� 0 
confidence  �� 0 	this_item  �� 0 na  � "�����������������������������������������������}���������� 0 apple_read_file  
�� 
cpar
�� .corecnte****       ****
�� .misccurdldt    ��� null�� 0 date_to_timestamp  
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
�� �� �� 
�� 
kocl
�� 
long
�� 
bool�� 0 text_between  
�� 
nmbr���jvEc   OjvEc  OjvEc  O)�k+  E�O��-j E�O�kE�O)*j k+ E�O�E�O)�k+ E�O�k�kh ��/E�O��-j kg�� ����,FO��-E�O���,FO�E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�Z[�a /E�Z[�a /E�Z[�a /E^ Z[�a /E^ Z[�a /E^ Z[�a /E^ Z[�a /E^ Z[�a /E^ ZO�� E ?�[a �l kh ] a &E^ O] �	 ] �a & 
] E�Y h[OY��Y hOPY hO�a  O)�a a m+ E�Oa ��,FO��-E[�k/E�Z[�l/E�Z[�m/E^ Z[��/E^ Z[��/E�ZOa  ��,FY hO�a !&b   6FO�a !&b  6FO�a !&b  6FOPY h[OY��Ob   j � ������������� 0 apple_read_file  �� ����� �  ���� 0 	this_file  ��  � ������ 0 	this_file  �� 0 	file_text  � ������
�� .rdwropenshor       file
�� .rdwrread****        ****
�� .rdwrclosnull���     ****�� �j  O�j E�O�j O�� ������������ 0 date_to_timestamp  �� ����� �  ���� 0 	this_date  ��  � �������� 0 	this_date  �� 0 
unix_start  �� 0 	timestamp  � ��
�� 
ldt �� �E�O�*�/E�O�� ��6���������� 0 timestamp_to_date  �� ����� �  ���� 0 	timestamp  ��  � �������� 0 	timestamp  �� 0 
unix_start  �� 0 	this_date  � C��
�� 
ldt �� �E�O*�/�E�O�� ��e���������� 0 
get_photos  �� ����� �  ������ 0 this_application  �� 0 
start_date  ��  � �������� 0 this_application  �� 0 
start_date  �� 0 these_photos  � z�����������������
�� 
ipmr�  
�� 
idat
�� 
rklb
�� 
rkdp
�� 
rkex
�� 
rkvl�� LjvE�O��  � *�-�[�,\Z�;1E�OPUY hO��  � *�k/�-�[��/�,\Z�;1E�UY hO�� ������������� 0 get_photo_properties  �� ����� �  �������� 0 this_application  �� 0 
start_date  �� 0 these_photos  ��  � ����������������� 0 this_application  �� 0 
start_date  �� 0 these_photos  �� 0 photo_names  �� 0 photo_dates  �� 0 photo_latitudes  �� 0 
this_photo  � 0 
photo_date  � �~�	3�}�|��{�z�y�x	*�w	0�v�u�t	B	��s�r�q	\�p	s�o�n	��m	�	�	�
�~ 
cobj
�} 
ipmr
�| 
pnam
�{ 
idat
�z 
lati�y  �x  
�w 
btns
�v 
dflt�u 
�t .sysodlogaskr        TEXT
�s 
rklb
�r 
rkdp
�q 
rkex
�p 
rkvl
�o 
kocl
�n .corecnte****       ****
�m 
rkla��@jvjvjvmvE[�k/E�Z[�l/E�Z[�m/E�ZO��  R� J*�-�,�[�,\Z�;1E�O*�-�,�[�,\Z�;1E�O *�-�,�[�,\Z�;1E�W X  	���kv�k� UY hO�a   �a  �*a k/a -�,�[a a /a ,\Z�;1E�O*a k/a -�[a a /a ,\Z�;1E�OjvE�O )�[a �l kh �a a /a ,E�O��6F[OY��O '*a k/a -a ,�[a a /a ,\Z�;1E�W X  	a �a kv�k� OPUY hO���mv� �l	��k�j���i�l 0 set_location  �k �h��h �  �g�f�e�d�g 0 this_application  �f 0 
this_photo  �e 0 this_latitude  �d 0 this_longitude  �j  � �c�b�a�`�c 0 this_application  �b 0 
this_photo  �a 0 this_latitude  �` 0 this_longitude  � 	�	��_�^

�]�\
�_ 
lati
�^ 
lngt
�] 
rkla
�\ 
rklo�i 6��  � ���,FO���,FUY hO��  � ���,FO���,FUY h� �[
�Z�Y���X�[ 0 binary_search  �Z �W��W �  �V�U�T�V 0 
this_value  �U 0 start_index  �T 0 	end_index  �Y  � 
�S�R�Q�P�O�N�M�L�K�J�S 0 
this_value  �R 0 start_index  �Q 0 	end_index  �P 0 middle_index  �O 0 middle_value  �N 0 this_difference  �M 0 	end_value  �L 0 start_value  �K 0 start_difference  �J 0 end_difference  � �I�H�G�F
�I 
long
�H 
cobj
�G 
nmbr�F 0 binary_search  �X ����l!�&E�Ob  �/E�O��  jE�O��lvY hO��k  @b  �/E�Ob  �/E�O���&E�O���&E�O�� 
��lvY ��lvOPY hO�� )���m+ Y )���m+ OP� �E
��D�C���B�E 0 sequential_search  �D �A��A �  �@�?�@ 0 search_value  �? 0 valid_range  �C  � 
�>�=�<�;�:�9�8�7�6�5�> 0 search_value  �= 0 valid_range  �< 0 previous_value  �; 0 previous_index  �: 0 this_difference  �9 0 
this_index  �8 0 current_index  �7 0 
this_value  �6 0 current_difference  �5 0 previous_difference  � �4�3�2
�4 .corecnte****       ****
�3 
cobj
�2 
long�B �jE�OiE�OiE�OiE�O rkb  j  kh b  �/E�O���&E�O���&E�O�j 	�'E�Y hO�j 	�'E�Y hO�� �E�O�E�Y 	�E�O�E�O�� Y h[OY��O��lvOP� �1��0�/���.
�1 .aevtoappnull  �   � ****� k    ���  ��  2��  C��  W��  \��  x��  ���  ��� �� �� )�� 7�� @�� Y�� y�� ��� ��� ��� 
�� &�� 2�� :�� J�� ]�� {�� ��-�-  �0  �/  � �,�+�, 0 this_application  �+ 0 current_photo  � }�*�) ;�(�'�& K N�%�$�#�"�!�  �� � � ������ � �� � � �� ������.�������ap�������
���	����������� Udnq����������������������������������LNPR������������������������������������������������
�* .misccurdldt    ��� null�) 0 
start_time  
�( 
prcs
�' 
pnam�& 0 open_applications  �% 0 compatible_apps  �$ 0 these_applications  
�# 
kocl
�" 
cobj
�! .corecnte****       ****
�  
TEXT
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
bhit� 0 ask_applications  
� .miscactvnull��� ��� null
� 
capp
� 
ascr
� 
txdl� 0 applications_alert  
� 
givu� � 0 
table_name  
� afdrcusr
� .earsffdralis        afdr
� 
psxp� 0 	home_path  � 0 find_db_file  � 0 db_file  
� .sysostdfalis    ��� null�
 0 cell_location_file  �	 0 plist_to_csv  � 0 	db_to_csv  � 0 
file_found  � 0 read_csv  � 0 number_timestamps  
� .sysoexecTEXT���     TEXT� 0 photos_tagged  � 0 start_timestamp  � 0 timestamp_to_date  �  0 
start_date  �� 0 
get_photos  �� 0 these_photos  �� 0 number_photos  ����� 	
�� 
long�� 0 estimated_runtime  �� 0 
last_alert  �� 0 get_photo_properties  �� 0 photo_names  �� 0 photo_dates  �� 0 photo_latitudes  �� 0 next_check_date  
�� 
min �� 0 
alert_mins  �� 0 current_runtime  �� 0 progress_text  �� 0 
this_photo  �� 0 
photo_name  
�� 
ldt �� 0 
photo_date  �� 0 photo_latitude  �� 0 date_to_timestamp  �� 0 photo_timestamp  �� <�� �� 0 valid_range  �� 0 sequential_search  �� 0 this_difference  �� 0 
this_index  �� 0 this_latitude  �� 0 this_longitude  �� 0 set_location  �� 0 end_time  �� 0 runtime  �� 0 number_tagged  �� 0 response_text  �.�*j  E�O� 	*�-�,E�UO��lvE�OjvE�O .�[��l kh  Š Ƞ ��&�6FY hY h[OY��O�j j  ���a a a mva ma  a ,E` O_ a   )a  *j UOa  *j UOa a lvE�Y A*a _ / *j UO ,_ [��l kh  ��&E�OȠ ��&�6FY h[OY��Y hOa _  a !,FO��&E` "Oa #_  a !,FOa $_ "%a %a &l Oa 'E` (Oa )j *a +,E` ,O)_ ,_ (l+ -E` .O_ .a /  a 0j 1a +,E` .Y hO_ .a 2  a 3�a 4kva ka  Y hO_ ,a 5%_ (%a 6%E` 7O_ .a 8 _ ,a 9%E` 7O)_ ._ 7l+ :Y A)_ ._ (_ 7m+ ;E` <O_ <a =  #a >j 1a +,E` .O)_ ._ (_ 7m+ ;Y hO)_ 7k+ ?E` @Oa A_ 7%a B%j COjvE` DOb   �k/E` EO)_ Ek+ FE` GO_ G*j   a HE` GY hOa I_ G�&%�a Ja Klva la  O~�[��l kh  ��&E�O)�_ Gl+ LE` MO_ Mj E` NO_ Na O!a P a Q&E` RO*j Oa S_ R%a T%a %a &l O*j  E` UO)�_ G_ Mm+ VE[�k/E` WZ[�l/E` XZ[�m/E` YZO_ GE` ZOzk_ Nkh *j  _ U_ [!a Q&E` \O_ \a &  T*j  �_ [!a Q&E` ]Oa ^_ ]%a _%�%a `%_ N%a a%E` bO*j O_ ba %a &l O*j  E` UY hO_ M�/E` cO_ W�/�&E` dO_ X�/a e&E` fO_ Y�/�&E` gO)_ fk+ hE` iO_ Z_ f �_ ga j  �a ka k a l E` mOb   Ec  O)_ i_ ml+ nE[�k/E` oZ[�l/E` pZOb  �_ p/E` qOb  �_ p/E` rO_ o_ m ))�_ c_ q_ ra + sO_ d_ D6FO_ GE` ZOPY _ GE` ZOPOPY hOPY hOP[OY��O*j  E` tO_ t�_ [!a Q&E` uO_ Dj E` vOa w_ v%a x%_ N%a y%_ u%a z%�%a {%E` |O*j O_ |a %a &l OP[OY��O_ |ascr  ��ޭ