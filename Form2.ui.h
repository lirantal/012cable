/****************************************************************************
** ui.h extension file, included from the uic-generated form implementation.
**
** If you wish to add, delete or rename functions or slots use
** Qt Designer which will update this file, preserving your code. Create an
** init() function in place of a constructor, and a destroy() function in
** place of a destructor.
*****************************************************************************/

#include <cstdio>
#include <fstream>
#include <iostream>
#include <vector>
#include <string>
#include <unistd.h>
#include <qmessagebox.h>
                                                                                                                                              
using namespace std;
std::vector<std::string> word (15);


void Form2::init()
{
   
    static const char* items[] = { "012Net", "green", "blue", 0 };
    ispCombo->insertStrList( items );
    
    ifstream fp("/etc/ppp/netil.conf");                                                                                  
    fp >> word[0] >> word[1] >> word[2] >> word[3] >> word[4] >> word[5] >> word[6];
    lblEth->setText(word[0]);
    lblDNS1->setText(word[1]);
    lblDNS2->setText(word[2]);
    usernameInpt->setText(word[3]);
    passwordInpt->setText(word[4]);
    setReconnectChk->setChecked( QString (word[5]).toInt() );
    setBootChk->setChecked( QString (word[6]).toInt() );
   
}

void Form2::savesettings()
{  
     // Checking if user is root for saving changes...
    if (getuid() != 0) {
	QMessageBox::information ( this, "Error", "You're not root! Most probably changes will not be saved!\n" "/etc/ppp/netil.conf has been modified!");
    }
    
    
    QString eth_set = lblEth->text();
    QString pri_dns = lblDNS1->text();
    QString sec_dns = lblDNS2->text();
    QString username_set = usernameInpt->text();
    QString password_set = passwordInpt->text();
    ofstream fp("/etc/ppp/netil.conf");                                                                  
    fp << (const char *)eth_set << endl;
    fp << (const char *)pri_dns << endl;
    fp << (const char *)sec_dns << endl;
    fp << (const char *)username_set << endl;	
    fp << (const char *)password_set << endl;
    if (setReconnectChk->isChecked()) {
	fp << "1" << endl;
	system("echo -e '\nsleep 2\n netil-up.sh' >> /etc/ppp/ip-down");
    } else {
	fp << "0" << endl; 
    }
    if (setBootChk->isChecked()) {
	fp << "1" << endl;
    } else {
	fp << "0" << endl; 
    }
 
 
    QMessageBox::information ( this, "Saving", "Settings has been saved\n"
      "/etc/ppp/netil.conf has been modified!");
    
     QString authentication_proto = QString("%1  %2 %3").arg(usernameInpt->text()).arg(lblEth->text()).arg(passwordInpt->text());
       ofstream fp_pap("/etc/ppp/pap-secrets");
         fp_pap << (const char *)authentication_proto << endl;
  
       ofstream fp_chap("/etc/ppp/chap-secrets");
         fp_chap << (const char *)authentication_proto << endl;

}


 void Form2::set()
 {
     QString setisp = ispCombo->currentText();
     if ( setisp == "012Net") {
	 //blablabla
	 lblEth->setText("cablepns.012.net.il");
	 lblDNS1->setText("212.117.129.3");
	 lblDNS2->setText("212.177.128.6");
     }
 
}
