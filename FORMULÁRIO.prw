#include "TOTVS.CH"


User Function CADASTRO() 
    Local oTGet1 
    Local oTGet2 
    Local oTGet3
    Local oTGet4
    Local oTGet5
    Local oTGet6
    Local cTGet1 := SPACE(10)
    Local cTGet2 := SPACE(10)
    Local cTGet3 := SPACE(10)
    Local cTGet4 := SPACE(10)
    Local cTGet5 := SPACE(10)
    Local cTGet6 := SPACE(10)
    Local aData := {} 

    Local oDlg := TDialog():New(180,180,480,700,'Cadastro de Produto',,,,,CLR_BLACK,CLR_WHITE,,,.T.)
    
    oTGet1 := TGet():New( 20,20,{ | u | If( PCount() == 0, cTGet1, cTGet1 := u ) },oDlg,0100,010,"@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,,,,,,,,"Grupo", 1)

    oTGet2 := TGet():New( 50,20,{ | u | If( PCount() == 0, cTGet2, cTGet2 := u ) },oDlg,0100,010,"@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,,,,,,,,"Unidade", 1)

    oTGet2 := TGet():New( 80,20,{ | u | If( PCount() == 0, cTGet3, cTGet3 := u ) },oDlg,0100,010,"@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,,,,,,,,"Codigo", 1)

    oTGet1 := TGet():New( 20,140,{ | u | If( PCount() == 0, cTGet4, cTGet4 := u ) },oDlg,0100,010,"@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,,,,,,,,"Armazen Pad.", 1)  

    oTGet1 := TGet():New( 50,140,{ | u | If( PCount() == 0, cTGet5, cTGet5 := u ) },oDlg,0100,010,"@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,,,,,,,,"Descrição", 1)   

    oTGet1 := TGet():New( 80,140,{ | u | If( PCount() == 0, cTGet6, cTGet6 := u ) },oDlg,0100,010,"@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,,,,,,,,"Tipo", 1)    

    oTButton1 := TButton():New( 110, 140, "Cadastrar",oDlg,{||alert(aData[0])}, 50,15,,,.F.,.T.,.F.,,.F.,,,.F. )
    oTButton1 := TButton():New( 110, 190, "Cancelar",oDlg,{||close(oDlg)}, 50,15,,,.F.,.T.,.F.,,.F.,,,.F. )


 oDlg:Activate(,,,.T.,,, )
Return
