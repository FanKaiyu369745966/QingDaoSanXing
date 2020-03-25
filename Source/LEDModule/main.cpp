#include "LEDModule.h"
#include <QtWidgets/QApplication>

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);
	LEDModule w;
	w.show();
	return a.exec();
}
