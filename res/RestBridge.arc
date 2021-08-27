//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "REST Endpoint Configuration" 200 200 800 464
BEGIN
    EVENTMASK 0
    NAME "Window101"
    STATICTEXT 100, "Mapping:", 375, 25, 115, 25
    BEGIN
        NAME "Static Text100"
        NOT WORDWRAP
    END

    INPUTE 102, "", 500, 20, 150, 25
    BEGIN
        GROUP
        NAME "inpeMapping"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 103, "Timeout:", 375, 55, 115, 25
    BEGIN
        NAME "Static Text103"
        NOT WORDWRAP
    END

    INPUTN 104, "", 500, 50, 150, 25
    BEGIN
        GROUP
        NAME "inpnTimeout"
        RESTORESTRING "0"
        NOT DRAGENABLED
        NOT INSERTMODE
    END

    STATICTEXT 105, "Program Prefix:", 375, 85, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 106, "", 500, 80, 150, 25
    BEGIN
        GROUP
        NAME "inpeProgramPrefix"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 107, "Program Suffix:", 375, 115, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 108, "", 500, 110, 150, 25
    BEGIN
        GROUP
        NAME "inpeProgramSuffix"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    CHECKBOX 109, "Use getAllowedFilters() if applicable", 376, 200, 200, 25
    BEGIN
        GROUP
        NAME "chbUseGetAllowedFilters"
    END

    STATICTEXT 110, "Config File:", 375, 235, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 111, "", 500, 230, 241, 25
    BEGIN
        GROUP
        NAME "inpeConfigFile"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 112, "...", 750, 231, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseConfigFile"
    END

    STATICTEXT 113, "Working Directory:", 375, 265, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 114, "", 500, 260, 241, 25
    BEGIN
        GROUP
        NAME "inpeWorkingDirectory"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 115, "...", 750, 261, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseWorkingDirectory"
    END

    STATICTEXT 116, "Auth Program:", 375, 295, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 117, "", 500, 290, 241, 25
    BEGIN
        GROUP
        NAME "inpeAuthProgram"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 118, "...", 750, 291, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseAuthenticationFile"
    END

    STATICTEXT 119, "Request Log:", 375, 325, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 120, "", 500, 320, 241, 25
    BEGIN
        GROUP
        NAME "inpeRequestLog"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 121, "...", 750, 321, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseRequestLogFile"
    END

    STATICTEXT 122, "Input Handler:", 375, 355, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 123, "", 500, 350, 241, 25
    BEGIN
        GROUP
        NAME "inpeInputHandler"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 124, "...", 750, 351, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseInputHandler"
    END

    STATICTEXT 125, "Output Handler:", 375, 385, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 126, "", 500, 380, 241, 25
    BEGIN
        GROUP
        NAME "inpeOutputHandler"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 127, "...", 750, 381, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseOutputHandler"
    END

    STATICTEXT 128, "Default Charset:", 375, 145, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    LISTBUTTON 129, "default\nUS-ASCII\nISO-8859-1\nUTF-8\nUTF-16BE\nUTF-16LE\nUTF-16\n", 500, 140, 150, 150
    BEGIN
        GROUP
        NAME "lbDefaultCharset"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 130, "Adapter Term: ", 375, 175, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 131, "", 500, 170, 150, 25
    BEGIN
        GROUP
        NAME "inpeAdapterTerm"
        PADCHARACTER 32
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 132, "Add Context", 20, 430, 100, 25
    BEGIN
        GROUP
        NAME "btnAddContext"
    END

    BUTTON 133, "Add Endpoint", 130, 430, 100, 25
    BEGIN
        GROUP
        NAME "btnAddBridge"
    END

    BUTTON 134, "Remove Endpoint", 240, 430, 100, 25
    BEGIN
        GROUP
        NAME "btnRemoveBridge"
    END

    BUTTON 135, "Cancel", 460, 430, 100, 25
    BEGIN
        GROUP
        NAME "btnCancel"
    END

    BUTTON 136, "Save", 570, 430, 100, 25
    BEGIN
        GROUP
        NAME "btnSave"
    END

    BUTTON 137, "OK", 680, 430, 100, 25
    BEGIN
        GROUP
        NAME "btnOK"
    END

    BUTTON 138, "Preview Code", 680, 20, 100, 25
    BEGIN
        GROUP
        NAME "btnPreviewCode"
    END

    TREE 139, 20, 20, 320, 385
    BEGIN
        NAME "treeContext"
    END

END

