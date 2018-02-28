import numpy as np
import matplotlib.pyplot as plt
import sounddevice as sd
import pandas as pd
import csv

import sys
#from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QApplication,QDialog,QMainWindow , QFileDialog, QMessageBox
from PyQt5.uic import loadUi

#import plotly.plotly as py
#import plotly.figure_factory as FF


def plot( t , y ):
    fig = plt.figure()
    ax = fig.gca()
    ax.set_ylim((-2, 2))
    ax.grid(True)
    plt.plot( t , y )



class GUI(QMainWindow):
    def __init__(self):
        super(GUI,self).__init__()
        loadUi('GUI.ui',self)
        self.setWindowTitle('title 7lw')
        self.SingleBrowse.clicked.connect(self.SingleBrowseclick)
        self.mybutton.clicked.connect(self.mybutton_clicked)
        self.mybutton2.clicked.connect(self.mybutton2_clicked)
        self.browse.clicked.connect(self.sins_sum)

     #   self.pushButton.clicked.connect(self.on_pushButton_clicked)
       # self.browse.clicked.connect(self.on_browse_clicked)
      #  self.SingleBrowse.clicked.connect(self.on_SingleBrowse_clicked)


    @pyqtSlot()
    def on_pushButton_clicked(self):

        fs = 24100
        x = np.linspace(0, 50000, 500000)
        z = np.sin(x)
        y = np.exp(-0.0005*x)
        data = y*z
        sd.play(data, fs)

        #x = np.linspace(0, 100, 1000)
        plot( x , data)
        plt.ylim(-2,2)
        plt.xlim(0,500)
        plt.show()

    def mybutton2_clicked(self):

        Wavefreq = self.wavefreq.text()
        Timedisp = self.timedisp.text()
        Samplingfreq = self.samplingfreq.text()


        if not Wavefreq or not Timedisp or not Samplingfreq:

            QMessageBox.about(self,"Error","Please fill in the required fields")


        else:

            samplingfreq = float(Samplingfreq)
            timedisp = float(Timedisp)
            wavefreq = float(Wavefreq)

            time_of_view = timedisp;  # s.
            analog_time = np.linspace(0, time_of_view, 100000);  # s.

            sampling_rate = samplingfreq;  # Hz
            sampling_period = 1. / sampling_rate;  # s
            sample_number = time_of_view / sampling_period;
            sampling_time = np.linspace(0, time_of_view, sample_number);

            carrier_frequency = wavefreq;
            amplitude = 1;
            phase = 0;

            quantizing_bits = 16;
            quantizing_levels = 2 ** quantizing_bits / 2;
            quantizing_step = 1. / quantizing_levels;

            def analog_signal(time_point):
                return amplitude * np.exp(2 * np.pi * carrier_frequency * time_point + phase);

            sampling_signal = analog_signal(sampling_time);
            quantizing_signal = np.round(sampling_signal / quantizing_step) * quantizing_step;

            fig = plt.figure()
            plt.plot(analog_time, analog_signal(analog_time));
            plt.stem(sampling_time, sampling_signal, '+');
            markerline, stemlines, baseline = plt.stem(sampling_time, quantizing_signal, '0', linefmt='r-',
                                                       basefmt='y-');
            plt.setp(stemlines, 'linewidth', 0.5)

            plt.title("Analog to digital signal conversion")
            plt.xlabel("Time")
            plt.ylabel("Amplitude")

            plt.show()




    def mybutton_clicked(self):

        Wavefreq = self.wavefreq.text()
        Timedisp = self.timedisp.text()
        Samplingfreq = self.samplingfreq.text()


        if not Wavefreq or not Timedisp or not Samplingfreq:

            QMessageBox.about(self, "Error", "Please fill in the required fields")

        else:

            samplingfreq = float(Samplingfreq)
            timedisp = float(Timedisp)
            wavefreq = float(Wavefreq)


            time_of_view = timedisp;  # s.
            analog_time = np.linspace(0, time_of_view, 100000);  # s.

            sampling_rate = samplingfreq;  # Hz
            sampling_period = 1. / sampling_rate;  # s
            sample_number = time_of_view / sampling_period;
            sampling_time = np.linspace(0, time_of_view, sample_number);

            carrier_frequency = wavefreq;
            amplitude = 1;
            phase = 0;

            quantizing_bits = 16;
            quantizing_levels = 2 ** quantizing_bits / 2;
            quantizing_step = 1. / quantizing_levels;

            def analog_signal(time_point):
                return amplitude * np.sin(2 * np.pi * carrier_frequency * time_point + phase);

            sampling_signal = analog_signal(sampling_time);
            quantizing_signal = np.round(sampling_signal / quantizing_step) * quantizing_step;

            fig = plt.figure()
            plt.plot(analog_time, analog_signal(analog_time));
            plt.stem(sampling_time, sampling_signal, '+');
            markerline, stemlines, baseline = plt.stem(sampling_time, quantizing_signal, '0', linefmt='r-', basefmt='y-');
            plt.setp(stemlines, 'linewidth', 0.5)

            plt.title("Analog to digital signal conversion")
            plt.xlabel("Time")
            plt.ylabel("Amplitude")

            plt.show()

    def SingleBrowseclick(self):

        fil1 = self.fil1.text()
        fil2 = self.fil2.text()
        fil3 = self.fil3.text()



        if not fil1 or not fil2 or not fil3:

            fil1, fil2, fil3 =1,1,1

        else:

            fil3 = float(fil3)
            fil2 = float(fil2)
            fil1 = float(fil1)

        filePath = QFileDialog.getOpenFileName(self, 'Single File', "~/Desktop/", '*.csv')
        filePath = filePath[0]

        if not filePath:
            pass
        else:

            #     print ('ay7aga: ',filePath)
            # f= open (filePath[0],'rb')

            print(type(filePath),filePath)
            df = pd.read_csv(str(filePath))
            #  print (df[2:len(df),1])
            x = df.values[2:len(df), 1]
            x = x.astype(float)
            z = np.convolve(x, [fil1, fil2, fil3])

            #  t = np.linspace(0, len(x), 150)
            plt.plot(z)
            plt.show()

    def sins_sum(self):

        
        time_interval = 30000
        samples = 50000

        freq1 = self.f1.text()
        freq2 = self.f2.text()
        freq3 = self.f3.text()

        if not freq1 or not freq2 or not freq3:

            QMessageBox.about(self, "Error", "Please fill in the required fields")

        else:
            freq1 = float(freq1)
            freq2 = float(freq2)
            freq3 = float(freq3)

            f1 = freq1
            w1 = 2. * np.pi * f1
            t = np.linspace(0, time_interval, samples)
            y1 = np.sin(w1 * t)
            #plt.plot(t, y1)

            f2 = freq2
            w2 = 2. * np.pi * f2

            t = np.linspace(0, time_interval, samples)
            y2 = np.sin(w2 * t)
            #plt.plot(t, y2)

            f3 = freq3
            w3 = 2. * np.pi * f3

            t = np.linspace(0, time_interval, samples)
            y3 = np.sin(w3 * t)
            plt.plot(t, y3+y2+y1)

            sd.play(y3+y2+y1)
            plt.ylim(-3,3)
            plt.xlim(0,1000)

            plt.show()

  #  def on_pushButton_2_clicked(self):

        
if __name__ == '__main__':

     app= QApplication(sys.argv)
     widget= GUI()
     widget.show()
     sys.exit(app.exec_())


