LOCAL lcPath, lcFile, lcSCX, lcPRG
lcPath = "C:\Users\prs01j1m\Documents\Visual FoxPro Projects\testgit\"  && Ovde unesi putanju do SCX fajlova

SET DEFAULT TO (lcPath)
SET SAFETY OFF  && Sprecava potvrdu prepisivanja fajlova

lnFiles = ADIR(laSCXFiles, "*.SCX")  && Ucitava sve SCX fajlove u niz

FOR lnI = 1 TO lnFiles
    lcSCX = laSCXFiles[lnI,1]
    lcPRG = FORCEEXT(lcSCX, "PRG")  && Menja ekstenziju u PRG

    COMPILE FORM (lcSCX)
    SAVE AS (lcPRG) ALL LIKE "*"
    
    ? "Converted: " + lcSCX + " -> " + lcPRG
ENDFOR

SET SAFETY ON