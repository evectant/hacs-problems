module org.crsx.hacs.problems.lists.HeadTail {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort Computed | scheme Head(List);
Head(#) → error ⟦ Not implemented ⟧;

sort List | scheme Tail(List);
Tail(#) → error ⟦ Not implemented ⟧;

}
