#ifndef URecordSheetH
#define URecordSheetH
#include "cxButtonEdit.hpp"
#include "cxButtons.hpp"
#include "cxCalendar.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxDBEdit.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDBTL.hpp"
#include "cxDBVGrid.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxGroupBox.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxMemo.hpp"
#include "cxPC.hpp"
#include "cxSpinEdit.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxVGrid.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <DB.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include <DBClient.hpp>
#include "cxEditRepositoryItems.hpp"
#include "dxBar.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <ImgList.hpp>
#include "cxHint.hpp"
#include "dxBarExtItems.hpp"
#include "cxBarEditItem.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "cxDateUtils.hpp"
#include "cxNavigator.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxCore.hpp"
#include "dxSkinBlueprint.hpp"
#include "dxSkinDevExpressDarkStyle.hpp"
#include "dxSkinDevExpressStyle.hpp"
#include "dxSkinHighContrast.hpp"
#include "dxSkinMetropolis.hpp"
#include "dxSkinMetropolisDark.hpp"
#include "dxSkinOffice2013DarkGray.hpp"
#include "dxSkinOffice2013LightGray.hpp"
#include "dxSkinOffice2013White.hpp"
#include "dxSkinSevenClassic.hpp"
#include "dxSkinSharpPlus.hpp"
#include "dxSkinTheAsphaltWorld.hpp"
#include "dxSkinVS2010.hpp"
#include "dxSkinWhiteprint.hpp"
#include <System.Actions.hpp>
#include <Vcl.ComCtrls.hpp>
#include "cxSplitter.hpp"
//---------------------------------------------------------------------------
const int iiObligatoryField = 12;	// индекс картинки для обязательных полей

const int vSourceType_KASANT = 67;
const int vSourceType_TU152 = 34;
const int vSourceType_ASUT_NR = 33;

const int SOURCE_TYPE_HANDLY [] = { vSourceType_KASANT, vSourceType_TU152, 0 };	// Тип источника, где можно руками вводить

struct StrctRecordSheet
{
    bool		bWasChange;
    int			sheet_id;		// идентификатор листа регистрации
    double		id_object;		// ID секции
    int			train_idx_makeup;
    int			train_idx_wheel;
    int			train_idx_terminus;
    int			train_organize;
    int			train_destination;
    int			train_length;
    int			brig_tnom;
    AnsiString	brig_fio;
    int			brig_pred_id;
    AnsiString	sheet_no;		// номер инцидента
    int			state_id;		// состояние инцидента,
    int			source_type_id;	// тип источника информации,
    int			source_info_id;	// источник информации (предприятие),
    AnsiString	source_info_pred_name;	// наименование предприятия-источника
    int			source_obtained_id;	//приобретенный источник информации,
    int			criticality_id;		// критичность инцидента,
    TDateTime	date_fail;			// дата возникновения инцидента,
    TDateTime	date_diagnost_msg;	// дата формирования диагностического сообщения,
    TDateTime	date_close;			// дата закрытия инцидента,
    int			inc_lasting;		// продолжительность от возникновения до закрытия, в сутках
	AnsiString	incident_descr;		// обстоятельства инцидента, по данным АСУ
	AnsiString	incident_descr_e;	// обстоятельства инцидента
    int			kasant_idx_id;		// касант: числовое обозначение (0 - 3),
    int			kasant_traffic_safety_id;	//касант: нарушение безопасности по приказу 163 (object_kod from ensi_ic00_dic_objects t where class_id = 2306),
	int			kasant_state_id;	// статус касант (object_kod from ensi_ic00_dic_objects t where class_id = 4609),
	TDateTime	kasant_delay_time;
	int			kasant_cnt_pass;
	int			kasant_cnt_cargo;
    int			responsible_road_id;	// касант: дорога виновной службы,
    int			responsible_parent_id;	// касант: виновная служба (object_id from ensi_ic00_dic_objects t where class_id = 4601),
    int			kasant_responsible_id;			// касант: подразделение виновной стороны,
    int			prev_sheet_id;			// предыдущий лр,
    TDateTime	date_create;			// дата и время создания записи,
	TDateTime	date_change;			// дата и время изменения записи,
    int			change_user_id;			// изменившего пользователя,
    int			create_mode;			// способ создания инцидента: 0 - автоматически, 1 - ручной ввод,
    int			is_valid;				// признак валидности записи (0 - нет / 1 - да),
    int			kod_ser;				// код серии,
    int			kod_tjaga;				// тяга
    int			nom_loc;				// номер локомотива (без секции),
    int			nom_sec;				// номер секции,
    AnsiString	nom_object;
    AnsiString	nom_tpe;     			// № ТПЕ
    int			n_sec;					// число секций в ТПЕ
    int			kod_depo;				// депо приписки ( = ensi_ic00_pred.otr_kod and gr_id = 31),
    int			kod_firm_repair;		// базовое предприятие ремонта,
    int			kod_filial;				// филиал СО
    int			kod_department;			// подразделение СО
    int			owner_tchr_id;			// владелец
    int			owner_kod_filial;		// владелец
    int			owner_kod_department;	// владелец

    int			fail_type_place;		// тип места возникновения отказа
    int			fail_place_pereg_id;	// место отказа (перегон)
    int			fail_place_station_id;	// место отказа (станция)
    int			fail_place_depot_id;	// место отказа (депо, ПТОЛ)
    AnsiString	fail_place_name;
    //
    int			FailPlaceId;
    int			RoadKodPrip;		// дорога приписки локомотива
    AnsiString	LocName;			// наименование ТПЕ (серия, номер секции, приписка)
    AnsiString	BaseRepairFirmNameRoad;		// базовое ремонтное депо + дорога
    AnsiString	ServiceFirmRoadName;		// подразделение сервисного обслуживания (наименование)
    /*Для определения пробега*/
    int			KodRoad;
    // Команда
    int			team_id;
    int			team_service_kod_firm;	// Команда: подразделение сервисного обслуживания
    //
    int			has_running;	// отметка о наличии сохраненных пробегов (0; 1)
    // Анализ
    int			agg_type_id;
    int 		reason_id;
    int 		reason_id_old;	// выкинуть потом
	int			responsible_id;
	int         responsible_child_id;
	// Расчет НР
	int 		repair_id;
	// ЛРЗ
	int			row_id;
	// Отчеты
	long long   id_ob_loc;
	TDateTime   dBegin;
	TDateTime   dEnd;
};
//---------------------------------------------------------------------------
struct StrctSelectFirm
{
    int					PredID;
    int					ParentPredID;
	AnsiString			PredName;
    AnsiString			ParentPredName;
    int					AccLevel;
};
//---------------------------------------------------------------------------
class TfrmRecordSheet : public TForm
{
__published:
	TPanel *Panel6;
	TcxButton *cxButton10;
	TActionList *alRecordSheet;
	TAction *aSave;
	TAction *aClose;
	TTimer *tmr;
	TcxPageControl *pcCommon;
	TcxTabSheet *tsRSh_Common;
	TcxTabSheet *tsRSh_Running;
	TAction *aSearchLoc;
	TcxTabSheet *tsRSh_Team;
	TcxTabSheet *tsRSh_Attr;
	TdxStatusBar *StatusBar;
	TPanel *Panel2;
	TcxGroupBox *cxGroupBox1;
	TcxGroupBox *cxGroupBox2;
	TcxLabel *cxLabel9;
	TcxLabel *cxLabel11;
	TcxGroupBox *cxGroupBox3;
	TcxGroupBox *pnlKasant;
	TcxGroupBox *cxGroupBox5;
	TcxMemo *mmDescr1;
	TAction *aLoad_NSI_States;
	TcxLookupComboBox *cbKasantSafety;
	TcxLabel *cxLabel14;
	TcxLabel *cxLabel15;
	TcxLookupComboBox *cbKasantState;
	TAction *aLoad_NSI_Safety;
	TAction *aLoad_NSI_KasantMark;
	TAction *aLoad_NSI_KasantState;
	TAction *aLoad_NSI_Criticality;
	TcxLabel *cxLabel16;
	TcxLabel *cxLabel13;
	TcxLookupComboBox *cbCriticality;
	TcxLabel *cxLabel17;
	TcxLookupComboBox *cbKasantMark;
	TAction *aLoad_NSI_InfoSourceType;
	TcxLabel *cxLabel10;
	TcxLookupComboBox *cbInfoSourceType;
	TcxDBVerticalGrid *vgRunningElder;
	TcxCategoryRow *vgRunningElderCategoryRow1;
	TcxCategoryRow *vgRunningElderCategoryRow2;
	TcxCategoryRow *vgRunningElderCategoryRow3;
	TcxCategoryRow *vgRunningElderCategoryRow4;
	TcxDBEditorRow *vgRunningElderDBEditorRow1;
	TcxDBEditorRow *vgRunningElderDBEditorRow2;
	TcxDBEditorRow *vgRunningElderDBEditorRow3;
	TcxDBEditorRow *vgRunningElderDBEditorRow4;
	TcxDBEditorRow *vgRunningElderDBEditorRow5;
	TcxDBEditorRow *vgRunningElderDBEditorRow6;
	TcxDBEditorRow *vgRunningElderDBEditorRow7;
	TcxDBEditorRow *vgRunningElderDBEditorRow8;
	TcxDBEditorRow *vgRunningElderDBEditorRow9;
	TcxDBEditorRow *vgRunningElderDBEditorRow10;
	TcxDBEditorRow *vgRunningElderDBEditorRow11;
	TPanel *Panel4;
	TcxLabel *cxLabel21;
	TcxLabel *cxLabel22;
	TAction *aSetValues;
	TAction *aLoad_NSI_TypePlace;
	TcxButtonEdit *btneInfoSource;
	TcxButtonEdit *btneResponsibleParent;
	TcxLabel *cxLabel31;
	TcxLabel *cxLabel32;
	TcxTextEdit *eResponsibleChild;
	TcxGroupBox *cxGroupBox4;
	TcxLabel *cxLabel23;
	TcxLookupComboBox *cbTypePlace;
	TcxLabel *cxLabel24;
	TcxButtonEdit *btneFailPlace;
	TcxDateEdit *deFailDate;
	TcxDateEdit *deDiagMsgDate;
	TAction *aGetRunningASOUP;
	TAction *aSaveRunning;
	TcxLabel *cxLabel19;
	TcxLabel *cxLabel20;
	TcxButtonEdit *btneRepairBaseFirm;
	TcxButtonEdit *btneLoc;
	TAction *aDataValidation;
	TPanel *Panel3;
	TcxButton *cxButton1;
	TcxDBVerticalGrid *vgRunningJunior;
	TcxCategoryRow *cxCategoryRow5;
	TcxDBEditorRow *cxDBEditorRow12;
	TcxDBEditorRow *cxDBEditorRow13;
	TcxDBEditorRow *cxDBEditorRow14;
	TcxCategoryRow *cxCategoryRow6;
	TcxDBEditorRow *cxDBEditorRow15;
	TcxDBEditorRow *cxDBEditorRow16;
	TcxDBEditorRow *cxDBEditorRow17;
	TcxCategoryRow *cxCategoryRow7;
	TcxDBEditorRow *cxDBEditorRow18;
	TcxDBEditorRow *cxDBEditorRow19;
	TcxDBEditorRow *cxDBEditorRow20;
	TcxCategoryRow *cxCategoryRow8;
	TcxDBEditorRow *cxDBEditorRow21;
	TcxDBEditorRow *cxDBEditorRow22;
	TcxDBEditorRow *cxDBEditorRow23;
	TcxDBEditorRow *vgRunningElderDBEditorRow12;
	TcxLabel *cxLabel7;
	TPanel *Panel7;
	TPanel *Panel8;
	TcxDBTreeList *tlTeamLeader;
	TcxDBTreeListColumn *clmnLeader_FIO;
	TcxDBTreeListColumn *cxDBTreeListColumn2;
	TcxDBTreeListColumn *cxDBTreeListColumn3;
	TPanel *Panel9;
	TPanel *Panel10;
	TPanel *Panel11;
	TcxButton *cxButton2;
	TAction *aWorkLeader_Add;
	TAction *aProcessOwner_Add;
	TcxButton *cxButton5;
	TPanel *Panel12;
	TcxButton *cxButton6;
	TcxButton *cxButton7;
	TAction *aWork_Add;
	TAction *aWork_Edit;
	TAction *aWork_Delete;
	TcxButton *cxButton8;
	TPanel *Panel13;
	TAction *aWork_Finish;
	TcxTabSheet *tsRSh_Storage;
	TPanel *Panel15;
	TcxButton *cxButton14;
	TcxButton *cxButton15;
	TcxButton *cxButton16;
	TcxDBTreeList *tlStorage;
	TcxDBTreeListColumn *cxDBTreeListColumn11;
	TcxDBTreeListColumn *cxDBTreeListColumn12;
	TcxDBTreeListColumn *cxDBTreeListColumn13;
	TAction *aStorage_Add;
	TAction *aStorage_Edit;
	TAction *aStorage_Delete;
	TAction *aPause_Add;
	TAction *aPause_Edit;
	TAction *aPause_Delete;
	TcxTabSheet *tsRSh_Workaround_old;
	TPanel *Panel17;
	TcxButton *cxButton20;
	TcxButton *cxButton21;
	TcxButton *cxButton22;
	TcxDBTreeList *tlWorkaround;
	TcxDBTreeListColumn *cxDBTreeListColumn17;
	TcxDBTreeListColumn *cxDBTreeListColumn18;
	TcxDBTreeListColumn *cxDBTreeListColumn19;
	TcxDBTreeListColumn *cxDBTreeListColumn20;
	TAction *aWorkaround_Add;
	TAction *aWorkaround_Edit;
	TAction *aWorkaround_Delete;
	TAction *aEscalation_Add;
	TAction *aEscalation_Edit;
	TAction *aEscalation_Delete;
	TcxTabSheet *tsRSh_AnalyseAction;
	TcxTabSheet *tsRSh_Closing;
	TPanel *Panel20;
	TcxButton *cxButton26;
	TcxButton *cxButton27;
	TcxButton *cxButton28;
	TcxDBTreeList *tlAction;
	TcxDBTreeListColumn *cxDBTreeListColumn25;
	TcxDBTreeListColumn *cxDBTreeListColumn26;
	TcxDBTreeListColumn *cxDBTreeListColumn27;
	TcxDBTreeListColumn *cxDBTreeListColumn28;
	TcxDBTreeListColumn *tlActionscxDBTreeListColumn1;
	TAction *aAction_Add;
	TAction *aAction_Edit;
	TAction *aAction_Delete;
	TcxGroupBox *gbClosing;
	TAction *aSaveTrain;
	TAction *aLoad_NSI_Brig_Depo;
	TAction *aLoad_NSI_TeamDepartment;
	TAction *aLoad_TeamExecutor;
	TAction *aSaveExit;
	TAction *aLoad_TeamLeader;
	TcxDBTreeListColumn *clmnTeamLeader_TeamID;
	TAction *aLoad_TeamOwner;
	TcxDBTreeList *tlTeamOwner;
	TcxDBTreeListColumn *clmnOwner_FIO;
	TcxDBTreeListColumn *cxDBTreeListColumn4;
	TcxDBTreeListColumn *cxDBTreeListColumn5;
	TcxDBTreeListColumn *clmnOwner_TeamID;
	TAction *aSaveTeam;
	TAction *aLoadTeam;
	TAction *aLoad_NSI_RQ_Mfr;
	TcxMemo *mmIncidentDescr;
	TAction *aSet_TabSheet;
	TAction *aLoad_Analyses;
	TcxDBTreeListColumn *tlActionscxDBTreeListColumn2;
	TAction *aSaveAnalyses;
	TAction *aLoad_Action;
	TcxDBTreeListColumn *clmnAction_ID;
	TAction *aLoad_Incident_RSh;
	TAction *aLoad_TabSheet;
	TAction *aCommandSetAction;
	TAction *Action1;
	TAction *aLoad_NSI_ServiceFilial;
	TPanel *Panel19;
	TPanel *Panel21;
	TcxButton *cxButton3;
	TcxButton *cxButton4;
	TcxButton *cxButton11;
	TAction *aAttach_Add;
	TAction *aAttach_Delete;
	TAction *aAttach_Edit;
	TAction *aLoad_Attach;
	TAction *aGetTrainInfo;
	TAction *aAttach_Show;
	TcxGrid *grdAttach;
	TcxGridDBTableView *btvFirmTree;
	TcxGridDBColumn *clmnGrdName;
	TcxGridDBColumn *clmnGrdCategory;
	TcxGridDBColumn *clmnGrdCategoryAdd;
	TcxGridLevel *lvlAttach;
	TAction *aSave0;
	TAction *aRestorePageCaption;
	TAction *aCheckDiff;
	TAction *aLoad_Incident_Running;
	TAction *aLoad_Pause;
	TAction *aPause_SetAction;
	TAction *aWorkaround_SetAction;
	TAction *aLoad_Workaround;
	TcxDBTreeListColumn *clmnWorkaround_ID;
	TcxDBTreeListColumn *clmnStorage_ID;
	TAction *aLoad_Storage;
	TAction *aStorage_SetAction;
	TAction *aEscalation_SetAction;
	TAction *aLoad_Escalation;
	TAction *aLoad_NSI_Eq_Reason;
	TcxLookupComboBox *cbServiceDepartment;
	TAction *aLoad_NSI_Category;
	TcxLookupComboBox *cbCategory;
	TAction *aLoad_NSI_EnterDepot_Reason;
	TcxLabel *cxLabel51;
	TcxLookupComboBox *cbEnter_Depot_Reason;
	TAction *aLoad_NSI_Responsible;
	TAction *aSetAction;
	TAction *aActionSetAction;
	TAction *aAttachSetAction;
	TPanel *Panel24;
	TcxButton *cxButton29;
	TcxButton *cxButton31;
	TAction *aRelationChildEdit;
	TAction *aLoad_Relation;
	TAction *aRelationDelete;
	TAction *aRelation_SetAction;
	TDataSource *dsRelationParent;
	TClientDataSet *cdsRelationParent;
	TDataSource *dsRelationChild;
	TClientDataSet *cdsRelationChild;
	TcxGrid *grdRelation;
	TcxGridDBBandedTableView *btvRelation;
	TcxGridDBBandedColumn *clmnSheetID;
	TcxGridDBBandedColumn *btvRelationColumn2;
	TcxGridDBBandedColumn *btvRelationColumn8;
	TcxGridDBBandedColumn *clmnIncident_StateName;
	TcxGridDBBandedColumn *btvRelationColumn11;
	TcxGridDBBandedColumn *btvRelationColumn14;
	TcxGridDBBandedColumn *btvRelationColumn15;
	TcxGridDBBandedColumn *btvRelationColumn22;
	TcxGridDBBandedColumn *btvRelationColumn23;
	TcxGridDBBandedColumn *clmnStateID;
	TcxGridDBBandedColumn *clmnIncident_Can_Delete;
	TcxGridLevel *lvl;
	TcxGridLevel *grdRelationLevel1;
	TcxGridDBBandedTableView *btvRelationChild;
	TcxGridDBBandedColumn *btvRelationChildColumn1;
	TcxGridDBBandedColumn *btvRelationChildColumn2;
	TcxGridDBBandedColumn *btvRelationChildColumn3;
	TcxGridDBBandedColumn *btvRelationChildColumn4;
	TAction *aRelationSetMain;
	TcxButton *cxButton32;
	TAction *aRelationAddParent;
	TcxButton *cxButton33;
	TcxButton *cxButton34;
	TAction *aCancel;
	TcxTabSheet *cxTabSheet1;
	TcxDBVerticalGrid *cxDBVerticalGrid1;
	TcxDBEditorRow *cxDBVerticalGrid1DBEditorRow1;
	TcxDBEditorRow *cxDBVerticalGrid1DBEditorRow2;
	TcxDBEditorRow *cxDBVerticalGrid1DBEditorRow3;
	TcxDBEditorRow *cxDBVerticalGrid1DBEditorRow4;
	TcxDBEditorRow *cxDBVerticalGrid1DBEditorRow5;
	TcxDBEditorRow *cxDBVerticalGrid1DBEditorRow6;
	TcxDBEditorRow *cxDBVerticalGrid1DBEditorRow7;
	TcxLabel *cxLabel58;
	TcxDBTextEdit *cxDBTextEdit1;
	TcxLabel *cxLabel47;
	TcxEditRepository *cxEditRepository2;
	TcxEditRepositoryTextItem *cxEditRepository2TextItem1;
	TcxEditStyleController *stlcntrlrTextReadOnly;
	TcxDBMemo *mmDescrClose;
	TDataSource *dsPause;
	TClientDataSet *cdsPause;
	TcxLabel *cxLabel59;
	TcxDBTreeList *tlWork;
	TcxDBTreeListColumn *cxDBTreeListColumn1;
	TcxDBTreeListColumn *cxDBTreeListColumn6;
	TcxDBTreeListColumn *clmnWork_DateBegin;
	TcxDBTreeListColumn *cxDBTreeListColumn32;
	TcxDBTreeListColumn *clmnWork_TeamID;
	TcxDBTreeListColumn *cxDBTreeListColumn34;
	TcxDBTreeListColumn *cxDBTreeList2cxDBTreeListColumn1;
	TcxButton *cxButton36;
	TdxBarManager *bmRSh;
	TdxBar *tbCommonButtons;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TdxBarDockControl *dxBarDockControl1;
	TdxBarButton *dxBarButton1;
	TdxBarButton *dxBarButton2;
	TdxBarButton *dxBarButton3;
	TdxBarButton *dxBarButton4;
	TdxBarButton *dxBarButton5;
	TdxBarButton *dxBarButton6;
	TdxBarButton *dxBarButton7;
	TdxBarButton *dxBarButton8;
	TActionList *alStates;
	TAction *aSetState_InWork;
	TAction *aSetState_Storage;
	TAction *aSetState_Pause;
	TAction *aSetState_Workaround;
	TAction *aSetState_Escalation;
	TAction *aSetState_Resolved;
	TAction *aSetState_Close;
	TAction *aAttach_Add_Univ;
	TAction *aState_SetAction;
	TcxStyleRepository *stlrpEditing;
	TcxStyle *stlBackground;
	TcxStyle *stlGroup;
	TcxStyle *stlContent;
	TcxStyle *stlHeader;
	TcxStyle *stlBandHeader;
	TcxStyle *stlContentProgress;
	TcxStyle *stlSmallFont7;
	TcxStyle *stlContent8;
	TcxStyle *stlGreenFont;
	TcxStyle *stlHeaderBlack;
	TcxStyle *stlHotTrack;
	TcxStyle *stlLegendSmall;
	TcxStyle *stlLegendSmallBold;
	TcxStyle *stlLargeFont;
	TcxStyle *stlAttention;
	TcxStyle *stlLegend;
	TcxStyle *stlArial13;
	TcxStyle *stlCategory;
	TcxStyle *stlRowDisabled;
	TcxStyle *stlNavy;
	TcxStyle *stlDeviationOver;
	TcxStyle *stlRedBoldFont;
	TcxStyle *stlSelection;
	TcxVerticalGridStyleSheet *stlshtVG;
	TcxGridBandedTableViewStyleSheet *stlshtBTV;
	TcxTreeListStyleSheet *stlshtTL;
	TdxBar *bmRShBar1;
	TdxBarStatic *dxBarStatic1;
	TdxBarStatic *dxBarStatic2;
	TAction *aStateHistory;
	TdxBarButton *dxBarButton9;
	TcxGroupBox *cxGroupBox12;
	TcxMemo *mmDescrTeam;
	TcxGroupBox *cxGroupBox13;
	TcxMemo *mmDescrAttr;
	TcxGroupBox *cxGroupBox14;
	TcxMemo *mmDescrStorage;
	TcxGroupBox *cxGroupBox16;
	TcxMemo *mmDescrWorkaround;
	TcxGroupBox *cxGroupBox18;
	TcxMemo *mmDescrAction;
	TcxBarEditItem *cxBarEditItem1;
	TcxTabSheet *tsOthers;
	TPanel *pnlReasonTree;
	TcxDBTreeList *tlReasonTree;
	TcxDBTreeListColumn *clmn_NSI_ReasonName;
	TdxStatusBar *dxStatusBar3;
	TdxStatusBar *dxStatusBar4;
	TActionList *al;
	TAction *aFill_NSI_System;
	TAction *aFill_NSI_Unit;
	TAction *aFill_NSI_Fail;
	TAction *aLoad_NSI_SystemTree;
	TAction *aLoad_NSI_AggType;
	TAction *aAggType_SetFilter;
	TAction *aLoad_NSI_ReasonTree;
	TAction *aSelect_NSI_ReasonTree;
	TcxVerticalGrid *vgAnalyses;
	TcxEditorRow *rwSystemTree;
	TcxEditorRow *rwSystemType;
	TcxEditorRow *rwSystem;
	TcxEditorRow *rwUnit;
	TcxEditorRow *rwSystemName;
	TcxEditorRow *rwEQ_Manufacturer;
	TcxEditorRow *rwReason_Old;
	TcxEditorRow *rwReason;
	TcxEditorRow *rwResponsible;
	TcxEditorRow *rwDescr_Analyses;
	TcxEditorRow *rwSolutionType;
	TcxCategoryRow *vgAnalysesCategoryRow1;
	TAction *aFill_NSI_SolutionType;
	TdxBarStatic *lblReadOnly;
	TcxDBVerticalGrid *vgFrame;
	TcxDBEditorRow *vgControlDateDBEditorRow1;
	TcxDBEditorRow *vgControlDateDBEditorRow2;
	TcxCategoryRow *cxCategoryRow1;
	TcxDBEditorRow *vgControlDateDBEditorRow3;
	TcxDBEditorRow *vgControlDateDBEditorRow4;
	TcxDBEditorRow *vgControlDateDBEditorRow5;
	TcxDBEditorRow *vgControlDateDBEditorRow6;
	TcxDBEditorRow *vgControlDateDBEditorRow7;
	TcxDBEditorRow *vgControlDateDBEditorRow8;
	TcxDBEditorRow *vgControlDateDBEditorRow9;
	TcxDBEditorRow *vgControlDateDBEditorRow10;
	TcxDBEditorRow *vgControlDateDBEditorRow11;
	TcxDBEditorRow *vgControlDateDBEditorRow12;
	TcxDBEditorRow *vgControlDateDBEditorRow13;
	TcxDBEditorRow *vgControlDateDBEditorRow14;
	TcxDBEditorRow *vgControlDateDBEditorRow15;
	TcxStyle *cxStyle2;
	TPanel *Panel1;
	TcxLabel *cxLabel1;
	TcxLabel *cxLabel2;
	TcxLabel *cxLabel3;
	TcxLabel *cxLabel4;
	TcxLabel *cxLabel5;
	TcxLabel *cxLabel6;
	TcxLookupComboBox *cbState;
	TcxTextEdit *eCriticality;
	TcxTextEdit *eDateCreate;
	TcxTextEdit *eTimeInState;
	TcxTextEdit *teRelationType;
	TcxTextEdit *eAnalyses_Loc;
	TcxLabel *cxLabel18;
	TcxTextEdit *eFileCount;
	TcxLabel *cxLabel33;
	TcxDBTextEdit *eUserChange;
	TcxDBTextEdit *eSheetNo;
	TcxTextEdit *teIsReadOnly;
	TcxLabel *cxLabel55;
	TcxTextEdit *cxTextEdit1;
	TcxLabel *cxLabel56;
	TcxTextEdit *cxTextEdit2;
	TcxDBButtonEdit *eDateChange;
	TPanel *Panel25;
	TcxTabSheet *tsRSh_Common_New;
	TcxStyle *stlNotEditable9;
	TPanel *Panel5;
	TcxLabel *cxLabel8;
	TcxLookupComboBox *cbTeamDepartment;
	TClientDataSet *cds_NSI_SystemTree;
	TDataSource *ds_NSI_SystemTree;
	TcxStyle *stlNavyBold11;
	TPanel *Panel27;
	TcxVerticalGrid *vgCommon;
	TcxEditorRow *rwLocName;
	TcxEditorRow *rwRepairBaseFirm;
	TcxEditorRow *rwRSh_Responsible;
	TcxCategoryRow *cxCategoryRow11;
	TcxEditorRow *rwFailDate;
	TcxEditorRow *rwDiagMsgDate;
	TcxEditorRow *rwFailDescr;
	TcxEditorRow *rwFailPlace;
	TcxEditorRow *rwTrainInfoBtn;
	TcxEditorRow *rwNomTPE;
	TcxEditorRow *rwTagTrain;
	TcxEditorRow *rwTrainMass;
	TcxEditorRow *rwTrainWagoons;
	TcxEditorRow *rwTrainAxes;
	TcxEditorRow *rwBrigFIO;
	TcxEditorRow *rwBrigTNom;
	TcxEditorRow *rwBrigDepo;
	TcxEditorRow *rwCriticality;
	TcxEditorRow *rwCategory;
	TcxEditorRow *rwEnterDepotReason;
	TcxCategoryRow *cxCategoryRow13;
	TcxEditorRow *rwInfoSourceType;
	TcxEditorRow *rwSourcePred;
	TcxCategoryRow *ctgrwKasant;
	TcxEditorRow *rwKasantMark;
	TcxEditorRow *rwKasantState;
	TcxEditorRow *rwKasantSafety;
	TcxEditorRow *rwKasantResponse;
	TcxCategoryRow *cxCategoryRow15;
	TcxEditorRow *rwDescr_Common;
	TAction *aSaveCommon;
	TcxEditorRow *rwRSh_Responsible__;
	TAction *aFill_NSI_Owner;
	TcxEditorRow *rwTPE_Sost;
	TcxEditorRow *rwResponsibleChild;
	TcxEditorRow *rwKasantTrainDelayTime;
	TcxEditorRow *rwKasantCntPassenger;
	TcxEditorRow *rwKasantCntCargo;
	TcxTabSheet *tsRSh_PauseEscalation;
	TcxPageControl *pcPauseEscalation;
	TcxTabSheet *tsPause;
	TcxTabSheet *tsEscalation;
	TcxGroupBox *cxGroupBox19;
	TcxMemo *cxMemo1;
	TcxDBTreeList *tlPauseNew;
	TcxDBTreeListColumn *cxDBTreeListColumn7;
	TcxDBTreeListColumn *cxDBTreeListColumn8;
	TcxDBTreeListColumn *cxDBTreeListColumn9;
	TcxDBTreeListColumn *cxDBTreeListColumn10;
	TcxDBTreeListColumn *cxDBTreeListColumn33;
	TcxDBTreeListColumn *cxDBTreeListColumn35;
	TcxDBTreeListColumn *cxDBTreeListColumn36;
	TcxGroupBox *cxGroupBox20;
	TcxSplitter *cxSplitter1;
	TcxGroupBox *cxGroupBox21;
	TPanel *Panel26;
	TcxButton *cxButton35;
	TcxDBTreeList *tlEscalationNew;
	TcxDBTreeListColumn *cxDBTreeListColumn37;
	TcxDBTreeListColumn *cxDBTreeListColumn38;
	TcxDBTreeListColumn *cxDBTreeListColumn39;
	TcxDBTreeListColumn *cxDBTreeListColumn40;
	TcxDBTreeListColumn *cxDBTreeListColumn41;
	TcxDBTreeListColumn *cxDBTreeListColumn42;
	TcxDBTreeListColumn *cxDBTreeListColumn43;
	TcxDBTreeListColumn *cxDBTreeListColumn44;
	TcxDBTreeListColumn *cxDBTreeListColumn45;
	TAction *aEscalationAction_Add;
	TPanel *Panel28;
	TcxButton *cxButton38;
	TAction *aPause_EditNew;
	TAction *aLoad_EscalationAction;
	TcxGrid *grdEscalationAction;
	TcxGridLevel *lvlEscalationAction;
	TAction *aEscalationAction_Show;
	TcxEditorRow *rwTakenMeasures;
	TcxGridDBBandedTableView *btvEscalationAction;
	TcxGridDBBandedColumn *btvEscalationActionColumn1;
	TcxGridDBBandedColumn *btvEscalationActionColumn2;
	TcxGridDBBandedColumn *btvEscalationActionColumn3;
	TcxGridDBBandedColumn *btvEscalationActionColumn4;
	TcxGridDBBandedColumn *clmnFiles;
	TDataSource *dsEscalationAction;
	TClientDataSet *cdsEscalationAction;
	TcxEditorRow *rwFailDescrE;
	TcxButton *cxButton37;
	TcxEditorRow *rwUnitName;
	TcxEditorRow *rwUnitMfr;
	TcxEditorRow *rwDetail;
	TcxEditorRow *rwDetailText;
	TcxEditorRow *rwDetailName;
	TcxEditorRow *rwDetailMfr;
	TcxEditorRow *rwFaultName;
	TAction *aFill_Class_System_Type;
	TAction *aFill_Class_System;
	TAction *aFill_Class_Unit;
	TAction *aFill_Class_Detail;
	TcxEditorRow *rwSolutionDescr;
	TcxPageControl *pcAnalyseAction;
	TcxTabSheet *tsRSh_Analyses;
	TcxTabSheet *tsRSh_Action;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn1;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn2;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn3;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn4;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn5;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn6;
	TcxCategoryRow *vgAnalysesCategoryRow3;
	TcxCategoryRow *vgAnalysesCategoryRow4;
	TcxCategoryRow *vgAnalysesCategoryRow5;
	TcxCategoryRow *vgAnalysesCategoryRow6;
	TcxStyle *stlBackGroundLightBlue;
	TcxStyle *stlBackGroundLight;
	TcxEditorRow *rwKassantFailCategory;
	TcxPageControl *pcWeight;
	TcxTabSheet *tsWt_CalcWeight;
	TcxTabSheet *tsWt_CalcUnplannedRepair;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn7;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn8;
	TcxGroupBox *cxGroupBox7;
	TPanel *Panel14;
	TcxButton *cxButton9;
	TcxButton *cxButton12;
	TcxButton *cxButton13;
	TcxGroupBox *cxGroupBox8;
	TPanel *Panel22;
	TcxButton *cxButton30;
	TcxButton *cxButton39;
	TcxButton *cxButton40;
	TcxGroupBox *cxGroupBox9;
	TcxMemo *mmDescrNR;
	TAction *aSetKassant;
	TAction *aSetKnowMistake;
	TAction *aSaveUnplannedRepair;
	TAction *aLoadUnplannedRepair;
	TAction *aURepairChrono_Add;
	TAction *aURepairComp_Add;
	TcxDBTreeList *tlRepairChrono;
	TcxDBTreeList *tlRepairCompens;
	TcxDBTreeListColumn *cxDBTreeList2cxDBTreeListColumn2;
	TcxDBTreeListColumn *cxDBTreeList2cxDBTreeListColumn3;
	TcxDBTreeListColumn *cxDBTreeList2cxDBTreeListColumn4;
	TcxDBTreeListColumn *cxDBTreeList3cxDBTreeListColumn1;
	TcxDBTreeListColumn *cxDBTreeList3cxDBTreeListColumn2;
	TcxDBTreeListColumn *cxDBTreeList3cxDBTreeListColumn3;
	TcxDBTreeListColumn *cxDBTreeList3cxDBTreeListColumn4;
	TcxDBTreeListColumn *cxDBTreeList3cxDBTreeListColumn5;
	TClientDataSet *cdsRepairChrono;
	TDataSource *dsRepairChrono;
	TClientDataSet *cdsRepairCompens;
	TDataSource *dsRepairCompens;
	TcxVerticalGrid *vgRepair;
	TcxEditorRow *rwRepairNum;
	TcxEditorRow *rwRepairDate;
	TcxEditorRow *rwRepairTotalNDS;
	TcxCategoryRow *vgRepairCategoryRow1;
	TPanel *pnlResponsibleTree;
	TcxDBTreeList *tlResponsibleTree;
	TcxDBTreeListColumn *clmn_NSI_ResponsibleName;
	TdxStatusBar *dxStatusBar1;
	TAction *aSelect_NSI_Responsible;
	TcxTabSheet *tsRSh_NRE;
	TcxGroupBox *cxGroupBox6;
	TcxGroupBox *cxGroupBox10;
	TcxGroupBox *cxGroupBox11;
	TcxGroupBox *cxGroupBox15;
	TPanel *Panel16;
	TcxButton *cxButton17;
	TcxDBTreeList *tlHistoryNRE;
	TcxDBTreeListColumn *cxDBTreeListColumn14;
	TcxDBTreeListColumn *cxDBTreeListColumn15;
	TcxDBTreeListColumn *cxDBTreeListColumn16;
	TcxDBTreeListColumn *cxDBTreeList1cxDBTreeListColumn1;
	TcxDBTreeListColumn *cxDBTreeList1cxDBTreeListColumn2;
	TcxDBTreeListColumn *cxDBTreeList1cxDBTreeListColumn3;
	TcxDBTreeList *tlExpectRefusalNRE;
	TcxDBTreeListColumn *cxDBTreeListColumn21;
	TcxDBTreeListColumn *cxDBTreeListColumn22;
	TcxDBTreeListColumn *cxDBTreeListColumn23;
	TPanel *Panel18;
	TcxButton *cxButton23;
	TcxDBTreeListColumn *cxDBTreeList2cxDBTreeListColumn5;
	TcxMemo *cxMemo2;
	TPanel *Panel23;
	TcxButton *cxButton41;
	TcxDBTreeList *tlChronoNRE;
	TcxDBTreeListColumn *cxDBTreeListColumn24;
	TcxDBTreeListColumn *cxDBTreeListColumn29;
	TcxDBTreeListColumn *cxDBTreeListColumn30;
	TActionList *alNRE;
	TAction *aHistoryNREAdd;
	TAction *aChronologyAdd;
	TAction *aExpectRefusalAdd;
	TAction *aLoad_NRE;
	TClientDataSet *ClientDataSet1;
	TDataSource *DataSource1;
	TcxButton *cxButton18;
	TAction *aExpectRefusalEdit;
	TcxButton *cxButton19;
	TAction *aExpectRefusalDelete;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn9;
	TcxDBTreeListColumn *tlStoragecxDBTreeListColumn10;
	TdxBar *bmRShBar2;
	TcxBarEditItem *cxBarEditItem2;
	TcxBarEditItem *bListDoc;
	TdxBarButton *btnDoc;
	TAction *aLoadDoc;
	TAction *aFomingDoc;
	TAction *aURepairComEdit;
	TAction *aURepairComDel;
    void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aSearchLocExecute(TObject *Sender);
	void __fastcall aLoad_NSI_StatesExecute(TObject *Sender);
	void __fastcall aCloseExecute(TObject *Sender);
	void __fastcall aLoad_NSI_SafetyExecute(TObject *Sender);
	void __fastcall aLoad_NSI_KasantStateExecute(TObject *Sender);
	void __fastcall aLoad_NSI_InfoSourceTypeExecute(TObject *Sender);
	void __fastcall aSetValuesExecute(TObject *Sender);
	void __fastcall btneFailPlacePropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall btneResponsiblePropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall cbCriticalityPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aGetRunningASOUPExecute(TObject *Sender);
	void __fastcall aSaveRunningExecute(TObject *Sender);
	void __fastcall btneLocPropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aDataValidationExecute(TObject *Sender);
	void __fastcall cbTypePlacePropertiesChange(TObject *Sender);
	void __fastcall aSaveTrainExecute(TObject *Sender);
	void __fastcall aLoad_NSI_Brig_DepoExecute(TObject *Sender);
	void __fastcall aLoad_TeamExecutorExecute(TObject *Sender);
	void __fastcall aWork_EditExecute(TObject *Sender);
	void __fastcall aWork_AddExecute(TObject *Sender);
	void __fastcall aSaveExitExecute(TObject *Sender);
	void __fastcall aWorkLeader_AddExecute(TObject *Sender);
	void __fastcall aLoad_TeamLeaderExecute(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aLoad_TeamOwnerExecute(TObject *Sender);
	void __fastcall aProcessOwner_AddExecute(TObject *Sender);
	void __fastcall aWork_FinishExecute(TObject *Sender);
	void __fastcall btneLocPropertiesEditValueChanged(TObject *Sender);
	void __fastcall deFailDatePropertiesEditValueChanged(TObject *Sender);
	void __fastcall aSet_TabSheetExecute(TObject *Sender);
	void __fastcall aLoad_AnalysesExecute(TObject *Sender);
	void __fastcall aSaveAnalysesExecute(TObject *Sender);
	void __fastcall aAction_AddExecute(TObject *Sender);
	void __fastcall aLoad_ActionExecute(TObject *Sender);
	void __fastcall aAction_DeleteExecute(TObject *Sender);
	void __fastcall aAction_EditExecute(TObject *Sender);
	void __fastcall aLoad_Incident_RShExecute(TObject *Sender);
	void __fastcall aLoad_TabSheetExecute(TObject *Sender);
	void __fastcall aCommandSetActionExecute(TObject *Sender);
	void __fastcall aLoad_AttachExecute(TObject *Sender);
	void __fastcall aGetTrainInfoExecute(TObject *Sender);
	void __fastcall aAttach_AddExecute(TObject *Sender);
	void __fastcall aAttach_ShowExecute(TObject *Sender);
	void __fastcall aAttach_EditExecute(TObject *Sender);
	void __fastcall DMMainbtvRSh_AttachKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall DMMainclmnRSh_Attach_DownloadPropertiesButtonClick(TObject *Sender,
		  int AButtonIndex);
	void __fastcall DMMainclmnFilesDownloadPropertiesButtonClick(TObject *Sender,
		  int AButtonIndex);
	void __fastcall aAttach_DeleteExecute(TObject *Sender);
	void __fastcall aSave0Execute(TObject *Sender);
	void __fastcall aRestorePageCaptionExecute(TObject *Sender);
	void __fastcall aCheckDiffExecute(TObject *Sender);
	void __fastcall cbInfoSourceTypePropertiesEditValueChanged(TObject *Sender);
	void __fastcall aLoad_Incident_RunningExecute(TObject *Sender);
	void __fastcall aLoad_PauseExecute(TObject *Sender);
	void __fastcall aPause_AddExecute(TObject *Sender);
	void __fastcall aPause_SetActionExecute(TObject *Sender);
	void __fastcall aPause_DeleteExecute(TObject *Sender);
	void __fastcall tlPauseFocusedNodeChanged(TObject *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode);
	void __fastcall aWorkaround_SetActionExecute(TObject *Sender);
	void __fastcall aWorkaround_AddExecute(TObject *Sender);
	void __fastcall aWorkaround_EditExecute(TObject *Sender);
	void __fastcall aWorkaround_DeleteExecute(TObject *Sender);
	void __fastcall aStorage_AddExecute(TObject *Sender);
	void __fastcall aLoad_StorageExecute(TObject *Sender);
	void __fastcall aStorage_SetActionExecute(TObject *Sender);
	void __fastcall aStorage_EditExecute(TObject *Sender);
	void __fastcall aStorage_DeleteExecute(TObject *Sender);
	void __fastcall tlStorageFocusedNodeChanged(TObject *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode);
	void __fastcall aEscalation_SetActionExecute(TObject *Sender);
	void __fastcall aLoad_EscalationExecute(TObject *Sender);
	void __fastcall aEscalation_AddExecute(TObject *Sender);
	void __fastcall aLoad_NSI_CategoryExecute(TObject *Sender);
	void __fastcall aLoad_NSI_EnterDepot_ReasonExecute(TObject *Sender);
	void __fastcall tlExecutor_FocusedNodeChanged(TObject *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode);
	void __fastcall aSetActionExecute(TObject *Sender);
	void __fastcall aAttachSetActionExecute(TObject *Sender);
	void __fastcall aActionSetActionExecute(TObject *Sender);
	void __fastcall aWork_DeleteExecute(TObject *Sender);
	void __fastcall DMMainbtvRSh_AttachFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
          bool ANewItemRecordFocusingChanged);
	void __fastcall tlActionFocusedNodeChanged(TObject *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode);
	void __fastcall aRelationChildEditExecute(TObject *Sender);
	void __fastcall aLoad_RelationExecute(TObject *Sender);
	void __fastcall aRelationDeleteExecute(TObject *Sender);
	void __fastcall aRelation_SetActionExecute(TObject *Sender);
	void __fastcall btvRelationColumn2GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall btvRelationFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
          bool ANewItemRecordFocusingChanged);
	void __fastcall aRelationSetMainExecute(TObject *Sender);
	void __fastcall grdRelationFocusedViewChanged(TcxCustomGrid *Sender, TcxCustomGridView *APrevFocusedView,
		  TcxCustomGridView *AFocusedView);
	void __fastcall aRelationAddParentExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSetState_CloseExecute(TObject *Sender);
	void __fastcall aState_SetActionExecute(TObject *Sender);
	void __fastcall aSetState_InWorkExecute(TObject *Sender);
	void __fastcall aSetState_StorageExecute(TObject *Sender);
	void __fastcall aSetState_PauseExecute(TObject *Sender);
	void __fastcall aSetState_EscalationExecute(TObject *Sender);
	void __fastcall aSetState_ResolvedExecute(TObject *Sender);
	void __fastcall aStateHistoryExecute(TObject *Sender);
	void __fastcall eDateChangePropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall aLoad_NSI_SystemTreeExecute(TObject *Sender);
	void __fastcall aLoad_NSI_ReasonTreeExecute(TObject *Sender);
	void __fastcall aSelect_NSI_ReasonTreeExecute(TObject *Sender);
	void __fastcall vgAnalysesEditValueChanged(TObject *Sender, TcxCustomEditorRowProperties *ARowProperties);
	void __fastcall rwSystemEditPropertiesChange(TObject *Sender);
	void __fastcall rwUnitEditPropertiesChange(TObject *Sender);
	void __fastcall rwReasonEditPropertiesInitPopup(TObject *Sender);
	void __fastcall tlReasonTreeKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aFill_NSI_SolutionTypeExecute(TObject *Sender);
	void __fastcall rwLocNameEditPropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall rwFailPlaceEditPropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall rwSourcePredIDEditPropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall rwKasantResponseEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex);
	void __fastcall vgCommonEditValueChanged(TObject *Sender, TcxCustomEditorRowProperties *ARowProperties);
	void __fastcall rwTrainInfoBtnEditPropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall rwFailDateEditPropertiesEditValueChanged(TObject *Sender);
	void __fastcall vgRunningElderEditValueChanged(TObject *Sender, TcxCustomEditorRowProperties *ARowProperties);
	void __fastcall vgRunningJuniorEditValueChanged(TObject *Sender, TcxCustomEditorRowProperties *ARowProperties);
	void __fastcall rwInfoSourceTypeEditPropertiesEditValueChanged(TObject *Sender);
	void __fastcall mmDescrTeamEditing(TObject *Sender, bool &CanEdit);
	void __fastcall rwRSh_ResponsibleEditPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aFill_NSI_OwnerExecute(TObject *Sender);
	void __fastcall tlWorkaroundFocusedNodeChanged(TcxCustomTreeList *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode);
	void __fastcall tlReasonTreeGetNodeImageIndex(TcxCustomTreeList *Sender, TcxTreeListNode *ANode,
		  TcxTreeListImageIndexType AIndexType, TImageIndex &AIndex);
	void __fastcall rwResponsibleEditPropertiesChange(TObject *Sender);
	void __fastcall aEscalationAction_AddExecute(TObject *Sender);
	void __fastcall aPause_EditNewExecute(TObject *Sender);
	void __fastcall aLoad_EscalationActionExecute(TObject *Sender);
	void __fastcall aEscalationAction_ShowExecute(TObject *Sender);
	void __fastcall tlEscalationNewFocusedNodeChanged(TcxCustomTreeList *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode);
	void __fastcall aFill_Class_System_TypeExecute(TObject *Sender);
	void __fastcall aFill_Class_SystemExecute(TObject *Sender);
	void __fastcall aFill_Class_UnitExecute(TObject *Sender);
	void __fastcall rwSystemTypeEditPropertiesChange(TObject *Sender);
	void __fastcall aFill_Class_DetailExecute(TObject *Sender);
	void __fastcall rwSolutionTypeEditPropertiesChange(TObject *Sender);
	void __fastcall rwEnterDepotReasonEditPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aSetKassantExecute(TObject *Sender);
	void __fastcall rwKasantMarkEditPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aSetKnowMistakeExecute(TObject *Sender);
	void __fastcall aSaveUnplannedRepairExecute(TObject *Sender);
	void __fastcall aLoadUnplannedRepairExecute(TObject *Sender);
	void __fastcall aURepairChrono_AddExecute(TObject *Sender);
	void __fastcall aURepairComp_AddExecute(TObject *Sender);
	void __fastcall pcCommonDrawTabEx(TcxCustomTabControl *AControl, TcxTab *ATab, TFont *Font);
	void __fastcall pcCommonPageChanging(TObject *Sender, TcxTabSheet *NewPage, bool &AllowChange);
	void __fastcall aLoad_NSI_ResponsibleExecute(TObject *Sender);
	void __fastcall rwResponsibleEditPropertiesInitPopup(TObject *Sender);
	void __fastcall tlResponsibleTreeGetNodeImageIndex(TcxCustomTreeList *Sender, TcxTreeListNode *ANode,
          TcxTreeListImageIndexType AIndexType, TImageIndex &AIndex);
	void __fastcall aSelect_NSI_ResponsibleExecute(TObject *Sender);
	void __fastcall tlResponsibleTreeKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall aHistoryNREAddExecute(TObject *Sender);
	void __fastcall aChronologyAddExecute(TObject *Sender);
	void __fastcall aExpectRefusalAddExecute(TObject *Sender);
	void __fastcall aLoad_NREExecute(TObject *Sender);
	void __fastcall aExpectRefusalEditExecute(TObject *Sender);
	void __fastcall aExpectRefusalDeleteExecute(TObject *Sender);
	void __fastcall aLoadDocExecute(TObject *Sender);
	void __fastcall aFomingDocExecute(TObject *Sender);
	void __fastcall aURepairComEditExecute(TObject *Sender);
	void __fastcall aURepairComDelExecute(TObject *Sender);







private:
	StrctRecordSheet* ep_;
    StrctRecordSheet* ep_old_;
    int		vDefaultState;
    int		vDefaultKasantMark;
    int		vDefaultCriticalityID;
    int		vDefaultSourceTypeID;
    int		vDefaultTypePlaceID;
    bool	vDontClose;	// не закрывать, если сделали cancel при проверке изменений на закрытии
    TModalResult __fastcall FirmSelectDialog( int TypeDialog, StrctSelectFirm* sf );
    void __fastcall Save_Descr( int pGroupID, AnsiString pText );
    bool __fastcall CheckDiff( int PageTag );
    //void __fastcall Load_NSI_Eq(int p_class_id, TcxLookupComboBox *cb, TDataSource *ds, TClientDataSet *cds);
    //void __fastcall Load_NSI_Agg_Type(int p_parent_class_id, int p_class_id
    //                                 ,TcxLookupComboBox *cb, TDataSource *ds, TClientDataSet *cds);
    void __fastcall SaveRelationIU( int p_sheet_id, int p_parent_sheet_id );
    void __fastcall Load_Relation(int p_parent_sheet_id);
	void __fastcall SearchLoc(int kod_ser, int nom_loc);
	void __fastcall SafeSetFocus(TWinControl *Control);
	int __fastcall GetPage(TWinControl *Control);
	bool isRed;
	int tbIndex;
public:
	__fastcall TfrmRecordSheet(TComponent* Owner);
    TModalResult __fastcall Show( StrctRecordSheet* ep );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmRecordSheet *frmRecordSheet;
//---------------------------------------------------------------------------
#endif
