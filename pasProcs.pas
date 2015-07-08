unit pasProcs;

interface

uses Sysutils;

function ClearWrongTag(TagField: String): String;

implementation

function ClearWrongTag(TagField: String): String;
begin
        Result:=TagField;
        
        if TagField='[notag]' then Result:='[n/a]';
        if TagField='[not found: ]' then Result:='[n/a]';
        if TagField='Unknown Artist' then Result:='[n/a]';
        if TagField='Unknown Title' then Result:='[n/a]';
        if ExtractFilePath(TagField)<>'' then Result:='[n/a]';
end;

end.
