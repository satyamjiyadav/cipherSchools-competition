#include <bits/stdc++.h>
using namespace std;

int main(){
    int n;
    cout<<"enter number of elements: ";
    cin>>n;
    int arr[n];
    for(int i=0; i<n; i++){
        cin>>arr[i];
    }
    

    int flag=0;
    for(int i=0; i<n-1; i++){
        for(int j=i+1; j<n-1; j++ ){
            for(int k=j+1; k<n; k++){
                if((arr[i]+arr[j]+arr[k])==0){
                    flag=1;
                    break;
                }
            }
        }
    }
    cout<<"Output is: ";
    if(flag==1){
        cout<<"1"<<endl;
    }
    else{
        cout<<"0"<<endl;
    }
}