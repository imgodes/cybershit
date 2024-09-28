#include <sys/socket.h>
#include <netdb.h>
#include <stdio.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

int main(void){
	int conecta;
	int meusocket;

	struct sockaddr_in alvo;

	meusocket = socket(AF_INET,SOCK_STREAM,0);
	alvo.sin_family = AF_INET;
	alvo.sin_port = htons(80);
	alvo.sin_addr.s_addr = inet_addr("192.168.15.1");

	conecta = connect(meusocket,(struct sockaddr *)&alvo, sizeof alvo);

	if(conecta == 0){
		printf("porta aberta\n");
	} else {
		printf("porta fechada\n");
	}
	close(meusocket);
	return 0;
}
