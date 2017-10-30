#!/bin/bash

# Binaries

LAMMPS=${HOME}/src/lammps/src/lmp_serial
ALAMODE_ROOT=${HOME}/Work/alamode/

# Generate displacement patterns

cat << EOF > si_alm0.in
&general
  PREFIX = si222
  MODE = suggest
  NAT = 64; NKD = 1
  KD = Si
/

&interaction
  NORDER = 2  # 1: harmonic, 2: cubic, ..
/

&cell
  20.406 # factor in Bohr unit
  1.0 0.0 0.0 # a1
  0.0 1.0 0.0 # a2
  0.0 0.0 1.0 # a3
/

&cutoff 
  Si-Si 7.4 7.4
/


&position
  1 0.0000000000000000 0.0000000000000000 0.0000000000000000   
  1 0.0000000000000000 0.0000000000000000 0.5000000000000000
  1 0.0000000000000000 0.2500000000000000 0.2500000000000000
  1 0.0000000000000000 0.2500000000000000 0.7500000000000000
  1 0.0000000000000000 0.5000000000000000 0.0000000000000000
  1 0.0000000000000000 0.5000000000000000 0.5000000000000000
  1 0.0000000000000000 0.7500000000000000 0.2500000000000000
  1 0.0000000000000000 0.7500000000000000 0.7500000000000000
  1 0.1250000000000000 0.1250000000000000 0.1250000000000000
  1 0.1250000000000000 0.1250000000000000 0.6250000000000000
  1 0.1250000000000000 0.3750000000000000 0.3750000000000000
  1 0.1250000000000000 0.3750000000000000 0.8750000000000000
  1 0.1250000000000000 0.6250000000000000 0.1250000000000000
  1 0.1250000000000000 0.6250000000000000 0.6250000000000000
  1 0.1250000000000000 0.8750000000000000 0.3750000000000000
  1 0.1250000000000000 0.8750000000000000 0.8750000000000000
  1 0.2500000000000000 0.0000000000000000 0.2500000000000000
  1 0.2500000000000000 0.0000000000000000 0.7500000000000000
  1 0.2500000000000000 0.2500000000000000 0.0000000000000000
  1 0.2500000000000000 0.2500000000000000 0.5000000000000000
  1 0.2500000000000000 0.5000000000000000 0.2500000000000000
  1 0.2500000000000000 0.5000000000000000 0.7500000000000000
  1 0.2500000000000000 0.7500000000000000 0.0000000000000000
  1 0.2500000000000000 0.7500000000000000 0.5000000000000000
  1 0.3750000000000000 0.1250000000000000 0.3750000000000000
  1 0.3750000000000000 0.1250000000000000 0.8750000000000000
  1 0.3750000000000000 0.3750000000000000 0.1250000000000000
  1 0.3750000000000000 0.3750000000000000 0.6250000000000000
  1 0.3750000000000000 0.6250000000000000 0.3750000000000000
  1 0.3750000000000000 0.6250000000000000 0.8750000000000000
  1 0.3750000000000000 0.8750000000000000 0.1250000000000000
  1 0.3750000000000000 0.8750000000000000 0.6250000000000000
  1 0.5000000000000000 0.0000000000000000 0.0000000000000000
  1 0.5000000000000000 0.0000000000000000 0.5000000000000000
  1 0.5000000000000000 0.2500000000000000 0.2500000000000000
  1 0.5000000000000000 0.2500000000000000 0.7500000000000000
  1 0.5000000000000000 0.5000000000000000 0.0000000000000000
  1 0.5000000000000000 0.5000000000000000 0.5000000000000000
  1 0.5000000000000000 0.7500000000000000 0.2500000000000000
  1 0.5000000000000000 0.7500000000000000 0.7500000000000000
  1 0.6250000000000000 0.1250000000000000 0.1250000000000000
  1 0.6250000000000000 0.1250000000000000 0.6250000000000000
  1 0.6250000000000000 0.3750000000000000 0.3750000000000000
  1 0.6250000000000000 0.3750000000000000 0.8750000000000000
  1 0.6250000000000000 0.6250000000000000 0.1250000000000000
  1 0.6250000000000000 0.6250000000000000 0.6250000000000000
  1 0.6250000000000000 0.8750000000000000 0.3750000000000000
  1 0.6250000000000000 0.8750000000000000 0.8750000000000000
  1 0.7500000000000000 0.0000000000000000 0.2500000000000000
  1 0.7500000000000000 0.0000000000000000 0.7500000000000000
  1 0.7500000000000000 0.2500000000000000 0.0000000000000000
  1 0.7500000000000000 0.2500000000000000 0.5000000000000000
  1 0.7500000000000000 0.5000000000000000 0.2500000000000000
  1 0.7500000000000000 0.5000000000000000 0.7500000000000000
  1 0.7500000000000000 0.7500000000000000 0.0000000000000000
  1 0.7500000000000000 0.7500000000000000 0.5000000000000000
  1 0.8750000000000000 0.1250000000000000 0.3750000000000000
  1 0.8750000000000000 0.1250000000000000 0.8750000000000000
  1 0.8750000000000000 0.3750000000000000 0.1250000000000000
  1 0.8750000000000000 0.3750000000000000 0.6250000000000000
  1 0.8750000000000000 0.6250000000000000 0.3750000000000000
  1 0.8750000000000000 0.6250000000000000 0.8750000000000000
  1 0.8750000000000000 0.8750000000000000 0.1250000000000000
  1 0.8750000000000000 0.8750000000000000 0.6250000000000000
/

EOF

${ALAMODE_ROOT}/alm/alm si_alm0.in > alm.log


# Generate structure files of LAMMPS
mkdir displace; cd displace/

python ${ALAMODE_ROOT}/tools/displace.py --LAMMPS ../Si222.lammps --prefix harm --mag 0.01 ../si222.pattern_HARMONIC >> run.log
python ${ALAMODE_ROOT}/tools/displace.py --LAMMPS ../Si222.lammps --prefix cubic --mag 0.04 ../si222.pattern_ANHARM3 >> run.log

cp ../Si.sw .
cp ../in.sw .

# Run LAMMPS
for ((i=1; i<=1; i++))
do
   cp harm${i}.lammps tmp.lammps
   $LAMMPS < in.sw >> run.log
   mv COORD COORD.harm${i}
   mv FORCE FORCE.harm${i}
done

for ((i=1; i<=20; i++))
do
   suffix=`echo ${i} | awk '{printf("%02d", $1)}'`
   cp cubic${suffix}.lammps tmp.lammps
   $LAMMPS < in.sw >> run.log
   mv COORD COORD.cubic${suffix}
   mv FORCE FORCE.cubic${suffix}
done

# Collect data
python ${ALAMODE_ROOT}/tools/extract.py --LAMMPS ../Si222.lammps --get disp  COORD.harm* > disp_harm.dat
python ${ALAMODE_ROOT}/tools/extract.py --LAMMPS ../Si222.lammps --get force FORCE.harm* > force_harm.dat
python ${ALAMODE_ROOT}/tools/extract.py --LAMMPS ../Si222.lammps --get disp  COORD.cubic* > disp_cubic.dat
python ${ALAMODE_ROOT}/tools/extract.py --LAMMPS ../Si222.lammps --get force FORCE.cubic* > force_cubic.dat

cd ../

# Extract harmonic force constants
cat << EOF > si_alm1.in
&general
  PREFIX = si222_harm
  MODE = fitting
  NAT = 64; NKD = 1
  KD = Si
/

&fitting
 NDATA = 1
 DFILE = displace/disp_harm.dat
 FFILE = displace/force_harm.dat
/

&interaction
  NORDER = 1  # 1: harmonic, 2: cubic, ..
/

&cell
  20.406 # factor in Bohr unit
  1.0 0.0 0.0 # a1
  0.0 1.0 0.0 # a2
  0.0 0.0 1.0 # a3
/

&cutoff 
  Si-Si 7.4 7.4
/


&position
  1 0.0000000000000000 0.0000000000000000 0.0000000000000000   
  1 0.0000000000000000 0.0000000000000000 0.5000000000000000
  1 0.0000000000000000 0.2500000000000000 0.2500000000000000
  1 0.0000000000000000 0.2500000000000000 0.7500000000000000
  1 0.0000000000000000 0.5000000000000000 0.0000000000000000
  1 0.0000000000000000 0.5000000000000000 0.5000000000000000
  1 0.0000000000000000 0.7500000000000000 0.2500000000000000
  1 0.0000000000000000 0.7500000000000000 0.7500000000000000
  1 0.1250000000000000 0.1250000000000000 0.1250000000000000
  1 0.1250000000000000 0.1250000000000000 0.6250000000000000
  1 0.1250000000000000 0.3750000000000000 0.3750000000000000
  1 0.1250000000000000 0.3750000000000000 0.8750000000000000
  1 0.1250000000000000 0.6250000000000000 0.1250000000000000
  1 0.1250000000000000 0.6250000000000000 0.6250000000000000
  1 0.1250000000000000 0.8750000000000000 0.3750000000000000
  1 0.1250000000000000 0.8750000000000000 0.8750000000000000
  1 0.2500000000000000 0.0000000000000000 0.2500000000000000
  1 0.2500000000000000 0.0000000000000000 0.7500000000000000
  1 0.2500000000000000 0.2500000000000000 0.0000000000000000
  1 0.2500000000000000 0.2500000000000000 0.5000000000000000
  1 0.2500000000000000 0.5000000000000000 0.2500000000000000
  1 0.2500000000000000 0.5000000000000000 0.7500000000000000
  1 0.2500000000000000 0.7500000000000000 0.0000000000000000
  1 0.2500000000000000 0.7500000000000000 0.5000000000000000
  1 0.3750000000000000 0.1250000000000000 0.3750000000000000
  1 0.3750000000000000 0.1250000000000000 0.8750000000000000
  1 0.3750000000000000 0.3750000000000000 0.1250000000000000
  1 0.3750000000000000 0.3750000000000000 0.6250000000000000
  1 0.3750000000000000 0.6250000000000000 0.3750000000000000
  1 0.3750000000000000 0.6250000000000000 0.8750000000000000
  1 0.3750000000000000 0.8750000000000000 0.1250000000000000
  1 0.3750000000000000 0.8750000000000000 0.6250000000000000
  1 0.5000000000000000 0.0000000000000000 0.0000000000000000
  1 0.5000000000000000 0.0000000000000000 0.5000000000000000
  1 0.5000000000000000 0.2500000000000000 0.2500000000000000
  1 0.5000000000000000 0.2500000000000000 0.7500000000000000
  1 0.5000000000000000 0.5000000000000000 0.0000000000000000
  1 0.5000000000000000 0.5000000000000000 0.5000000000000000
  1 0.5000000000000000 0.7500000000000000 0.2500000000000000
  1 0.5000000000000000 0.7500000000000000 0.7500000000000000
  1 0.6250000000000000 0.1250000000000000 0.1250000000000000
  1 0.6250000000000000 0.1250000000000000 0.6250000000000000
  1 0.6250000000000000 0.3750000000000000 0.3750000000000000
  1 0.6250000000000000 0.3750000000000000 0.8750000000000000
  1 0.6250000000000000 0.6250000000000000 0.1250000000000000
  1 0.6250000000000000 0.6250000000000000 0.6250000000000000
  1 0.6250000000000000 0.8750000000000000 0.3750000000000000
  1 0.6250000000000000 0.8750000000000000 0.8750000000000000
  1 0.7500000000000000 0.0000000000000000 0.2500000000000000
  1 0.7500000000000000 0.0000000000000000 0.7500000000000000
  1 0.7500000000000000 0.2500000000000000 0.0000000000000000
  1 0.7500000000000000 0.2500000000000000 0.5000000000000000
  1 0.7500000000000000 0.5000000000000000 0.2500000000000000
  1 0.7500000000000000 0.5000000000000000 0.7500000000000000
  1 0.7500000000000000 0.7500000000000000 0.0000000000000000
  1 0.7500000000000000 0.7500000000000000 0.5000000000000000
  1 0.8750000000000000 0.1250000000000000 0.3750000000000000
  1 0.8750000000000000 0.1250000000000000 0.8750000000000000
  1 0.8750000000000000 0.3750000000000000 0.1250000000000000
  1 0.8750000000000000 0.3750000000000000 0.6250000000000000
  1 0.8750000000000000 0.6250000000000000 0.3750000000000000
  1 0.8750000000000000 0.6250000000000000 0.8750000000000000
  1 0.8750000000000000 0.8750000000000000 0.1250000000000000
  1 0.8750000000000000 0.8750000000000000 0.6250000000000000
/

EOF
${ALAMODE_ROOT}/alm/alm si_alm1.in >> alm.log

# Extract cubic force constants
cat << EOF > si_alm2.in
&general
  PREFIX = si222_cubic
  MODE = fitting
  NAT = 64; NKD = 1
  KD = Si
/

&fitting
 NDATA = 20
 DFILE = displace/disp_cubic.dat
 FFILE = displace/force_cubic.dat
 FC2XML = si222_harm.xml
/

&interaction
  NORDER = 2  # 1: harmonic, 2: cubic, ..
/

&cell
  20.406 # factor in Bohr unit
  1.0 0.0 0.0 # a1
  0.0 1.0 0.0 # a2
  0.0 0.0 1.0 # a3
/

&cutoff 
  Si-Si 7.4 7.4
/


&position
  1 0.0000000000000000 0.0000000000000000 0.0000000000000000   
  1 0.0000000000000000 0.0000000000000000 0.5000000000000000
  1 0.0000000000000000 0.2500000000000000 0.2500000000000000
  1 0.0000000000000000 0.2500000000000000 0.7500000000000000
  1 0.0000000000000000 0.5000000000000000 0.0000000000000000
  1 0.0000000000000000 0.5000000000000000 0.5000000000000000
  1 0.0000000000000000 0.7500000000000000 0.2500000000000000
  1 0.0000000000000000 0.7500000000000000 0.7500000000000000
  1 0.1250000000000000 0.1250000000000000 0.1250000000000000
  1 0.1250000000000000 0.1250000000000000 0.6250000000000000
  1 0.1250000000000000 0.3750000000000000 0.3750000000000000
  1 0.1250000000000000 0.3750000000000000 0.8750000000000000
  1 0.1250000000000000 0.6250000000000000 0.1250000000000000
  1 0.1250000000000000 0.6250000000000000 0.6250000000000000
  1 0.1250000000000000 0.8750000000000000 0.3750000000000000
  1 0.1250000000000000 0.8750000000000000 0.8750000000000000
  1 0.2500000000000000 0.0000000000000000 0.2500000000000000
  1 0.2500000000000000 0.0000000000000000 0.7500000000000000
  1 0.2500000000000000 0.2500000000000000 0.0000000000000000
  1 0.2500000000000000 0.2500000000000000 0.5000000000000000
  1 0.2500000000000000 0.5000000000000000 0.2500000000000000
  1 0.2500000000000000 0.5000000000000000 0.7500000000000000
  1 0.2500000000000000 0.7500000000000000 0.0000000000000000
  1 0.2500000000000000 0.7500000000000000 0.5000000000000000
  1 0.3750000000000000 0.1250000000000000 0.3750000000000000
  1 0.3750000000000000 0.1250000000000000 0.8750000000000000
  1 0.3750000000000000 0.3750000000000000 0.1250000000000000
  1 0.3750000000000000 0.3750000000000000 0.6250000000000000
  1 0.3750000000000000 0.6250000000000000 0.3750000000000000
  1 0.3750000000000000 0.6250000000000000 0.8750000000000000
  1 0.3750000000000000 0.8750000000000000 0.1250000000000000
  1 0.3750000000000000 0.8750000000000000 0.6250000000000000
  1 0.5000000000000000 0.0000000000000000 0.0000000000000000
  1 0.5000000000000000 0.0000000000000000 0.5000000000000000
  1 0.5000000000000000 0.2500000000000000 0.2500000000000000
  1 0.5000000000000000 0.2500000000000000 0.7500000000000000
  1 0.5000000000000000 0.5000000000000000 0.0000000000000000
  1 0.5000000000000000 0.5000000000000000 0.5000000000000000
  1 0.5000000000000000 0.7500000000000000 0.2500000000000000
  1 0.5000000000000000 0.7500000000000000 0.7500000000000000
  1 0.6250000000000000 0.1250000000000000 0.1250000000000000
  1 0.6250000000000000 0.1250000000000000 0.6250000000000000
  1 0.6250000000000000 0.3750000000000000 0.3750000000000000
  1 0.6250000000000000 0.3750000000000000 0.8750000000000000
  1 0.6250000000000000 0.6250000000000000 0.1250000000000000
  1 0.6250000000000000 0.6250000000000000 0.6250000000000000
  1 0.6250000000000000 0.8750000000000000 0.3750000000000000
  1 0.6250000000000000 0.8750000000000000 0.8750000000000000
  1 0.7500000000000000 0.0000000000000000 0.2500000000000000
  1 0.7500000000000000 0.0000000000000000 0.7500000000000000
  1 0.7500000000000000 0.2500000000000000 0.0000000000000000
  1 0.7500000000000000 0.2500000000000000 0.5000000000000000
  1 0.7500000000000000 0.5000000000000000 0.2500000000000000
  1 0.7500000000000000 0.5000000000000000 0.7500000000000000
  1 0.7500000000000000 0.7500000000000000 0.0000000000000000
  1 0.7500000000000000 0.7500000000000000 0.5000000000000000
  1 0.8750000000000000 0.1250000000000000 0.3750000000000000
  1 0.8750000000000000 0.1250000000000000 0.8750000000000000
  1 0.8750000000000000 0.3750000000000000 0.1250000000000000
  1 0.8750000000000000 0.3750000000000000 0.6250000000000000
  1 0.8750000000000000 0.6250000000000000 0.3750000000000000
  1 0.8750000000000000 0.6250000000000000 0.8750000000000000
  1 0.8750000000000000 0.8750000000000000 0.1250000000000000
  1 0.8750000000000000 0.8750000000000000 0.6250000000000000
/

EOF
${ALAMODE_ROOT}/alm/alm si_alm2.in >> alm.log

# Phonon dispersion
cat << EOF > phband.in
&general
  PREFIX = si222
  MODE = phonons
  FCSXML =si222_harm.xml

  NKD = 1; KD = Si
  MASS = 28.0855
/

&cell
  10.203
  0.0 0.5 0.5
  0.5 0.0 0.5
  0.5 0.5 0.0
/

&kpoint
  1  # KPMODE = 1: line mode
  G 0.0 0.0 0.0 X 0.5 0.5 0.0 51
  X 0.5 0.5 1.0 G 0.0 0.0 0.0 51
  G 0.0 0.0 0.0 L 0.5 0.5 0.5 51
/

EOF

mpirun -np 1 ${ALAMODE_ROOT}/anphon/anphon phband.in > phband.log

# Thermal conductivity
cat << EOF > RTA.in
&general
  PREFIX = si222_10
  MODE = RTA
  FCSXML = si222_cubic.xml

  NKD = 1; KD = Si
  MASS = 28.0855
/

&cell
  10.203
  0.0 0.5 0.5
  0.5 0.0 0.5
  0.5 0.5 0.0
/

&kpoint
  2
  10 10 10
/

EOF

mpirun -np 4 ${ALAMODE_ROOT}/anphon/anphon RTA.in > RTA.log
