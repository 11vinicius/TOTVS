#Include 'Protheus.ch'


User Function BANCO1()
    Local aArea := SB1->(GetArea())
    Local cMsg := ""

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1))
    SB1->(DbGoTop())
    
    If SB1->(dbSeek(FWXFilial("SB1") + "2"))
        Alert(SB1->B1_DESC)
    ENDIF

    RestArea(aArea)
Return 
