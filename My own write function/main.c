extern int my_write(char *str, int len);

int len(char *str){
	int i=0;
	while(*(str+i)){
		i++;
	}
	return i;
}

int main(){
	char str[] = "this is the best string in the whole world!\nmy name is danny and I will print this\n";
	my_write(str, len(str));
	return 0;
}
