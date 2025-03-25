x=NEWOBJECT("signalklasa")

DEFINE CLASS signalklasa AS session OLEPUBLIC

	IMPLEMENTS IYourComEvents IN "C:\PROGRAM FILES (X86)\DEFAULT COMPANY NAME\SETUPCOMSIGNALRMIDDLWARE\COMSIGNALRMIDDLWARE.TLB"

	PROCEDURE IYourComEvents_OnYourEvent(data AS STRING) AS VOID
	ttChat=" " + data
	 IF TYPE('_Screen.oSignalForm') = 'O' AND PEMSTATUS(_Screen.oSignalForm, 'signalevent', 5)    
	 *_Screen.oSignalForm.signalevent()
	 _Screen.osignalform.signalevent()
	 ENDIF
	 
	* add user code here
	ENDPROC

	PROCEDURE IYourComEvents_OnYourEventWhenMessageReceived(user AS STRING, message AS STRING) AS VOID
	* add user code here
	ENDPROC

ENDDEFINE