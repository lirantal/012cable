/**************************let me**************************************************
** ui.h extension file, included from the uic-generated form implementation.
**
** If you wish to add, delete or rename functions or slots use
** Qt Designer which will update this file, preserving your code. Create an
** init() function in place of a constructor, and a destroy() function in
** place of a destructor.
*****************************************************************************/

#include <unistd.h>
#include <fstream>
#include "Form2.h"
#include "Form3.h"
#include "Form4.h"
#include <qmessagebox.h>

void Form1::menuInstall()
{
    // Opening the install dialog
    
    Form4 * dialog = new Form4(this);
    dialog->exec();
    
    // Once dialog window recieves the exit click we kill it.
    delete dialog;
}


void Form1::init()
{
    // Checking if the files we need exist system-wide
    FILE *fp, *fp_conf;
    fp = fopen("/usr/bin/netil-up.sh", "r");
    if (fp == NULL) {
	printf("\nerror: file /usr/bin/netil-up.sh does not exist\n");
	QMessageBox::information(this, "Error", "I couldn't find /usr/bin/netil-up.sh... \n \
				 You're probably running this application for the first time \n \
				 (or removed the file(s)). I'll attempt to copy it again \
				 \nfrom the current directory");
//	system("cp netil-up.sh /usr/bin/netil-up.sh");
	fclose (fp);
    } else {
	fclose (fp);
    }
    
    fp = fopen("/usr/bin/netil-down.sh", "r");
    if (fp == NULL) {
	printf("\nerror: file /usr/bin/netil-down.sh does not exist\n");
	QMessageBox::information(this, "Error", "I couldn't find /usr/bin/netil-down.sh... \n \
				 You're probably running this application for the first time \n \
				 (or removed the file(s)). I'll attempt to copy it again \
				 \n from the current directory");
//	system("cp -f netil-down.sh /usr/bin/netil-down.sh");
//	system("cp -f netil-down.sh /usr/bin/netil-down.sh");
	fclose (fp);
    } else {
	fclose (fp);
    }
    
    fp = fopen("/usr/bin/pptp-linux", "r");
    if (fp == NULL) {
	printf("\nerror: file /usr/bin/pptp-linux does not exist\n");
	QMessageBox::information(this, "Error", "I couldn't find /usr/bin/pptp-linux... \n \
				 You're probably running this application for the first time \n \
				 (or removed the file(s)). I'll attempt to copy it again \
				 \nfrom the current directory");
//	system("cp -f pptp-linux /usr/bin/pptp-linux");
	fclose (fp);
    } else {
	fclose (fp);
    }

    fp = fopen("/etc/ppp/012cable.conf", "r");
    if (fp == NULL) {
	printf("\nerror: file /etc/ppp/012cable.conf does not exist\n");
	fclose (fp);
    }
}



void Form1::menuConnectionSettings()
{
    
    // Opening the new window for connection settings...
    
    Form2 * dialog = new Form2(this);
    dialog->exec();
    
    // Once dialog window recieves the exit click we kill it.
    delete dialog;

}


void Form1::menuAbout()
{

    // Opening the about window dialog
    
    Form3 * dialog = new Form3(this);
    dialog->exec();
    
    // Once dialog window recieves the exit click we kill it.
    delete dialog;
}


void Form1::doDisconnect()
{
    system("netil-down.sh");
    QMessageBox::information(this, "Success", "I do think we're disconnected now...");
}


void Form1::doConnect()
{
    system("netil-up.sh");
    QMessageBox::information(this, "Success", "(Assuming all went as plan) you should be connected now");

    
}

