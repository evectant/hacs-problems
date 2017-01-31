module org.crsx.hacs.problems.lists.Reverse {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort List | scheme Reverse(List);
Reverse(#) → error ⟦ Not implemented ⟧;

}
