# Package: ScoreboardGenericPkg

## Types

| Name                   | Type                                     | Description               |
| ---------------------- | ---------------------------------------- | ------------------------- |
| ScoreboardReportType   | (REPORT_ERROR, REPORT_ALL, REPORT_NONE)  | replaced by affirmations  |
| ScoreboardIdType       |                                          |                           |
| ScoreboardIdArrayType  |                                          |                           |
| ScoreboardIdMatrixType |                                          |                           |
| ScoreBoardPType        |                                          |                           |
## Functions
- Push <font id="function_arguments">( constant ID     : in  ScoreboardIDType ; constant Item   : in  ExpectedType ) </font> <font id="function_return">return ()</font>
**Description**
Push items into the scoreboard/FIFO
- Push <font id="function_arguments">( constant ID     : in  ScoreboardIDType ; constant Tag    : in  string ; constant Item   : in  ExpectedType ) </font> <font id="function_return">return ()</font>
**Description**
Simple Tagged Scoreboard
- Check <font id="function_arguments">( constant ID           : in  ScoreboardIDType ; constant ActualData   : in ActualType ) </font> <font id="function_return">return ()</font>
**Description**
Check received item with item in the scoreboard/FIFO
- Check <font id="function_arguments">( constant ID           : in  ScoreboardIDType ; constant Tag          : in  string ; constant ActualData   : in  ActualType ) </font> <font id="function_return">return ()</font>
**Description**
Simple Tagged Scoreboard
- Pop <font id="function_arguments">( constant ID     : in  ScoreboardIDType ; variable Item   : out  ExpectedType ) </font> <font id="function_return">return ()</font>
**Description**
Pop the top item (FIFO) from the scoreboard/FIFO
- Pop <font id="function_arguments">( constant ID     : in  ScoreboardIDType ; constant Tag    : in  string ; variable Item   : out  ExpectedType ) </font> <font id="function_return">return ()</font>
**Description**
Simple Tagged Scoreboard
- Peek <font id="function_arguments">( constant ID     : in  ScoreboardIDType ; constant Tag    : in  string ; variable Item   : out ExpectedType ) </font> <font id="function_return">return ()</font>
**Description**
Peek at the top item (FIFO) from the scoreboard/FIFO
- Peek <font id="function_arguments">( constant ID     : in  ScoreboardIDType ; variable Item   : out  ExpectedType ) </font> <font id="function_return">return ()</font>
**Description**
Simple Scoreboard, no tag
- SetAlertLogID <font id="function_arguments">( constant ID              : in  ScoreboardIDType ; constant Name            : in  string ; constant ParentID        : in  AlertLogIDType := ALERTLOG_BASE_ID ; constant CreateHierarchy : in  Boolean := TRUE ) </font> <font id="function_return">return ()</font>
**Description**
SetAlertLogID - associate an AlertLogID with a scoreboard to allow integrated error reporting
- SetAlertLogID <font id="function_arguments">( constant ID     : in  ScoreboardIDType ; constant A      : AlertLogIDType ) </font> <font id="function_return">return ()</font>
**Description**
Use when an AlertLogID is used by multiple items (Model or other Scoreboards).  See also AlertLogPkg.GetAlertLogID
- Flush <font id="function_arguments">( constant ID          : in  ScoreboardIDType ; constant ItemNumber  :  in  integer ) </font> <font id="function_return">return ()</font>
**Description**
Flush - Remove elements in the scoreboard upto and including the one with ItemNumber
- Flush <font id="function_arguments">( constant ID          : in  ScoreboardIDType ; constant Tag         :  in  string ; constant ItemNumber  :  in  integer ) </font> <font id="function_return">return ()</font>
**Description**
Tagged Scoreboards - only removes items that also match the tag
- Deallocate <font id="function_arguments">( constant ID     : in  ScoreboardIDType ) </font> <font id="function_return">return ()</font>
**Description**
Generally these are not required.  When a simulation ends and 
- Initialize <font id="function_arguments">( constant ID     : in  ScoreboardIDType ) </font> <font id="function_return">return ()</font>
**Description**
Deletes all allocated items
- CheckFinish <font id="function_arguments">( ID                 : ScoreboardIDType ; FinishCheckCount   : integer ; FinishEmpty        : boolean ) </font> <font id="function_return">return ()</font>
- SetReportMode <font id="function_arguments">( constant ID           : in  ScoreboardIDType ; constant ReportModeIn : in  ScoreboardReportType ) </font> <font id="function_return">return ()</font>
**Description**
SetReportMode  