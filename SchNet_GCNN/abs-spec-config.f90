!--------------------------------------------------------------------------------
!      THIS PROGRAM CALCULATES THE ABSORPTION SPECTRA USING THE
!      EXCITATION ENERGIES AND THE CORRESPONDING OSCILLATOR STRENGTHS.
!--------------------------------------------------------------------------------

!      AUTHOR   :: MUSHIR UL HASAN K T
!      DATE     :: 01/30/2020
!      VERSION  :: 0.02

!--------------------------------------------------------------------------------
       PROGRAM ABSORPTION_SPECTRA
!--------------------------------------------------------------------------------

       IMPLICIT NONE

!--------------------------VARIABLE DECLARATION----------------------------------
       CHARACTER (LEN=80)   :: FLNOUT, B

       INTEGER*4            :: I,J,I1,J1,I2
       INTEGER*4, PARAMETER :: NPOINTS=50, NSTATES=2, NGRID=1000

       REAL*8               :: E,DELTA_E,MU_TOT,DE,C,F
       REAL*8               :: EN(NPOINTS,NSTATES)
       REAL*8               :: OSC_ST(NPOINTS,NSTATES)
       REAL*8               :: G,S,F1
       REAL*8, PARAMETER    :: TW_BY_THR=0.666666D0, ONE_BY_FOUR=0.25000000D0
       REAL*8, PARAMETER    :: EMIN=0.00000000D0, EMAX=10.00000000D0
       REAL*8, PARAMETER    :: ZERO=0.00000000D0, DELTA=0.02000000D0
       REAL*8, PARAMETER    :: PI=3.1415926535897D0, TENE07 = 10000000.000D0
       REAL*8, PARAMETER    :: FACTOR=27.211600000000D0
!--------------------------------------------------------------------------------

      DE = (EMAX-EMIN)/REAL(NGRID - 1)

!--READS THE ENERGIES OF THE STATES AND THE CORRESPONDING OSCILLATOR STRENGTHS---

      OPEN(11,file='energies.dat')
      OPEN(22,file='oscst.dat')

      DO I = 1, NPOINTS

              READ(11,*) EN(I,:)

              READ(22,*) OSC_ST(I,:)

      ENDDO

      CLOSE(11)

      CLOSE(22)
!--------------------------------------------------------------------------------

      DO I1 = 1, NPOINTS

         WRITE(B,'(i4)') I1                   

         B = ADJUSTL(B)

         FLNOUT = 'CONFIG_'//TRIM(B)//'.dat'

         FLNOUT = TRIM(FLNOUT)

         FLNOUT = ADJUSTL(FLNOUT)

         OPEN(111,file=FLNOUT)

          DO I2 = 1, NGRID

              G = 0.00000000D0

              DO J1 = 1, NSTATES
 
                  F = OSC_ST(I1,J1)

                  E = EMIN + REAL(I2-1)*DE

                  G = G + DELTA*(((E - EN(I1,J1))*&
                        & (E - EN(I1,J1))) +&
                        ((DELTA*DELTA)*(ONE_BY_FOUR)))**(-1)*F

              ENDDO 

              WRITE(111,'(2F20.10)') E, G                         ! X-AXIS in eV
!              WRITE(111,'(2F20.10)') TENE07/(E*8065.500D0), G    ! X-AXIS in nm

          ENDDO

      ENDDO

      CLOSE(111)

!--------------------------------------------------------------------------------
      END PROGRAM ABSORPTION_SPECTRA
!--------------------------------------------------------------------------------
