#INCLUDE 'TopConn.ch'
#include 'protheus.ch'
#include 'parmtype.ch'

User Function BANCO3()
    
    Local aArea := SB1->(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local nCount

    cQuery := " SELECT "
    cQuery += " B1_COD AS CODIGO, "
    cQuery += " B1_DESC AS DESCRICAO "
    cQuery += " FROM "
    cQuery += " " + RetSQLName("SB1") + " SB1" 
    cQuery += " WHERE "
    cQuery += " B1_MSBLQL != '1' "

    TCQuery cQuery New Alias "TMP"

    While ! TMP->(EoF()) 
        AADD(aDados, TMP->CODIGO)
        AADD(aDados, TMP->DESCRICAO)
        TMP->(DbSkip())
    EndDo    

    Alert(Len(aDados))

    For nCount := 1 To Len(aDados)
        MsgInfo(aDados[nCount])
    Next nCount

    TMP->(DbCloseArea())

    RestArea(aArea)
Return 
