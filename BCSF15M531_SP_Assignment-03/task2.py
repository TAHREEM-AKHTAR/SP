'''task 2: find the given word in pages'''
import requests
import re
import time
from bs4 import BeautifulSoup
sportsURL=""
link=[]
lst=[]
output=[]

def sports(URL,page):
    try:
        status=requests.get(URL)
        if status.status_code == 200:
            parser=BeautifulSoup(status.content,"html.parser")
            div=parser.find_all('div',{'id':'primary'})
            for dv in div:
                article=dv.find_all('article')
                for art in article:
                    header=art.find('header',{'class':'entry-header'})
                    a=header.find('a')
                    link.append(a['href'])
                nav=dv.find_all('nav',{'aria-label':'Page navigation'})
                if page >= 1 and page < 5:
                    for nv in nav:
                        ul=nv.find('ul',{'class':'pagination '})
                        li=ul.find_all('li',{'class':'page-item'})[page]
                        a=li.find('a',{'class':'page-link'})
                        sportsURL=a['href']
                else:
                    sportsURL=""
            #page=2
            return sportsURL
    except:
        print("Sports URL Error")
        return ""

def findWords(input=[]):
    flag=0
    for i_lnk in link:
        flag=0
        try:
            status=requests.get(i_lnk)
            if status.status_code == 200:
                prsr=BeautifulSoup(status.content,"html.parser")
                divv =prsr.find_all('div',{'id':'primary'})
                for dv in divv:
                    h1=dv.find_all('h1',{'class':'entry-title'})
                    for h in h1:
                        text=h.text
                        words=re.findall(r"[\w']+", text)
                        #words=text.split(' ')
                        for w in words:
                            if w in input:
                                output.append(i_lnk)
                                flag=1
                                break
                                
                        if flag==1:
                            break
                    if flag==1:
                        break
                   
                    div2=dv.find_all('div',{'class':'the-post-content'})
                    for dv2 in div2:
                        p_tag=dv2.find_all('p')
                        for p in p_tag:
                            p_text=p.text
                            words=re.findall(r"[\w']+", p_text)
                            for wd in words:
                                if wd in input:
                                    output.append(i_lnk)
                                    flag=1
                                    break
                            if flag==1:
                                break
                        if flag==1:
                            break
               
        except:
            print("Request Error Match Words")


def main():
    URL="https://propakistani.pk/"
    try:
        status=requests.get(URL)
        if status.status_code == 200:
            string=input("Enter comma seprated words you want to search : ")
            lst=list(string.split(','))
            parser=BeautifulSoup(status.content,"html.parser")
            div_obj=parser.find_all('div',{'id':'navbarNavDropdown'})
            for i in div_obj:
                li = i.find_all('li',{'id':'menu-item-173920'})
                for j in li:
                    a=j.find('a',{'class':'nav-link'})
                    sportsURL=a['href']
            
            for k in range(1,6):
                sportsURL=sports(sportsURL,k)
                findWords(lst)
                link.clear()
                print(sportsURL)
                
            print()
            if len(output)!=0:
                print ("URL's in which given words found are : ")
                for a in output:
                    print (a)
    except:
        print ("Request Error !")  

if __name__=="__main__":
    main()