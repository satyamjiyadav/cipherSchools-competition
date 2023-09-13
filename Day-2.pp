// Online C++ compiler to run C++ program online
#include <iostream>
using namespace std;

class node{
    public:
    node* next;
    int data;
    
    node(int x){
        data =x;
        next=NULL;
    }
}; 

void inserteven(node* &head1, int val){
    node* temp=head1;
    node* newnode=new node(val);
    newnode->next=NULL;
    
    if(head1==NULL){
        head1=newnode;
        return;
    }
    while(temp->next!=NULL){
        temp=temp->next;
    }
    temp->next=newnode;
    return;
}

void insertodd(node* &head2, node* &tail, int val){
    node* temp=head2;
    node* newnode=new node(val);
    newnode->next=NULL;
    
    if(head2==NULL){
        head2=newnode;
        return;
    }
    while(temp->next!=NULL){
        temp=temp->next;
    }
    temp->next=newnode;
    
    node* last=head2;
    while(last->next!=NULL){
        last=last->next;
    }
    tail=last;
    return;
}

void display(node* head2){
    node* temp=head2;
    while(temp!=NULL){
        cout<<temp->data<<" ";
        temp=temp->next;
    }
}

int main(){
    
    node* head1=NULL;
    node* head2=NULL;
    node* tail=NULL;
    
    int n;
    cin>>n;
    int val;
    cout<<"Enter values: "<<endl;
    for(int i=1; i<=n; i++){
        cin>>val;
        if(i%2==0){
            inserteven(head1,val);
        }
        else{
            insertodd(head2,tail,val);
        }
    }
    
    tail->next=head1;
    display(head2);
    
    return 0;
}
