pragma solidity ^0.5.0;
 
contract SourceTracker {
   string Salads; //product
   uint numNodes; //number of nodes
   uint numSalads; //total number of salads
 
   struct Node {
   string MichiganClub; //client
   string Chipotle; //business provider
   uint numSaladsReceived; //total number of delivered
   bool condition; //if salads were prepared at satisfactory level
   string Date; //date when salads were delivered
   uint nodeIndex;
   }
}
 
event newNode (
   string Chipotle;
   uint numSaladsReceived;
)
 
Node[] supplyChain;
mapping (string => uint) ChipotlePos;
 
constructor (string memory Salads_var, uint numSalads_var) public {
   Salads = Salads_var;
   numSalads = numSalads_var;
   numNodes = 0;
}
 
function GetProductName() {
   return Chipotle;
}
 
function GetOriginalNumberOfItems() {
   return numSalads;
}
 
function GetNumberOfNodes() {
   return numNodes;
}
 
function AddNode (
   string calldata Chipotle, string calldata Date,
   uint numSaladsReceived, bool condition;
)
{
   supplyChain.push(Node(Chipotle, Date, numSaladsReceived, condition));
   ChipotlePos[Chipotle] = numNodes;
   emit newNode(Chipotle, numSaladsReceived);
   ++numNodes;
}
 
function FindDamage()
 
