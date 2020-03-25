#pragma once

#include <QtWidgets/QMainWindow>
#include "ui_LEDModule.h"

class LEDModule : public QMainWindow
{
	Q_OBJECT

public:
	LEDModule(QWidget *parent = Q_NULLPTR);

private:
	Ui::LEDModuleClass ui;
};
