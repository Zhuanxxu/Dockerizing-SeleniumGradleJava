FROM selenium/standalone-chrome:4.5.3-20221024
COPY . .
# DESCARGA GRADLE VERSION 7.1 EN EL PROYECTO
RUN sudo curl -L https://services.gradle.org/distributions/gradle-7.1-bin.zip -o gradle.zip
# DESCOMPRIME EL GRADLE
RUN sudo unzip gradle.zip

# EJECUTA UN GRADLE TEST CON BROWSER CHROME
CMD sudo gradle-7.1/bin/gradle cleanTest test -Dbrowser=chrome