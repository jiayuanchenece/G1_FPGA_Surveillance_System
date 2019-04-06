import socket
import time
from PIL import Image
import cv2
import numpy as np
import tkinter as tk

UDP_IP = "0.0.0.0"
UDP_PORT = 9090
TCP_PORT = 9096
PIXELS_PER_PACKET = 341
WIDTH = 640
HEIGHT = 480
PACKET_SIZE = 1028
EOF = 0
HIGH_RES = 1
LOW_RES = 2
ex = False
root = tk.Tk()
f = 0

def tcp_connect():
    socktcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    # Allow re-binding the same port
    socktcp.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    # Bind to port on any interface
    socktcp.bind(('0.0.0.0', TCP_PORT))
    socktcp.listen(10) # allow backlog of 1
    
    print("Accepting connection from FPGA on TCP port ", TCP_PORT)
    conn_tcp, addr_tcp = socktcp.accept()
    conn_tcp.setblocking(False)
    
    print("Connection to FPGA established")
    return conn_tcp

def udp_connect():
    sockudp = socket.socket(socket.AF_INET,socket.SOCK_DGRAM) # UDP
    sockudp.bind((UDP_IP, UDP_PORT))
    sockudp.setblocking(False)
    return sockudp

def tcp_recv(conn_tcp):
    global ex
    try:
        data_tcp = conn_tcp.recv(10)
        if data_tcp[0:3].decode('ascii') == "EOF":
            conn_tcp.send(bytes([EOF]))
            return "EOF"
        elif data_tcp[0:3].decode('ascii') == "EOV":
            return "EOV"
    except Exception as e:
        return None

def udp_recv(conn_udp,img_data):
    try:
        data, addr = conn_udp.recvfrom(PACKET_SIZE)
        seq_id = data[0:4]
        seq_id = seq_id.decode('ascii')
        seq_id = int(float(seq_id))
        pixel_data = bytearray(data[5:])
        img_data[(seq_id)*PIXELS_PER_PACKET*3:(seq_id)*PIXELS_PER_PACKET*3+len(pixel_data)] = pixel_data
        return seq_id
    except:
        return None

def recv_and_check(conn_tcp, conn_udp, img_data):
    msg = tcp_recv(conn_tcp)
    seq_id = udp_recv(conn_udp, img_data)
    return msg
        


def receiver(conn_tcp,conn_udp,img_data):
    global f
    start = time.time()
    msg = recv_and_check(conn_tcp, conn_udp, img_data)
    if msg == "EOV":
        new_img = bytearray([255 for x in range(640 * 480 *3)])
        root.after(100, receiver,conn_tcp, conn_udp,new_img)
        return
    elif msg == "EOF":
        img = Image.frombytes('RGB', (WIDTH, HEIGHT), bytes(img_data))
        cvi = np.array(img)
        cvi = cvi[:,:,::-1].copy()
        cv2.imshow('frame', cvi)
        cv2.waitKey(100)
        #img.save('recv/sample' + str(f) + '.jpg')
        f += 1
        used_time =  time.time() - start
        #print(str(k) +  " frames received, time spent = " + str(used_time))

        new_img = bytearray([255 for x in range(640*480*3)])
        root.after(0, receiver,conn_tcp, conn_udp,new_img)
        return
    root.after(0, receiver, conn_tcp, conn_udp, img_data)
    return

def toggle_res(conn_tcp):
    global WIDTH
    global HEIGHT
    if WIDTH == 640:
        WIDTH = 320
        HEIGHT = 240
        conn_tcp.send(bytes([LOW_RES]))
        print("Toggled Resolution to: 320x240")
    else:
        WIDTH = 640
        HEIGHT = 480
        conn_tcp.send(bytes([HIGH_RES]))
        print("Toggled Resolution to: 640x480")
    #btn_tgl.config(text = 'Current Resolution: ' + str(WIDTH) + 'x' + str(HEIGHT))
    return

conn_udp = udp_connect()
conn_tcp = tcp_connect()


root = tk.Tk()
root.title("Home Surveillance System")

btn_tgl = tk.Button(root, text='Click to Toggle Resolution', width=45, command=lambda: toggle_res(conn_tcp))

btn_tgl.pack()
new_img = bytearray([255 for x in range(640*480*3)])
root.after(100,receiver,conn_tcp,conn_udp,new_img)
root.mainloop()
