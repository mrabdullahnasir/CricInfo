library(shiny)
library(datasets)

inzamam<-read.csv("Inzmam ul Haq.csv")
saeed_Anwar<-read.csv("Saeed Anwar.csv")
azhar<-read.csv("Azhar Ali.csv")
miandad<-read.csv("Javed Mian Daad.csv")
misbah<-read.csv("Misbah-ul-Haq.csv")
hafeez<-read.csv("Mohammad Hafeez.csv")
yousuf<-read.csv("Muhmmad Yousaf.csv")
saleem<-read.csv("Saleem Malik.csv")
sarfraz<-read.csv("Sarfraz Ahmed.csv")
afridi<-read.csv("ShahidAfridi.csv")
malik<-read.csv("Shoaib Malik.csv")
umar<-read.csv("Umar Akmal.csv")
younus<-read.csv("Younus Khan.csv")
zaheer<-read.csv("Zaheer Abbas.csv")
aaqib<-read.csv("Aaqib Javed.csv")
razzaq<-read.csv("Abdul Razzaq.csv")
imran<-read.csv("Imran Khan.csv")
Mudassir<-read.csv("Mudassir Nazar.csv")
Mushtaq<-read.csv("Mushtaq Ahmad.csv")
saqlain<-read.csv("Saqlain Mushtaq.csv")
shoaib<-read.csv("Shoaib Akhtar.csv")
wahab<-read.csv("Wahab Riaz.csv")
waqar<-read.csv("Waqar Yonus.csv")
waseem<-read.csv("Waseem Akram.csv")
yasir<-read.csv("Yasir Shah.csv")

shinyServer(
  function(input,output)
  {
    datasetInput <- reactive({
      switch(input$dataset,
             "Inzamam-ul-Haq" = inzamam,
             "Inzamam-ul-Haq" = a,
             "Saeed Anwar" =saeed_Anwar,
             "Imran Khan"=imran,
             "Wasim Akram"=waseem,
             "Waqar Youmis"=waqar,
             "Mushtaq Ahmed"=Mushtaq,
             "Sqlain Mushtaq"=saqlain,
             "Sarfraz Ahmed"=sarfraz,
             "Umar Akmal"=umar,
             "Shoaib Malik"=malik,
             "Wahab Riaz"=wahab,
             "Yasir Shah"=yasir,
             "Shoaib Akhtar"=shoaib,
             "Muhammad yousuf"=yousuf,
             "Aaqib Javed"=aaqib,
             "Javed Miandad"=miandad,
             "Misbah Ul Haq"=misbah,
             "Younis Khan"=younus,
             "Muhammad Hafeez"=hafeez,
             "Azhar Ali"=azhar,
             "Abdul Razzaq"=razzaq,
             "Shahid Afridi"=afridi,
             "Mudassir Nazar"=Mudassir,
             "Saleem Malik"=saleem)
    })
    output$view <- renderTable({
    head(datasetInput(), n = input$obs)
    })
    
    output$image2 <- renderImage({
      if (is.null(input$picture))
        return(NULL)
      
      if (input$picture == "Inzamam-ul-Haq") {
        return(list(
          src = "Inzamam ul Haq.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Saeed Anwar") {
        return(list(
          src = "saeed Anwar.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      if (is.null(input$picture))
        return(NULL)
      
      if (input$picture == "Imran Khan") {
        return(list(
          src = "imran khan.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Wasim Akram") {
        return(list(
          src = "Wasim Akram.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      if (is.null(input$picture))
        return(NULL)
      
      if (input$picture == "Mudassir Nazar") {
        return(list(
          src = "Musdassir Nazar.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Waqar Youmis") {
        return(list(
          src = "Waqar younis.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      
      if (input$picture == "Mushtaq Ahmed") {
        return(list(
          src = "Mushtaq Ahmed.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Sqlain Mushtaq") {
        return(list(
          src = "Saqlain Mushtaq.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      if (input$picture == "Sarfraz Ahmed") {
        return(list(
          src = "Sarfraz Ahmed.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Umar Akmal") {
        return(list(
          src = "Umar Akmal.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      if (input$picture == "Shoaib Malik") {
        return(list(
          src = "Shoaib Malik.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Wahab Riaz") {
        return(list(
          src = "Wahba Riaz.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      if (input$picture == "Yasir Shah") {
        return(list(
          src = "Yasir Shah.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Shoaib Akhtar") {
        return(list(
          src = "Plot 3.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      if (input$picture == "Muhammad yousuf") {
        return(list(
          src = "muhammad yousuf.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Aaqib Javed") {
        return(list(
          src = "Aaqib Javed.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      if (input$picture == "Javed Miandad") {
        return(list(
          src = "Javed Miandad.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Misbah Ul Haq") {
        return(list(
          src = "Misbaah ul Haq.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      
      if (input$picture == "Younis Khan") {
        return(list(
          src = "Javed Miandad.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Misbah Ul Haq") {
        return(list(
          src = "Younus Khan.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      if (input$picture == "Muhammad Hafeez") {
        return(list(
          src = "Muammad Hafeez.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Azhar Ali") {
        return(list(
          src = "Azhar Ali.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      
      if (input$picture == "Abdul Razzaq") {
        return(list(
          src = "Abdul Razzaq.png",
          contentType = "image/png",
          alt = "Face"
        ))
      } else if (input$picture == "Shahid Afridi") {
        return(list(
          src = "Shahid Afidi.png",
          filetype = "image/png",
          alt = "This is a chainring"
        ))
      }
      
      if (input$picture == "Saleem Malik") {
        return(list(
          src = "Saleem Malik.png",
          contentType = "image/png",
          alt = "Face"
        ))
      }
          }, deleteFile = FALSE)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
#    datasetInput <- reactive({
#      switch(input$Graph,
#             a<-img(src="hassan.jpg"),
#             "Inzamam-ul-Haq" = a
  #    )
#    })
 
   # output$viewimage <- renderTable({
  #    head(datasetInput(), n = input$Graph)
  #  })
    
  }
)


