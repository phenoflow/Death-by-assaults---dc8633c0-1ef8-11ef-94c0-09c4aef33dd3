# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"Y04.6","system":"icd10"},{"code":"Y04.1","system":"icd10"},{"code":"Y04.9","system":"icd10"},{"code":"Y04.7","system":"icd10"},{"code":"Y04","system":"icd10"},{"code":"Y04.8","system":"icd10"},{"code":"Y04.3","system":"icd10"},{"code":"Y04.5","system":"icd10"},{"code":"Y04.4","system":"icd10"},{"code":"Y04.2","system":"icd10"},{"code":"Y04.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-assaults-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-assaults-unnatural-cause-force---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-assaults-unnatural-cause-force---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-assaults-unnatural-cause-force---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
