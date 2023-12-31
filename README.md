# LogbogRoA

25/08:
I dag har vi haft om dioder, og diverse dele som skal benyttes til vores studypoints-opgave, hvor vi skal lave et lyskryds gennem C++.
Udover det, har vi også lært yderligere omrking C++, hvor hovedområdet har været class.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

28/08:
I dag har vi arbejdet på vores trafiklysopgave. Der blev tænkt og overvejet forskellige løsninger, men vi valgte at gå med switch case, hvor der blev switched på de forskellige states. Der var et par ting,, som drillede ift. array, men det blev fikset, og opgaven blev løst.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

29/08:
I dag har vi arbejdet videre med breadboardet og dioderne, og har dertil fået knapper og andre dele, som skulle tage imod input. Vi lærte om nogle måder, hvorpå vi kunne kode os frem til, at breadboardet kunne modtage disse input. Vi kunne alle vælge noget forskelligt, som vi skulle lave en opgave ud fra, og vi valgte en farvesensor, som via vores kode kan fortælle hvilken farve et fysisk objekt har, ved brug af RGB.

LINK til koden: https://github.com/LucasHemm/RoALog/tree/main/LightSensor

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

31/08:
I dag har vi lært omkring opsætning af wifi til vores nodemcu, og benytte os af et framework til at tænde og slukke for dioder. Udover det har vi kodet videre på den kode, og har gjort det muligt at tænde for 3 andre dioder, som vi selv har tilføjet via breadboardet.

LINK til koden: https://github.com/LucasHemm/RoALog/tree/main/WiFiExample

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

5/9:
I dag fik vi en smagsprøve på 3D-printing. Vi blev introduceret til en ny 3D-printer, fik et indblik i dens funktion og begyndte at arbejde med openSCAD og JavaCSG. Disse værktøjer tillader os at skrive Java-kode, der kan omsættes til openSCAD og bruges til at skabe 3D-modeller, som vi kan printe.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

7/9:
I dag har vi fortsat vores arbejde med JavaCSG ved at designe beholdere til både en NodeMCU og en større NodeMCU version 3. Desuden blev vi introduceret til Prusa, et værktøj til at forberede og forberede 3D-print.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

12/9
I dag blev vi præsenteret for vores semesterprojekt, som er et togprojekt. Planen er at vi skal fremstille en række dele ved hjælp af 3D-printing, herunder skinner, klik-systemer og selve togene. I dag gik vi i gang med at udvikle klik-systemet. Vi brugte tid i grupper på at brainstorme idéer til forskellige typer klik-systemer. Til sidst endte vi med et system, der mindede meget om noget, som Tobias tidligere havde arbejdet med. Dette system fungerer ved at klikke sammen.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

15/9
I dag fortsatte vi vores arbejde med klik-systemet. Vi udviklede kode specifikt til dette system og udførte adskillige testrunder for at nå frem til den mest optimale løsning. Desuden skabte vi en mere omfattende model af klik-systemet samt en rund udgave, som er særlig vigtig, når det skal implementeres på skinner med behov for sporomskiftning og kurver.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

19/9
I dag arbejdede vi videre med Tobias for at udvikle en universel og dynamisk metode til at implementere og bruge vores klikkesystem. Vi benyttede både unit- og delta-mål, hvilket vil gøre det lettere at justere og tilpasse disse klik og huller til vores andre projekter eller til videre udvikling af togbane-projektet i fremtiden.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

22/9
I dag har vi opdelt os i grupper, og den indledende idégenerering er begyndt. Vi har kastet ideer frem og tilbage og sluttet os sammen med en anden gruppe. Til at starte med, havde vi planer om at lave en ølstation til togsystemet, men efter at klassen har ændret kurs væk fra toget, har vores tid været brugt på idégenerering, der hidtil har drejet sig om en automatisk vinåbner, der anvender en fugtighedsmåler til NodeMCU'en.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

26/9
Vi fortsatte vores arbejde baseret på de idéer, vi brainstormede sidste uge, i forbindelse med vores projekt, som involverer brug af 3D-udskrivning, en motor og en fugtmåler til at opbygge en maskine, der kan skænke vin. Vi har designet den første del til vores krog, nemlig en arm med et hul og et led.
![image](https://github.com/hindsMarcus/LogbogRoA/assets/100131450/c46db1fa-0fdd-4d0f-9436-5376b5eb29ad)


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

29/9
I dag arbejdede vi på projektet, inklusive at programmere fugtighedsmåleren til koppen og udføre 3D-udskrivning. Dette omfattede klikkere til samling samt udskrivning af en kopholder og en del af fugtighedsmålerens montering, alt i virkelig god kvalitet. Dog er det kun lavet ud fra målene på de kopper, som vi har i kantinen.
![272184098-d139ca3c-b008-44eb-998b-9169e09ae55e](https://github.com/hindsMarcus/LogbogRoA/assets/100131450/a9293126-973e-41bb-b6a5-2d929678b77d)


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3/10
I dag fortsatte vi med projektet. Vi lykkedes med at 3D-udskrive den første udgave af den anden del af monteringen til fugtighedsmåleren. Desuden arbejdede vi på at optimere WIFI-delen af koden og på at programmere krogen til at fastgøre den til papvinens tud i JavaCSG.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

6/10
I dag arbejdede vi videre med koden og monteringen til fugtighedsmåleren. Designet fra sidst var en god start, men manglede en vigtig komponent, nemlig en væg i enden for at forhindre måleren i at falde ned i vinen. Efter at have udskrevet en opdateret version med væggen, justerede vi kopholderen, så den passede bedre til måleren og kunne nøjagtigt måle vinen i koppen for at stoppe hældningen korrekt. Vi startede også på første version af vores spole.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

10/10
I dag gik vi i gang med at arbejde på en ny spole. Efter at have en samtale med Tobias blev det klart, at den havde nogle mangler, som førte til en betydelig redesign. Nu ligner den i stedet mere et hjul, hvilket gør den betydeligt mere stabil og kræver mindre kraft for at rotere sammenlignet med første version.
![273832109-0d6512e5-e59e-408d-aaed-1a3cec73616a](https://github.com/hindsMarcus/LogbogRoA/assets/100131450/7d620a19-6d3d-4859-990c-ae92d6e9f7d6)


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

13/10
I dag var vores sidste officielle time, og vi var så meget i mål, som vi kunne komme. Der blev lavet en sidste version af spolen, og derefter testet koden til både motor og fugtighedsmåler. Vi prøvede også at printe en "modhage" til papvinen, så den ikke ville bøje tutten, når motoren startede. Den passede dog ikke, men idéen var ellers god.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
