#include 'parmtype.ch'

User Function BANCO4()
    Local aArea := SB1->(GetArea())
    
    DbSelectArea('SB1')
    DbSetOrder(1)
    DbGoTop()

    Begin Transaction
        MsgInfo("A Descri��o do produto ser� alterada!" ,"Aten��o")
        if SB1->(DbSeek(FWXFilial("SB1") + '2'))
            RecLock('SB1', .F.)
            B1_DESC := "monitor"   
            SB1->(MsUnlock())         
        endif
    MsgAlert("Altera��o efetuada","Aten��o")
    End Transaction
    RestArea(aArea)
Return 
