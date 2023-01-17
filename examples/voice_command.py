#  Raviteja Tirumalapudi, 17/01/2023, Unitree go1

import speech_recognition as sr


while(True):
    with sr.Microphone() as source:
        print("Say Now, Robot is listening ...")
        audio = sr.Recognizer().listen(source)
        print("Voice Recognizing ...")
        text = sr.Recognizer().recognize_google(audio)
        file = open("/home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/build/command.txt", "w+")
        file.write(str(text))
        file.close()