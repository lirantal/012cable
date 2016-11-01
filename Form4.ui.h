/****************************************************************************
** ui.h extension file, included from the uic-generated form implementation.
**
** If you want to add, delete, or rename functions or slots, use
** Qt Designer to update this file, preserving your code.
**
** You should not define a constructor or destructor in this file.
** Instead, write your code in functions called init() and destroy().
** These will automatically be called by the form's constructor and
** destructor.
*****************************************************************************/
#include <unistd.h>
#include <qmessagebox.h>

void Form4::doInstall()
{
    // Checking if user is root for saving changes...
 if (getuid() != 0) {
             QMessageBox::information ( this, "Error", "You're not root! Most probably changes will not be saved!\n" "/etc/ppp/012cable.conf has been modified!");
  }  
 
    system("cp -f internet-up.sh internet-down.sh internet-gui internet-setup pptp-linux /usr/bin");
    
    system("for userdir in `dir /home/`; do echo -e '[Desktop Entry]\nEncoding=UTF-8\nType=Application\nExec=gksu -c internet-gui\nName[en_US]=internet' > /home/${userdir}/Desktop/internet.desktop; done");
    
}
