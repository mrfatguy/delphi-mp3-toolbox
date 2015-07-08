unit pasProcs;

interface

uses Sysutils;

function ClearWrongTag(TagField: String): String;

implementation

function ClearWrongTag(TagField: String): String;
begin
        Result:=TagField;
        
        if TagField='[notag]' then Result:='[brak danych]';
        if TagField='[not found: ]' then Result:='[brak danych]';
        if TagField='Unknown Artist' then Result:='[brak danych]';
        if TagField='Unknown Title' then Result:='[brak danych]';
        if ExtractFilePath(TagField)<>'' then Result:='[brak danych]';
end;

end.
