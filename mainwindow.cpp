#include "mainwindow.h"
#include "ui_mainwindow.h"

//#define QT3_SUPPORT
//#include "main_form.h"
//#include <qmultilineedit.h>
#include <qtextedit.h>
//#include <qprogressbar.h>
//#include <qtimer.h>
//#include <qapplication.h>
#include <qmessagebox.h>
//#include <qstringlist.h>

//#include <stdio.h>
#include <unistd.h>
//#include <stdlib.h>
//#include <sys/types.h>
//#include <sys/stat.h>
//#include <sys/ioctl.h>
#include <fcntl.h>
//#include <linux/fs.h>
//#include <errno.h>
//#include <string.h>
#include <termio.h>
#include <qlcdnumber.h>
//#include <cctype>
#include <qlabel.h>
#include <cstring>
#include <stdio.h>

#include <qlineedit.h>
#include <qcheckbox.h>
#include <qpushbutton.h>
#include <qfiledialog.h>

#include <qfileinfo.h>

#include <qdir.h>
#include <qfile.h>

#include <time.h>
#include <sys/time.h>


class QFileDialog;
/*QPushButton *m_connectButton;
QPushButton *m_disconnectButton;
QPushButton *m_sendButton;
QCheckBox *m_enableLoggingCb;
QPushButton *m_logFileFileDialog;
QLineEdit *m_logFileLe;
QTextEdit *m_sendEdit;
QTextEdit *m_receiveEdit;
*/
struct tm tmnow;
struct timeval st;

QString time_stamp;
QString time_stamp_list;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),m_notifier(0),m_fileDlg(0)
{
    ui->setupUi(this);
    m_fd=-1;
    connect(ui->m_connectButton, SIGNAL(clicked()), this, SLOT(ConnectButtonClicked()));
    connect (ui->m_disconnectButton,SIGNAL(clicked()),this,SLOT(DisconnectButtonClicked()));

    connect(ui->m_sendButton, SIGNAL(clicked()), this, SLOT(sendButtonClicked()));
    //connect (m_logFileFileDialog,SIGNAL(clicked()),this,SLOT(chooseLogFile()));
      connect(ui->m_enableLoggingCb, SIGNAL(toggled(bool)), this, SLOT(enableLogging(bool)));
      connect (ui->m_logFileFileDialog,SIGNAL(clicked()),this,SLOT(chooseLogFile()));
      ui->m_receiveEdit->setWordWrapMode(QTextOption::WrapAnywhere);
      ui->m_receiveEdit->document()->setMaximumBlockCount(500);


      gettimeofday(&st, NULL);

      time_stamp_list=time_stamp.setNum(tmnow.tm_year+1900);
      time_stamp_list+=("_");
      time_stamp_list+=time_stamp.setNum(tmnow.tm_mon+1);
      time_stamp_list+=("_");
      time_stamp_list+=time_stamp.setNum(tmnow.tm_mday);
      time_stamp_list+=("_");
      time_stamp_list+=time_stamp.setNum(tmnow.tm_hour);
      time_stamp_list+=("_");
      time_stamp_list+=time_stamp.setNum(tmnow.tm_min);
      time_stamp_list+=("_");
      time_stamp_list+=time_stamp.setNum(tmnow.tm_sec);
      time_stamp_list+=("_");
      time_stamp_list+=time_stamp.setNum(st.tv_usec);
      QString file_store_name("/media/mmcblk0/cutecom");
      file_store_name+=time_stamp_list;
      file_store_name+=(".log");
        ui->m_logFileLe->setText(file_store_name);


//      ui->m_logFileLe->setText("/media/mmcblk0/cutecom.log");
      enableLogging(0);
      enableLogging(1);
      ConnectButtonClicked();


}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::ConnectButtonClicked()
{
    if (m_fd >= 0)
      return;
    m_fd = openSerialPort();
    if (m_fd < 0) {
        QMessageBox::warning(this, tr("Error"), tr("Fail to open serial port!"));
        return ;
    }
    tcflush(m_fd,TCIOFLUSH);
    m_notifier = new QSocketNotifier(m_fd, QSocketNotifier::Read, this);
    connect (m_notifier, SIGNAL(activated(int)), this, SLOT(remoteDataIncoming()));
    //connect (TMainForm->TMainFormBase->m_enableLoggingCb,SIGNAL(toggled(bool)),this,SLOT(remoteDataIncoming()));
    //connect (this->m_enableLoggingCb,SIGNAL(toggled(bool)),this,SLOT(remoteDataIncoming()));






}

void MainWindow::DisconnectButtonClicked()
{
    if (m_notifier) {
        delete m_notifier;
        m_notifier = 0;
    }

    if (m_fd >= 0) {
      tcflush(m_fd,TCIOFLUSH);
        ::close(m_fd);
        m_fd = -1;
    }
}

void MainWindow::sendButtonClicked()
{
  // QString text( m_sendEdit->text() );
 //   QString text("nihao\nls\nroot\n");
    QString text("nihao\n");
    if (text.isEmpty()) {
        return ;
    }
    ::write(m_fd, text.toLatin1(), text.length());
    ui->m_sendEdit->setText("");
}


int MainWindow::openSerialPort()
{
    int fd = -1;

    const char *devName = "/dev/ttyO1";
//    const char *devName = "/dev/ttyUSB0";
    fd = ::open(devName, O_RDWR&~O_NONBLOCK);
    //fd = ::open(devName, O_RDWR|O_NONBLOCK);
    if (fd < 0) {
        return -1;
    }

    termios serialAttr;
    memset(&serialAttr, 0, sizeof serialAttr);
    serialAttr.c_iflag = IGNPAR;
    serialAttr.c_cflag = B115200 | HUPCL | CS8 | CREAD | CLOCAL;
    serialAttr.c_cc[VMIN] = 143;//144
    if (tcsetattr(fd, TCSANOW, &serialAttr) != 0) {
        return -1;
    }
    //tcflush(fd,TCIOFLUSH);
    return fd;
}


void MainWindow::remoteDataIncoming()
{
    char buff[2*(66+49+29)+30];
    //char buff_array[2*(66+49+29)+30];
    //char *buff=buff_array;
    QString buff_time;
    const QString STR_GGA("NVGGA,");
   //-gm-d const QString STR_GGA("u");
    const char DOUHAO(',');
    //QString test_str("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n");
    //QString s2;
    QString buff_location_N;
    QString buff_location_E;
    //int index_t;
    int index_start;
    int index_end;
    //int time_adjust;
    //unsigned char time_hour;
    int time_hour;
    QString adjust_hour;

//    char* time_stamp;


/*    if (NULL != localtime_r(&st.tv_sec, &tmnow))
    {
            printf(time_stamp,
                    "current time = %04d/%02d/%02d, %02d:%02d:%02d,(microsec: %06d)\n",
                    tmnow.tm_year+1900,tmnow.tm_mday,tmnow.tm_mon+1,
                    tmnow.tm_hour,tmnow.tm_min,tmnow.tm_sec,
                    st.tv_usec
            );
    }
*/
    int bytesRead=read(m_fd, buff, 2*(66+49+29));
    if (bytesRead<1) {
        QMessageBox::warning(this, tr("Error"), tr("Receive error!"));
        return;
    }

    if (m_logFile.isOpen())
    {
       m_logFile.write(buff, bytesRead);
    }

    QString buff_qs(buff);

    ui->m_receiveEdit->append(buff_qs);
    ui->m_receiveEdit->append(QString("\n@@@@@@@@@@@@@@@@@@@@\n"));

    gettimeofday(&st, NULL);

    time_stamp_list=time_stamp.setNum(tmnow.tm_year+1900);
    time_stamp_list+=("_");
    time_stamp_list+=time_stamp.setNum(tmnow.tm_mon+1);
    time_stamp_list+=("_");
    time_stamp_list+=time_stamp.setNum(tmnow.tm_mday);
    time_stamp_list+=("_");
    time_stamp_list+=time_stamp.setNum(tmnow.tm_hour);
    time_stamp_list+=("_");
    time_stamp_list+=time_stamp.setNum(tmnow.tm_min);
    time_stamp_list+=("_");
    time_stamp_list+=time_stamp.setNum(tmnow.tm_sec);
    time_stamp_list+=("_");
    time_stamp_list+=time_stamp.setNum(st.tv_usec);

    ui->m_receiveEdit->append(time_stamp_list);
  ui->m_receiveEdit->append(QString("\n**********************\n"));
    index_start=buff_qs.indexOf(STR_GGA);
    if(((buff_qs.length()-42)>=index_start)&&(index_start>=0)&&(buff_qs.length()>=42)){   //num=15
 //gm-d   if(buff_qs.length()>=1){
      index_end=buff_qs.indexOf(DOUHAO,index_start+6);
      buff_time=buff_qs.mid(index_start+6,index_end-index_start-6);
       QChar qc_hour_h,qc_hour_l;
       qc_hour_h=QChar(buff_qs[index_start+7]);
       qc_hour_l=QChar(buff_qs[index_start+6]);

      //time_hour=uchar(QChar(buff_qs[index_start+7]))+uchar(QChar(buff_qs[index_start+6]))*10+8;
      time_hour=qc_hour_h.digitValue()+(qc_hour_l.digitValue())*10+8;
      //time_adjust+=int(buff_qs[index_start+6])*10+8;
      time_hour%=24;
      adjust_hour.setNum(time_hour);
      buff_time.remove(0,2);
      buff_time.insert(0,adjust_hour);
      //time_hour=time_adjust;
      //buff_time[0]=char(time_adjust/10);
      //buff_time[1]=char(time_adjust%10);
      //buff_time.insert(0,'4');
     // buff_time.insert(0,time_hour);
      //buff_time.insert(0,char(time_adjust%10));
      //buff_time.insert(0,char(time_adjust/10));
        //buff_time.insert(0,time_hour%10);
        //buff_time.insert(0,time_hour/10);
      index_start=index_end+1;
      index_end=buff_qs.indexOf(DOUHAO,index_start);
      buff_location_N=buff_qs.mid(index_start,index_end-index_start);
     // buff_location_N+=char(QChar(buff_qs[index_end+1]));
      ui->m_label_N->setText(QString(QChar(buff_qs[index_end+1])));
      index_start=index_end+3;
      index_end=buff_qs.indexOf(DOUHAO,index_start);
      buff_location_E=buff_qs.mid(index_start,index_end-index_start);
      //buff_location_E+=char(QChar(buff_qs[index_end+1]));
      ui->m_label_E->setText(QString(QChar(buff_qs[index_end+1])));

      ui->m_time->display(buff_time);
      ui->m_location_N->display(buff_location_N);
      ui->m_location_E->display(buff_location_E);
      /*
       *
       if(int(QChar(buff_qs[index_end+3]))==1){
      //buff_location_N=buff_qs.mid(index_t+16,12);
      //buff_location_E=buff_qs.mid(index_t+28,12);

      m_time->display(buff_time);
      m_location_N->display(buff_location_N);
      m_location_E->display(buff_location_E);
      }
      else{
        m_debug->display(QString("N/A"));
      }
      */

      // m_time->display(index_t);
     //  m_location_N->display(buff_time);
     //  m_location_E->display(int(buff_qs.length()));
      //m_debug->display(time_hour);
    }
    else{
     //  m_time->display(QString("N/A"));
     // m_debug->display(QString("N/A"));
     //  m_location->display(buff_time);
    // m_label_debug->setText(QString("N/A"));
    ui->m_label_debug->setText(QString("N/A"));

    }

    /*  s2=QString(QChar(index_t));
      test_str+=s2;
      s2=QString("\n^^^^^^^^^^^^^\n");
      test_str+=s2;
      s2=QString(QChar(buff_qs.length()));
      test_str+=s2;
      s2=QString("\n^^^^^^@@^^^^^^^\n");
      test_str+=s2;
      m_receiveEdit->insert(test_str);
    */
    //if(isdigit(c))
      //m_time->display(QString(QChar(c)));

}

void MainWindow::enableLogging(bool on)
{
   if (m_logFile.isOpen()==on)
   {
      return;
   }

   if (on)
   {
      m_logFile.setFileName(ui->m_logFileLe->text());
      //m_logFile.setFileName(m_logFileLe->text());
      //QIODevice::OpenMode mode=QIODevice::ReadWrite;
      //int mode=IO_ReadWrite | IO_Truncate;
      QIODevice::OpenMode mode=QIODevice::ReadWrite;

         mode=mode | QIODevice::Truncate;

       //  mode=mode | QIODevice::Truncate;

       //  mode=mode | QIODevice::Append;


      if (!m_logFile.open(mode))
      {
         QMessageBox::information(this, tr("Opening file failed"), tr("Could not open file %1 for writing").arg(ui->m_logFileLe->text()));
         ui->m_enableLoggingCb->setChecked(false);
      }
      else
      {
       //  m_logAppendCb->setEnabled(false);
         ui->m_logFileLe->setEnabled(false);
         ui->m_logFileFileDialog->setEnabled(false);
      //   saveSettings();
      }
   }
   else
   {
      m_logFile.close();

  //    m_logAppendCb->setEnabled(true);
      ui->m_logFileLe->setEnabled(true);
      ui->m_logFileFileDialog->setEnabled(true);

   }

}


void MainWindow::chooseLogFile()
{
  //static QString * workingDirectory = 0;
 // QFileDialog *dlg = new QFileDialog( *workingDirectory, QString::null, parent, name, TRUE );
 // QFileDialog *dlg = new QFileDialog( *workingDirectory, QString::null, this,m_logFileLe->text(), TRUE );
  // QFileDialog qfile_diag(QString("/sdcard"),this);
 //  QString logFile=qfile_diag->getSaveFileName( tr("Save log file ..."),tr("Save log file ..."), this,m_logFileLe->text());
//QString logFile=QFileDialog::getSaveFileName(tr("Save log file ...") ,tr("Save log file ...") , this,m_logFileLe->text(),tr("Save log file ..."));
 //  QString logFile=QFileDialog::getSaveFileName(this, tr("Save log file ..."), m_logFileLe->text());
// QString logFile = QFileDialog::getOpenFileName( QString::null, "*.cpp", this );
//QString logFile = m_fileDlg->getSaveFileName( QString::null, "*.cpp", this );
    QString logFile=QFileDialog::getSaveFileName(this, tr("Save log file ..."), ui->m_logFileLe->text());
    if (!logFile.isEmpty())
    {
       ui->m_logFileLe->setText(logFile);
    }
}
