.DELETE_ON_ERROR:

all: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/pre_em.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.0.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.0.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param0.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R0.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.1.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.1.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param1.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R1.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.2.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.2.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param2.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R2.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.3.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.3.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param3.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R3.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.4.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.4.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param4.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R4.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.5.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.5.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param5.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R5.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/pre_em.OK: 
	rm -f -r /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT
	mkdir -p /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT
	cp -f /home/jyang/GIT/BGW-TWAS/Example/hypval.txt /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current
	> /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/EM_result.txt
	> /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Rout.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/pre_em.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.0.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/pre_em.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Cis_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6 
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.0.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.0.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/pre_em.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Trans_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6 
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.0.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param0.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.0.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.0.OK 
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep paramtemp | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/paramtemp0.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep hyptemp | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp0.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep log | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/log0.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param0.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R0.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param0.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/pre_em.OK
	Rscript --no-save --no-restore --verbose /home/jyang/GIT/BGW-TWAS/bin/Mstep.R /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp0.txt 0 1e-6 0.1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/EM_result.txt /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current MCMC >> /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Rout.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R0.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.1.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R0.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Cis_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.1.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.1.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R0.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Trans_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.1.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param1.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.1.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.1.OK 
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep paramtemp | sort ` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/paramtemp1.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep hyptemp | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp1.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep log | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/log1.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param1.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R1.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param1.OK
	Rscript --no-save --no-restore --verbose /home/jyang/GIT/BGW-TWAS/bin/Mstep.R /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp1.txt 1 1e-6 0.1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/EM_result.txt /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current MCMC >> /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Rout.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R1.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.2.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R1.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Cis_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.2.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.2.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R1.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Trans_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.2.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param2.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.2.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.2.OK 
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep paramtemp | sort ` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/paramtemp2.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep hyptemp | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp2.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep log | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/log2.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param2.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R2.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param2.OK
	Rscript --no-save --no-restore --verbose /home/jyang/GIT/BGW-TWAS/bin/Mstep.R /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp2.txt 2 1e-6 0.1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/EM_result.txt /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current MCMC >> /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Rout.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R2.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.3.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R2.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Cis_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.3.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.3.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R2.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Trans_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.3.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param3.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.3.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.3.OK 
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep paramtemp | sort ` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/paramtemp3.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep hyptemp | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp3.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep log | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/log3.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param3.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R3.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param3.OK
	Rscript --no-save --no-restore --verbose /home/jyang/GIT/BGW-TWAS/bin/Mstep.R /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp3.txt 3 1e-6 0.1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/EM_result.txt /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current MCMC >> /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Rout.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R3.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.4.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R3.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Cis_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.4.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.4.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R3.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Trans_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.4.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param4.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.4.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.4.OK 
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep paramtemp | sort ` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/paramtemp4.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep hyptemp | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp4.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep log | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/log4.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param4.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R4.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param4.OK
	Rscript --no-save --no-restore --verbose /home/jyang/GIT/BGW-TWAS/bin/Mstep.R /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp4.txt 4 1e-6 0.1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/EM_result.txt /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current MCMC >> /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Rout.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R4.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.5.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R4.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Cis_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.5.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.5.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R4.OK
	/home/jyang/GIT/BGW-TWAS/bin/run_Estep.sh /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC Trans_geno_block 499 1.02401 10000 10000 /home/jyang/GIT/BGW-TWAS/Example/ExampleData/LDdir /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_scores /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current 1040101 1065571 19 1e6
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.5.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param5.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Cis_geno_block.5.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/Trans_geno_block.5.OK 
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep paramtemp | sort ` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/paramtemp5.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep hyptemp | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp5.txt
	cat `ls -d -1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/output/** | grep log | sort` > /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/log5.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param5.OK

/home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R5.OK: /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/cp_param5.OK
	Rscript --no-save --no-restore --verbose /home/jyang/GIT/BGW-TWAS/bin/Mstep.R /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/hyptemp5.txt 5 1e-6 0.1 /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/EM_result.txt /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/hypval.current MCMC >> /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Rout.txt
	touch /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/R5.OK

clean_err: 
	-rm -rf /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/slurm_err/*.err
clean: 
	-rm -rf /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/*.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/Eoutput/*.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/OUT/*.OK /home/jyang/GIT/BGW-TWAS/Example/ExampleWorkDir/ABCA7_EM_MCMC/slurm_err/*.err