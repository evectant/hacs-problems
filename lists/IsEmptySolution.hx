module org.crsx.hacs.problems.lists.IsEmptySolution {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort Bool
    | ⟦ False ⟧
    | ⟦ True ⟧;

sort Bool | scheme IsEmpty(List);
IsEmpty(⟦ ⟧) → ⟦ True ⟧;
IsEmpty(#) → ⟦ False ⟧;

}
