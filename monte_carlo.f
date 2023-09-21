      PROGRAM MONTE_CARLO_INTEGRALI
      IMPLICIT REAL*8(A-H,O-Z)
      F(X)=X**3
      JBASLA=113
      NMAX=100000
      DO 2 I=1,10
            TOPLAM=0.D0
            DO 1 J=1,NMAX
               X=RASGELE(JBASLA)
               TOPLAM=TOPLAM+F(X)
1           CONTINUE
            AINTEGRAL=TOPLAM/NMAX
            WRITE(*,3) NMAX,AINTEGRAL
            NMAX=NMAX+100000
2     CONTINUE
3     FORMAT(3X, I6, 3X, F12.8)
      END
      
      FUNCTION RASGELE(JBASLA)
      IMPLICIT REAL*8(A-H,O-Z)
      DATA IA,IB,IC/211,1663,7875/
      JBASLA=MOD(JBASLA*IA+IB,IC)
      RASGELE=FLOAT(JBASLA)/FLOAT(IC)
      RETURN
      END
