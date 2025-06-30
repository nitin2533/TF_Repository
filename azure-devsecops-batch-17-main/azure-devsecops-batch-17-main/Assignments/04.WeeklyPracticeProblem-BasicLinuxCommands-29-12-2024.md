### Assignment: Linux Basic Commands  
*Ek Prem Kahani ke Zariye Sikhe Linux Commands*

#### Kahani:  
Ek bar ki baat hai, Banti ne Babli ke liye ek love letter likhna tha. Lekin ye letter usne Linux terminal ka use karke banaya. Chaliye, is prem kahani ke zariye kuch basic Linux commands ke baare me seekhte hain. Har step par commands ka example bhi diya gaya hai. 

---

### Tasks aur Unke Commands  

1. **Login User aur Current Directory Check karna**  
   Banti ne sabse pehle terminal khola aur ye check kiya ki kis user se login kiya hai aur kaunsi directory me hai.  
   - User check karne ke liye:  
     ```bash
     whoami
     ```  
   - Current directory check karne ke liye:  
     ```bash
     pwd
     ```  

2. **Naya Folder Banana**  
   Love letter rakhne ke liye Banti ne ek naya folder `mera_pehla_pyaar` banaya.  
   - Folder banane ka command:  
     ```bash
     mkdir mera_pehla_pyaar
     ```  

3. **Folder ke Andar Jaana**  
   Banti folder ke andar gaya:  
   ```bash
   cd mera_pehla_pyaar
   ```  

4. **File Banana aur Edit Karna**  
   Banti ne ek file banayi `loveletter.txt` naam ki aur nano editor me love letter likha.  
   - File banane ka command:  
     ```bash
     touch loveletter.txt
     ```  
   - File edit karne ke liye nano ka use kiya:  
     ```bash
     nano loveletter.txt
     ```  
   - Save aur exit ke liye:  
     - **Ctrl + S** se save kiya  
     - **Ctrl + X** se exit  

5. **File ka Backup Create Karna**  
   Banti ne apne love letter ka ek backup banaya.  
   - Backup command:  
     ```bash
     cp loveletter.txt backup_loveletter.txt
     ```  

6. **File ko Ek Naye Folder Me Move Karna**  
   Jab Babli ke papa ko location ka pata chala, toh Banti ne ek aur folder banaya aur file waha move kar di.  
   - Naya folder banana:  
     ```bash
     mkdir secret_place
     ```  
   - File move karna:  
     ```bash
     mv loveletter.txt secret_place/
     ```  

7. **Text Me Specific Word Dhundhna (grep Command)**  
   Jab Babli ne puchha ki love letter me kitni baar "janu" likha hai, toh Banti ne grep command ka use kiya.  
   - Command:  
     ```bash
     grep -n "janu" secret_place/loveletter.txt
     ```  
   - Ye command batata hai "janu" kis line par hai aur kitni baar hai.  

8. **File aur Folder Delete Karna**  
   Breakup ke baad Banti ne gusse me file aur folder delete kar diya.  
   - File delete karne ka command:  
     ```bash
     rm secret_place/loveletter.txt
     ```  
   - Folder delete karne ka command (agar folder khali hai):  
     ```bash
     rmdir secret_place
     ```  
   - Folder delete karne ka command (agar folder khali nahi hai):  
     ```bash
     rm -r mera_pehla_pyaar
     ```  

9. **Parent Directory Me Wapas Jana**  
   Jab bhi zarurat padti, Banti parent directory me wapas jaata.  
   - Command:  
     ```bash
     cd ..
     ```  

---

### Assignment ke Questions:  
1. **Terminal Commands likho jo aapka user aur current directory bataye.**  
2. Ek folder `my_folder` banao aur usme ek file `my_file.txt` create karo.  
3. Nano editor ka use karke `my_file.txt` me ek message likho aur save karke exit karo.  
4. `my_file.txt` ka ek backup `backup_my_file.txt` naam se banao.  
5. `grep` ka use karke `backup_my_file.txt` me ek specific word dhundho (aapka pasandida shabd).  
6. Ek naya folder `new_location` banao aur `my_file.txt` ko waha move karo.  
7. `new_location` folder aur uski file ko delete karo.  

---

### Note:  
Ye assignment aap Killerkoda Ubuntu Playground ya kisi bhi Linux terminal me practice kar sakte ho. Har ek command ka output zarur dekho aur samjho. 

**Happy Learning!** 😊