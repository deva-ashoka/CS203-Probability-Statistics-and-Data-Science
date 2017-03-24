#Name: Deva Madala
#Student ID: UG14-1920

#sample=(w1,w2,w3,w4)
#probabilities are: (0.1,0.1,0.3,0.5)

n<-readline("Enter the number of executions (positive number): ") #asking user for input
y=as.integer(n)

f1<-0	#frequency counter for w1
f2<-0	#frequency counter for w2
f3<-0	#frequency counter for w3
f4<-0	#frequency counter for w4

pb<-function(n){
	for(i in 1:n) 
		{
			u<-runif(1,0,1) #uniform distribution
			if(0<u && u<=0.1)
				{
					f1<-f1+1	#incrementing frequency counter
				}
			else if(0.1<u && u<=0.2)
				{
					f2<-f2+1
				}
			else if(0.2<u && u<=0.5)
				{
					f3<-f3+1
				}
			else if(0.5<u && u<=1)
				{
					f4<-f4+1
				}
		}
	print("The frequency table is: ")	#printing the frequency table
	cat(sprintf(" w1 %d \n",f1))
	cat(sprintf(" w2 %d \n",f2))
	cat(sprintf(" w3 %d \n",f3))
	cat(sprintf(" w4 %d \n",f4))
}
pb(y)