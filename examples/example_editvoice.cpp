#include "unitree_legged_sdk/unitree_legged_sdk.h"
#include <math.h>
#include <iostream>
#include <fstream>
#include <unistd.h>
#include <string.h>

using namespace UNITREE_LEGGED_SDK;

std::string line;
std::ifstream myfile("command.txt");
std::string word1 = "stand";
std::string word2 = "sit";
std::string word3 = "go forward";
std::string word4 = "come backward";
std::string word5 = "turn left";
std::string word6 = "turn right";
std::string word7 = "dance";
std::string word8 = "stop";

class Custom
{
public:
    Custom(uint8_t level): 
      safe(LeggedType::Go1), 
      udp(8090, "192.168.123.161", 8082, sizeof(HighCmd), sizeof(HighState))
    {
        udp.InitCmdData(cmd);
    }
    void UDPRecv();
    void UDPSend();
    void RobotControl();

    Safety safe;
    UDP udp;
    HighCmd cmd = {0};
    HighState state = {0};
    uint8_t walk_flag=0;
    int motiontime = 0;
    float dt = 0.002;     // 0.001~0.01
    char key;
    char command;
    std::ifstream myfile;
    
};

void Custom::UDPRecv()
{
    udp.Recv();
}

void Custom::UDPSend()
{  
    udp.Send();
}

void Custom::RobotControl() 
{
    motiontime += 1;
    udp.GetRecv(state);
    printf("%d   %f\n", motiontime, state.imu.quaternion[2]);
 
    myfile.open("command.txt");
    cmd.mode = 0;      // 0:idle, default stand      1:forced stand     2:walk continuously
    //mode 3: position walk goto that position [0]=x [1]=y reference from dog frame at first time run
    cmd.gaitType = 0;
    cmd.speedLevel = 0;
    cmd.footRaiseHeight = 0;
    cmd.bodyHeight = 0;
    cmd.euler[0]  = 0;
    cmd.euler[1] = 0;
    cmd.euler[2] = 0;
    cmd.velocity[0] = 0.0f;  // velocity[0]=forward [1]=sideward
    cmd.velocity[1] = 0.0f; 
    cmd.yawSpeed = 0.0f; // yawspeed >0=turn  <0=turn ==0=straight 
    cmd.reserve = 0;

    if (myfile.is_open()) {
        while (getline(myfile, line)) {
            if (line.find(word1) != std::string::npos) {
                std::cout << "stand" << std::endl;
                cmd.mode = 1;
                cmd.bodyHeight = 0.0; 
            }
            else if (line.find(word2) != std::string::npos) {
                std::cout << "sit" << std::endl;
                cmd.mode = 1;
                cmd.bodyHeight = 0.0; 
            }
            else if (line.find(word3) != std::string::npos) {
                std::cout << "go forward" << std::endl;
                cmd.mode = 2;
                cmd.gaitType = 1;
                cmd.velocity[0] = 0.2f; // -1  ~ +1
                cmd.yawSpeed = 0;
                cmd.footRaiseHeight = 0.1;
            }
            else if (line.find(word4) != std::string::npos) {
                std::cout << "come backward" << std::endl;
                cmd.mode = 2;
                cmd.gaitType = 1;
                cmd.velocity[0] = -0.2f; // -1  ~ +1
                cmd.yawSpeed = 0;
                cmd.footRaiseHeight = 0.1;
            }
            else if (line.find(word5) != std::string::npos) {
                std::cout << "turn left" << std::endl;
                cmd.mode = 2;
                cmd.gaitType = 1;
                cmd.velocity[0] = 0.2f; // -1  ~ +1
                cmd.yawSpeed = 1;
                cmd.footRaiseHeight = 0.1;
            }
            else if (line.find(word6) != std::string::npos) {
                std::cout << "turn right" << std::endl;
                cmd.mode = 2;
                cmd.gaitType = 1;
                cmd.velocity[0] = 0.2f; // -1  ~ +1
                cmd.yawSpeed = -1;
                cmd.footRaiseHeight = 0.1;
            }
            else if (line.find(word7) != std::string::npos) {
                std::cout << "dance" << std::endl;
                cmd.mode = 12;
            }
            else if (line.find(word8) != std::string::npos) {
                std::cout << "stop" << std::endl;
                std::cout << "Thank you" << std::endl;
                cmd.mode = 1;
            }
        }
    }
    myfile.close();
    udp.SetSend(cmd);
}

int main(void) 
{
    std::cout << "Communication level is set to HIGH-level." << std::endl
              << "WARNING: Make sure the robot is standing on the ground." << std::endl
              << "Robot Hearing Voice..." << std::endl
              << "Press Enter to continue..." << std::endl;
    std::cin.ignore();

    Custom custom(HIGHLEVEL);
    // InitEnvironment();
    LoopFunc loop_control("control_loop", custom.dt,    boost::bind(&Custom::RobotControl, &custom));
    LoopFunc loop_udpSend("udp_send",     custom.dt, 3, boost::bind(&Custom::UDPSend,      &custom));
    LoopFunc loop_udpRecv("udp_recv",     custom.dt, 3, boost::bind(&Custom::UDPRecv,      &custom));

    loop_udpSend.start();
    loop_udpRecv.start();
    loop_control.start();

    while(1){
        sleep(10);
    };

    return 0; 
}