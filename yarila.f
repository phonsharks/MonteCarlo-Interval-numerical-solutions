      PROGRAM KOK_BUL
      IMPLICIT REAL*8(A-H,O-Z)
      A=0.8D0
      B=0.9D0
      TOL=1.D-8
      CALL YARILA(A,B,X,TOL)
      PRINT*, 'X = ', X
      END
      
	FUNCTION F(X)
      IMPLICIT REAL*8(A-H,O-Z)
      F=X*DTAN(X)-1
      RETURN
      END
      
      SUBROUTINE YARILA(A,B,XM,TOL)
      IMPLICIT REAL*8(A-H,O-Z)
      IF(F(A)*F(B).GT.0.0) THEN
           STOP 'BU ARALIKTA KOK YOK.'
      ENDIF
      DX=B-A
      DO WHILE(DABS(DX).GT.TOL)
		  I=0
            XM=(A+B)/2
            IF((F(A)*F(XM)).LT.0.D0) THEN
				K=K+1
				PRINT *, XM
                  B=XM
                  DX=B-A
            ELSE
				K=K+1
				PRINT *, XM
			    A=XM
                  DX=B-A
            ENDIF
      ENDDO
	PRINT *, K
      RETURN
      END
