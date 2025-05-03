
import time
import random
print ("\033c\033[43;30m\nenter simulator\n")
def floats():
    f=float(random.randrange(1,9)-5)
    return f
def fireEvent():
    rets=random.randrange(1,1000)
    retss=rets>995
    return retss
def sims(n):
    totals=0
    money=float(0.0)
    rets=[]
    nn=0
    t=True
    energy=float(0.0)
    material=float(0.0)
    while t:
        print(str(totals)+" units")
        totals=totals+n
        if fireEvent():
           print("fire event all the hood as destroy")
           totals=0
        if totals>10:
            totals=0
            material=float(9.00+floats())
            energy=float(9.00+floats())
            
            print("energy=8 X "+str(float(energy))+" ="+str(float(energy*8.00)))
            print("material=2 X "+str(float(material))+" ="+str(float(material*2.00)))
            money=money+float(energy*8.00)+float(material*8.00)
            print("money="+str(float(money)))
            print("8 units to hood as material")
            print("2 units to hood as energy")
        time.sleep(1)
    
sims(1)