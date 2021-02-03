## Ordering PCBs From JLCPCB

For ordering the boards, go to JLCPCB.com, and click on "Quote Now" button.

![jlcpcb quote](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-quote.PNG)

JLCPCB (ShenzhenJLC Electronics Co., Ltd.), is the largest PCB prototype enterprise in China, and a high-tech manufacturer specializing in quick PCB prototype and small-batch PCB production. You can order a minimum of 5 PCBs for just $2.

First: Upload the gerber files for the board by clicking the "Add gerber file" button. You’ll notice a message at the bottom if the file is successfully uploaded.

![jlcpbc gerber](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-gerber.PNG)

A correctly uploaded gerber folder renders the board as follows:

![jlcpcb render](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-gerber-render.PNG)

Second: In order to get the board assembled (optional, based on the project requirements), select the "SMT Assembly option. It is important to select the side of the PCB that needs to be assembled, as well as the quantity for SMT. Press the "Confirm" button, then press the "Next" button.

![jlcpcb smt](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-smt-option.PNG)

Third: upload the BOM (Bill of Material) and CPL (Component Placement List) files and click the "Next" button. It is necessary to make sure that each of these files follow the jlcpcb specified BOM and CPL formats, respectively:

- [Sample BOM](https://jlcpcb.com//video/JLCSMT_Sample_BOM1.xlsx?_ga=2.42560357.1905056644.1612161700-100444678.1610257845)
- [Sample CPL](https://jlcpcb.com//video/JLCSMT_Sample_CPL1.xlsx?_ga=2.42560357.1905056644.1612161700-100444678.1610257845)
- [SMT FAQ's](https://support.jlcpcb.com/category/78-smt-assembly?_ga=2.42560357.1905056644.1612161700-100444678.1610257845)

Note: If there is an issue with the BOM/CPL formatting, the the page will keep erroring out until it is resolved.

![jlcpcb bom](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-bom-cpl.PNG)

Fourth: The parts are automatically detected through the uploaded BOM. They are also matched against jlcpcb's in-stock parts. It is important to go through each row and confirm if the auto-detected parts are the desired parts. Some parts will remain undetected if they cannot be assembled through SMT and require manual assembly post-deilvery.

![jlcpcb parts](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-smt-part-selection.PNG)

Fifth: The website renders an assembled board using the CPL file. This feature can be used to review the placement of the components (including orientation). Once carefull reviewed, the next step is to download a list of parts remaining to be assembled towards the bottom of this page view. It is important to place an order for the remaining components to be manually assembled upon delivery.

![jlcpcb review](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-review-part-placement.PNG)

Sixth: Click on the “Save to Cart” button. Then, click on the "Secure Checkout" button.

![jlcpcb checkout](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-checkout.PNG)

Last: Add the payment details and choose the suitable delivery method (this includes FedEx, DHL, and standard mail options). Then, place the order.

Optional: To review the production status of the board, click on the "Order History" button under username. Then, click on In Production > view progress to obtain timestamps for each of the production steps in real time.

![jlcpcb production](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-order-history.PNG)

![jlcpcb production progress](https://github.com/Olin-Rocketry/power/blob/master/img/jlcpcb-production-progress.PNG)

## KICAD BOM to JLCPCB Compatible Files

Converts kicad .csv BOM files to JLCSMT compatible CPL file.

Steps:

1. First create a BOM file on KiCAD layout: File > Fabrication Outputs > BOM File > /kicadbom.csv

2. Create a POS file on KiCAD layout: File > Fabrication Outputs > Footprint Position File > /kicadpos.csv

   ​ \*_save these files in /fab_outputs or move to /fab_outputs_

3. Open terminal and navigate to "fab_outputs/"

4. Run `python3 kicad2jlcpcbCPL.py kicadpos.csv CPL.csv`

5. Run `python3 kicad2lcscBOM.py kicadbom.csv BOM.csv`

Optional:
JLC provides a parts library with available parts for SMT service: https://jlcpcb.com/video/jlcsmt_parts_library.xls
If you want to get suggestions for possible part numbers, use the script the following way:

`python3 kicad2lcscBOM.py input.csv output.csv jlcsmt_parts_library.csv`

The search was optimized for my needs. Eg Basic parts are preffered as there are no additional costs.
This is super hacking and might not work for your needs, but for me it is a nice way of quickly matching the recommended part numbers.

Sample output:

```
niklas@niklas-precision:~/pnptools$ python3 kicad2lcscBOM.py pcb_module.csv lcsc_bom.csv jlcsmt_parts_library.csv
Using LCSC part lib
########    Part 1k in 0603_R   #########
Most likely:
1KΩ (102) ±5%, Basic Part, 31%:
C20197
1KΩ (1001) ±1%, Basic Part, 31%:
C21190
91KΩ (9102) ±1%, Basic Part, 30%:
C23265
########    Part MPCIE-Socket in mpcie-full-card-edit   #########
Most likely:
Nothing found :(
########    Part 1n in 0603_C   #########
Most likely:
1nF (102) ±10% 50V X7R, Basic Part, 35%:
C1588
1nH ±0.3nH, Extended Part, 30%:
C1027
1nH ±0.3nH, Extended Part, 30%:
C41902
########    Part 100n in 0603_C   #########
Most likely:
100nH ±5%, Extended Part, 57%:
C49329
100nH ±5%, Extended Part, 57%:
C74310
100nF (104) ±10% 50V X7R, Basic Part, 47%:
C14663
########    Part LED in LED_0603   #########
Most likely:
翠绿LED, Extended Part, 50%:
C205443
翠绿LED, Extended Part, 50%:
C118334
黄灯 贴片LED, Extended Part, 31%:
C84268
########    Part MAX485E in SOIC-8_150mil   #########
Most likely:
MAX3485ESA, Extended Part, 82%:
C18148
MAX485ESA+T, Extended Part, 77%:
C19738
MAX3485EESA, Extended Part, 77%:
C9943
########    Part 120 in 0603_R   #########
Most likely:
120Ω (1200) ±1%, Basic Part, 50%:
C22787
12KΩ (1202) ±1%, Basic Part, 50%:
C22790
1.2MΩ (1204) ±1%, Basic Part, 48%:
C22766
########    Part 220u in L_Bourns-SRN4018   #########
Most likely:
Nothing found :(
########    Part 0R25 in 0805_R   #########
Most likely:
0Ω (0R0) ±1%, Basic Part, 42%:
C17477
3MΩ (305) ±5%, Basic Part, 41%:
C26117
0.2Ω (0R2) ±5%, Extended Part, 40%:
C247066
########    Part MIC5504-3.3YM5 in SOT-23-5   #########
Most likely:
MIC5504-3.3YM5-TR, Extended Part, 90%:
C88419
MIC5205-3.3YM5, Extended Part, 85%:
C37970
MIC5219-3.3YM5, Extended Part, 78%:
C29613
########    Part 10u in 0805_C   #########
Most likely:
10uH ±10%, Basic Part, 66%:
C1046
10uH±5%, Extended Part, 54%:
C76742
10uF (106) ±10% 25V X5R, Basic Part, 42%:
C15850
```
