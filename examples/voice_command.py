#  Raviteja Tirumalapudi, 17/01/2023, Unitree go1

import speech_recognition as sr


while(True):
    with sr.Microphone() as source:
        print("Say Now, Robot is listening ...")
        audio = sr.Recognizer().listen(source)
        print("Voice Recognizing ...")
        text = sr.Recognizer().recognize_google(audio)
        file = open("/home/emcode/Desktop/GO1 Manuals/unitree_legged_sdk-3.5.1/build/command.txt", "w+")
        file.write(str(text))
        file.close()