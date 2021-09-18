#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function BANCO5()
    
   Local aArea  := GetArea()
   Local aDados := {}
   Private lMSErroAuto := .F.

    aDados :=   {;
                    {"B1_COD" ,    "4",           NIL},;
                    {"B1_DESC",   "PRODUTO TESTE",NIL},;
                    {"B1_TIPO",   "PA",           NIL},;
                    {"B1_UM",     "UN",           NIL},;
                    {"B1_LOCPAD", "1",            NIL},;
                    {"B1_PICM",      0,           NIL},;
                    {"B1_IPI",       0,           NIL},;
                    {"B1_CONTRAT", "N",           NIL},;
                    {"B1_LOCALIZ", "N",           NIL};
                }

    Begin Transaction

          MSExecAuto({|x,y|Mata010(x,y)}, aDados,3)

          if lMSErroAuto
                Alert("Ocorreram erros durante a operação")
                MostraErro()

                DisarmTransaction()
         else
                MsgInfo("Operação finalizada!", "Aviso")       
        endif
        
    End Transaction

    ResArea(aArea)

Return 
