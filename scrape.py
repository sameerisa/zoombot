from __future__ import print_function
import pickle
import os.path
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
import base64
import email
import os

SCOPES = ['https://mail.google.com/','https://www.googleapis.com/auth/gmail.readonly','https://www.googleapis.com/auth/gmail.modify', 'https://www.googleapis.com/auth/gmail.addons.current.message.readonly', 'https://www.googleapis.com/auth/gmail.addons.current.message.action']

def GetMessage(service, user_id, msg_id):
    message = service.users().messages().get(userId=user_id, id=msg_id, format='raw').execute()
    return message

def ListMessagesWithLabels(service, user_id, label_ids=[]):
    response = service.users().messages().list(userId=user_id, labelIds=label_ids).execute()
    messages = []
    if 'messages' in response:
        messages.extend(response['messages'])

    while 'nextPageToken' in response:
        page_token = response['nextPageToken']
        response = service.users().messages().list(userId=user_id, labelIds=label_ids, pageToken=page_token).execute()
        messages.extend(response['messages'])

    return messages




def main():

    filePath = r'C:\Users\samee\Documents\zoom_auto_join\meeting_details.txt'

    creds = None
    if os.path.exists('token.pickle'):
        with open('token.pickle','rb') as token:
            creds = pickle.load(token)

    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file('credentials.json', SCOPES)
            creds = flow.run_local_server(port=0)
        with open('token.pickle', 'wb') as token:
            pickle.dump(creds, token)

    service = build('gmail', 'v1', credentials = creds)
    userId = 'me'
    labels = ['INBOX']
    messageId = ListMessagesWithLabels(service, userId, labels)
    #print(messageId)
    meta = messageId[0]
    id = meta.get('id')
    message = GetMessage(service, userId, id)
    #print(message)
    msg_raw = base64.urlsafe_b64decode(message['raw'].encode('ASCII'))
    #print(msg_raw)
    msg_str = email.message_from_bytes(msg_raw)



    parts = msg_str.get_payload()
    #print(parts)
    content1, content2 = parts
    #content1, content2, content3 = parts

    #print(content1)
    #print(type(content1))
    body = content1.as_string()
    #print(body)
    #print(type(body))
    body = body.replace('*', '')
    body = body.replace(' ', '')
    print(body)


   # print(content1.get_payload())
    mtId = 'MeetingID:'
    passw = 'Passcode:'
    meetingId = []
    password = []
    #size1 = 12
    size1 = 10
    #size2 = 13
    size2 = 11
    #size3 = 10
    size3 = 9
    size4 = 6

    #meeting 1
    index = body.find(mtId)
    #print(index)
    meetingId.append(body[index+size1:index+size1+size2])
    #print(meetingId)
    temp = body[index:]
    #print(temp)
    index = temp.find(passw)
    #print(index)
    password.append(temp[index+size3:index+size3+size4])
    #print(password)
    #print(password)
    temp = temp[index:]

    #meeting 2
    index = temp.find(mtId)

    meetingId.append(temp[index+size1:index+size1+size2])

    temp = temp[index:]
    index=temp.find(passw)

    password.append(temp[index+size3:index+size3+size4])

    temp = temp[index:]

    #meeting 3
    index = temp.find(mtId)

    meetingId.append(temp[index+size1:index+size1+size2])

    temp = temp[index:]
    index=temp.find(passw)

    password.append(temp[index+size3:index+size3+size4])

    temp = temp[index:]

    #meeting 4
    index = temp.find(mtId)

    meetingId.append(temp[index+size1:index+size1+size2])

    temp = temp[index:]
    index=temp.find(passw)

    password.append(temp[index+size3:index+size3+size4])

    temp = temp[index:]

    #print(meetingId)
    #print(password)

    meetingId2 = []

    for i in meetingId:
        j = i.replace(' ','')
        #print(j)
        meetingId2.append(j)

    print(meetingId2)
    print(password)

    if os.path.exists(filePath):
        os.remove(filePath)

    text = open("meeting_details.txt", "w+")

    j=1

    for i in range(4):
        param = f"PARAM{j}={meetingId2[i]}\r\n"
        #param = ("PARAM%d=" % j)
        #param
        #print(param)
        #param + "\r\n"
        #text.write("PARAM%d=%d\r\n" % (j ,meetingId2[i]))
        text.write(param)
        j += 1
        param = f"PARAM{j}={password[i]}\r\n"
        #param = ("PARAM%d=" % j)
        #param + password[i]
        #param + "\r\n"
        #text.write("PARAM%d=%d\r\n" % (j, password[i]))
        text.write(param)
        j += 1




if __name__ == '__main__':
    main()
