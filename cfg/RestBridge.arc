//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "REST Endpoint Configuration" 200 200 800 464
BEGIN
    EVENTMASK 0
    KEYBOARDNAVIGATION
    NOT MAXIMIZABLE
    NAME "Window101"
    NOT SIZABLE
    STATICTEXT 100, "Mapping:", 375, 25, 115, 25
    BEGIN
        NAME "Static Text100"
        NOT WORDWRAP
    END

    INPUTE 102, "", 500, 20, 150, 25
    BEGIN
        NAME "inpeMapping"
        PADCHARACTER 32
        NOT TABTRAVERSABLE
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
        NOT DRAGENABLED
    END

    STATICTEXT 109, "Adapter Term: ", 375, 175, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 110, "", 500, 170, 150, 25
    BEGIN
        GROUP
        NAME "inpeAdapterTerm"
        PADCHARACTER 32
        NOT DRAGENABLED
    END

    STATICTEXT 111, "Default Charset:", 375, 145, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    LISTEDIT 112, "", 500, 140, 150, 150
    BEGIN
        NAME "leDefaultCharset"
        SELECTIONHEIGHT 25
        NOT DRAGENABLED
    END

    CHECKBOX 113, "Use getAllowedFilters() if applicable", 376, 200, 200, 25
    BEGIN
        GROUP
        NAME "chbUseGetAllowedFilters"
    END

    STATICTEXT 114, "Config File:", 375, 235, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 115, "", 500, 230, 241, 25
    BEGIN
        GROUP
        NAME "inpeConfigFile"
        PADCHARACTER 32
        NOT DRAGENABLED
    END

    BUTTON 116, "...", 750, 231, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseConfigFile"
    END

    STATICTEXT 117, "Working Directory:", 375, 265, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 118, "", 500, 260, 241, 25
    BEGIN
        GROUP
        NAME "inpeWorkingDirectory"
        PADCHARACTER 32
        NOT DRAGENABLED
    END

    BUTTON 119, "...", 750, 261, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseWorkingDirectory"
    END

    STATICTEXT 120, "Auth Program:", 375, 295, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 121, "", 500, 290, 241, 25
    BEGIN
        GROUP
        NAME "inpeAuthProgram"
        PADCHARACTER 32
        NOT DRAGENABLED
    END

    BUTTON 122, "...", 750, 291, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseAuthenticationFile"
    END

    STATICTEXT 123, "Request Log:", 375, 325, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 124, "", 500, 320, 241, 25
    BEGIN
        GROUP
        NAME "inpeRequestLog"
        PADCHARACTER 32
        NOT DRAGENABLED
    END

    BUTTON 125, "...", 750, 321, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseRequestLogFile"
    END

    STATICTEXT 126, "Input Handler:", 375, 355, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 127, "", 500, 350, 241, 25
    BEGIN
        GROUP
        NAME "inpeInputHandler"
        PADCHARACTER 32
        NOT DRAGENABLED
    END

    BUTTON 128, "...", 750, 351, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseInputHandler"
    END

    STATICTEXT 129, "Output Handler:", 375, 385, 115, 25
    BEGIN
        NAME "Static Text105"
        NOT WORDWRAP
    END

    INPUTE 130, "", 500, 380, 241, 25
    BEGIN
        GROUP
        NAME "inpeOutputHandler"
        PADCHARACTER 32
        NOT DRAGENABLED
    END

    BUTTON 131, "...", 750, 381, 30, 25
    BEGIN
        GROUP
        NAME "btnBrowseOutputHandler"
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