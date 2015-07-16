!-----------------------
! madgraph - a Feynman Diagram package by Tim Stelzer and Bill Long 
! (c) 1993
!
! Filename: leshouche.f
!-----------------------
      Subroutine Write_LesHouche(color,ilun,istat)
c***********************************************************************
c     Writes out particle information in LesHouche format
c     hep-ph/0109068  Boos, Dobbs Giele, Hinchliffe, Huston, etc
c***********************************************************************
      implicit none
! Constants

      include 'params.inc'

! Arguments

      integer color(0:2*maxlines,0:maxfactors,0:24,0:maxflows)
      integer ilun, istat

! Local Variables

      integer nterms,nfactors,nelements
      integer iterm,ifact, iflow
      integer i, icstring(2,maxlines), ncstring, iproc

! Global
      character*(4*max_particles) particle(4)
      integer                               charge_c(max_particles)
      integer iparticle(0:max_particles,0:4),inverse(max_particles)
      common/to_model/iparticle,  particle,  inverse, charge_c

      integer        iline(-maxlines:maxlines),idir(-maxlines:maxlines)
      integer        this_coup(max_coup) ,goal_coup(max_coup)
      common/to_proc/iline,idir,this_coup,goal_coup
      integer         nincoming,nincfirst
      common/to_proc2/nincoming,nincfirst

      character*(max_string) iwave(max_particles),owave(max_particles)
      integer iposx(3,max_particles)
      integer info_p(5,max_particles)
      character*(8) str(3,max_particles)

      common/to_external/iwave,owave,iposx,info_p,str

      save iproc
      data iproc /0/
      include "onia.inc"
!-----------
! Begin Code
!-----------
c      ilun=6
c      iproc=99
c      write(*,'(10i5)') (iline(i),i=0,iline(0))
c
c     Write out particle codes from PDG (info_p(5,i))
c
      do i=1,maxlines
         icstring(1,i)=0
         icstring(2,i)=0
      enddo
      if (istat .eq. 1) then
         iproc = 1
      else
         iproc = iproc+1
      endif
c$$$      if (onium) then
c$$$      write(ilun,93) '       DATA (IDUP(i,',iproc,'),i=1,',
c$$$     & iline(0)-1,')/' ,info_p(5,inverse(iline(1)))
c$$$      else
c$$$      write(ilun,93) '       DATA (IDUP(i,',iproc,'),i=1,',iline(0),')/'
c$$$     &     ,info_p(5,inverse(iline(1)))
c$$$      endif
c$$$      do i = 2, iline(0)
c$$$c onium stuff
c$$$         if (i.eq.(iline(0)-1).and.onium) then
c$$$           write(ilun,'(a,a8,$)') ',',onium_ID
c$$$           goto 11
c$$$         endif
c$$$         if (i.eq.iline(0).and.onium) then
c$$$           goto 11
c$$$         endif
c$$$c end onium stuff
c$$$         if (i .le. nincoming) iline(i)=inverse(iline(i))
c$$$         write(ilun,95) ',',info_p(5,iline(i))
c$$$         if (i .le. nincoming) iline(i)=inverse(iline(i))
c$$$11       continue
c$$$      enddo
c$$$      write(ilun,98) '/'
c$$$c
c$$$c     Now write out Mothup codes. 0 for initial state, 1 for final state
c$$$c
c$$$      if (onium) then
c$$$      write(ilun,93) '       DATA (MOTHUP(1,i,',iproc,'),i=1,'
c$$$     &     ,iline(0)-1,')/',0
c$$$      else
c$$$      write(ilun,93) '       DATA (MOTHUP(1,i,',iproc,'),i=1,'
c$$$     &     ,iline(0),')/',0
c$$$      endif
c$$$      do i = 2, iline(0)
c$$$c onium stuff
c$$$         if (i.eq.iline(0).and.onium) then
c$$$           goto 12
c$$$         endif
c$$$c end onium stuff
c$$$         if (i .le. nincoming) then
c$$$            write(ilun,95) ',',0
c$$$         else
c$$$            write(ilun,95) ',',1
c$$$         endif
c$$$12       continue
c$$$      enddo
c$$$      write(ilun,98) '/'
c$$$      if (onium) then
c$$$      write(ilun,93) '       DATA (MOTHUP(2,i,',iproc,'),i=1,'
c$$$     &     ,iline(0)-1,')/',0
c$$$      else
c$$$      write(ilun,93) '       DATA (MOTHUP(2,i,',iproc,'),i=1,'
c$$$     &     ,iline(0),')/',0
c$$$      endif
c$$$      do i = 2, iline(0)
c$$$c onium stuff
c$$$         if (i.eq.iline(0).and.onium) then
c$$$           goto 13
c$$$         endif
c$$$c end onium stuff
c$$$         if (i .le. nincoming) then
c$$$            write(ilun,95) ',',0
c$$$         else
c$$$            write(ilun,95) ',',2
c$$$         endif
c$$$13       continue
c$$$      enddo
c$$$      write(ilun,98) '/'
c
c     Now write out color connections, this requres flows info
c      
      if (iproc .eq. 1) then
      do iflow = 1, color(0,0,0,0)

         nterms = color(0,0,0,iflow)
         ncstring = 501      !This numbers the first color string
         do iterm=1,1               !Only use leading term
            nfactors=color(0,0,iterm,iflow)
            do ifact = 2,nfactors
               nelements=color(0,ifact,iterm,iflow)
               if (nelements .gt. 0) then   !This is F term (all gluons)
                  icstring(1,color(1,ifact,iterm,iflow))=ncstring
                  do i=2,nelements
                     icstring(2,color(i,ifact,iterm,iflow))=ncstring
                     ncstring=ncstring+1
                     icstring(1,color(i,ifact,iterm,iflow))=ncstring
                  enddo
                  icstring(2,color(1,ifact,iterm,iflow))=ncstring
c RF    2007-03-01
                  ncstring=ncstring+1
cend RF
               elseif (nelements .lt. 0) then
                  icstring(2,color(1,ifact,iterm,iflow))=0
                  icstring(1,color(1,ifact,iterm,iflow))=ncstring
                  do i=3,-nelements
                     icstring(2,color(i,ifact,iterm,iflow))=ncstring
                     ncstring=ncstring+1
                     icstring(1,color(i,ifact,iterm,iflow))=ncstring
                  enddo
                  icstring(2,color(2,ifact,iterm,iflow))=ncstring
                  icstring(1,color(2,ifact,iterm,iflow))=0                  
                  ncstring=ncstring+1
               endif
            enddo
         enddo
         do i=1,iline(0)
            if (i.le.nincoming) then
               write (ilun,*)
     &              '      ICOLUP(1,',i,',',iflow,')=',icstring(2,i)
            else
               write (ilun,*)
     &              '      ICOLUP(1,',i,',',iflow,')=',icstring(1,i)
            endif
         enddo
         do i=1,iline(0)
            if (i.le.nincoming) then
               write (ilun,*)
     &              '      ICOLUP(2,',i,',',iflow,')=',icstring(1,i)
            else
               write (ilun,*)
     &              '      ICOLUP(2,',i,',',iflow,')=',icstring(2,i)
            endif
         enddo
      enddo
      endif

 83   format(a,i2,a,i2,a,i2,a,i3,$)
 93   format(a,i3,a,i3,a,i8,$)
 95   format(a,i8,$)
 98   format(a)
      end

